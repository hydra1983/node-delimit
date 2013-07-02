var lineReader = require('line-reader'),
    dataType = require('./dataType.js'),
    transformers = require('./transformers.js');
    defines = require('./defines.js');

exports.isDataRowEmpty = function(transformer, dataRow) {
    var emptyCount = 0;
    for(var i = 0, len = dataRow.length; i < len; ++i) {
        if(dataType.isStringEmpty(transformer, dataRow[i])) {
            ++emptyCount;
        }
    }
    return emptyCount === dataRow.length;
};

exports.getIgnoreColumns = function(transformer, headers) {
    var i = 0, len = headers.length, ignoreColumns = [];
    for(; i < len; ++i) {
        if(dataType.isStringEmpty(transformer, headers[i])) {
            ignoreColumns.push(i);
        }
    }
    return ignoreColumns;
};

exports.fileToRows = function(filePath, loader, options, headerRowHook, dataRowHook, doneCallback) {

    lineReader.open(filePath, function(reader) {

        var exitReader = function() {
            reader.close();
            doneCallback();
        };

        var handleLine = function(line, row) {
            var dataRow = loader.toDataRow(line);
            if(options.headerRow == row) {
                if(typeof headerRowHook === 'function') {
                    headerRowHook(dataRow);
                    if(options.forceType && options.forceType !== false) {
                        return false;
                    }
                }
            } else {
                dataRowHook(dataRow);
            }
            return true;
        };

        var row = 0;
        var cycle = function() {
            if(reader.hasNextLine()) {
                reader.nextLine(function(line) {
                    if(handleLine(line, row)) {
                        ++row;
                        cycle();
                    } else {
                        exitReader();
                    }
                });
            } else {
                exitReader();
            }
        };

        cycle();
    });
};

exports.getFileAttributes = function(filePath, loader, transformer, options, callback) {
    var
        dataTypes = [], headers = [],
        previousDataRow = [],
        i, dataLength;

    exports.fileToRows(filePath, loader, options,
        function headerRowCallback(dataRow) {
            dataLength = dataRow.length;
            headers = dataRow;
        },
        function dataRowCallback(dataRow) {
            dataLength = dataRow.length;
            dataTypes = dataType.getNewDataTypes(transformer, dataTypes,
                dataRow, previousDataRow);
            previousDataRow = dataRow;
        },
        function doneCallback() {
            var ignoreColumns = [];

            // Adjust headers
            if(options.ignoreEmptyHeaders) {
                ignoreColumns = exports.getIgnoreColumns(transformer, headers);
                headers = transformers.removeIndexes(ignoreColumns, headers);
                dataTypes = transformers.removeIndexes(ignoreColumns, dataTypes);
            } else {
                for(i = 0; i < dataLength; ++i) {
                    if(dataType.isStringEmpty(transformer, headers[i])) {
                        headers[i] = "column_" + (i+1);
                    }
                }
            }

            // Adjust Data Types
            if(options.forceType && options.forceType !== false) {
                dataTypes = [];
                for(i = 0; i < dataLength; ++i) {
                    dataTypes.push(options.forceType);
                }
            }

            callback(headers, dataTypes, ignoreColumns);
        });
};

exports.getFileData = function(filePath, loader, transformer, options, ignoreColumns, dataRowHook, callback) {
    var i, len;

    exports.fileToRows(filePath, loader, options, false,
        function dataRowCallback(dataRow) {

            if(exports.isDataRowEmpty(transformer, dataRow)) {
                return;
            }

            if(ignoreColumns) {
                for(i = 0, len = ignoreColumns.length; i < len; ++i) {
                    dataRow.splice(ignoreColumns[i] - i, 1);
                }
            }

            dataRowHook(dataRow);
        },
        function doneCallback() {
            callback();
        });
};