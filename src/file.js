var reader = require('line-reader'),
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

exports.fileToDataRows = function(filePath, loader, options, rowCallback, doneCallback) {
    options = options || {};
    var
        ignoreEmptyHeaders = options.ignoreEmptyHeaders || false;
    //

    if(typeof filePath !== 'string') {
        throw new Error('You must specify a filePath to fileToDataRows');
    }

    if(typeof loader !== 'object') {
        throw new Error('You must provide a loader');
    }

    if(typeof rowCallback !== 'function') {
        throw new Error('You must provide a rowCallback to fileToDataRows');
    }

    if(typeof doneCallback !== 'function') {
        throw new Error('You must provide a doneCallback to fileToDataRows');
    }

    reader.eachLine(filePath, function(line) {
        rowCallback(loader.toDataRow(line));
    }).then(function () {
        doneCallback();
    });
};

exports.getFileAttributes = function(filePath, loader, transformer, options, callback) {
    options = options || {};
    var
        headerRow = (typeof options.headerRow === 'undefined') ?
            -1 : options.headerRow,
        ignoreEmptyHeaders = typeof options.ignoreEmptyHeaders === 'undefined' ?
            false : true,
        forceType = options.forceType || false;
        if(typeof forceType === 'string') {
            forceType = defines[forceType.toUpperCase()];
        }
    //
    var
        dataTypes = [],
        headers = [],
        row = 0,
        previousDataRow = [],
        i, len;

    exports.fileToDataRows(filePath, loader, options,
        function dataRowCallback(dataRow) {
            if(headerRow == row) {
                headers = dataRow;
            } else if(!forceType) {
                dataTypes = dataType.getNewDataTypes(
                    transformer,
                    dataTypes,
                    dataRow,
                    previousDataRow);
                previousDataRow = dataRow;
            } else if(dataTypes.length === 0 && forceType) {
                for(i = 0, len = dataRow.length; i < len; ++i) {
                    dataTypes.push(forceType);
                }
            }
            ++row;
        },
        function doneCallback() {
            if(ignoreEmptyHeaders) {
                options.ignoreColumns =
                    exports.getIgnoreColumns(transformer, headers);
                headers = transformers.removeIndexes(
                    options.ignoreColumns, headers);
                dataTypes = transformers.removeIndexes(
                    options.ignoreColumns, dataTypes);
            } else {
                for(var i = 0, len = headers.length; i < len; ++i) {
                    if(dataType.isStringEmpty(transformer, headers[i])) {
                        headers[i] = "column_" + (i+1);
                    }
                }
            }
            callback(headers, dataTypes);
        });
};

exports.getFileData = function(filePath, loader, transformer, options, dataRowHook, callback) {
    options = options || {};
    var
        headerRow = (typeof options.headerRow === 'undefined') ?
            -1 : options.headerRow,
        skipEmptyRows = (typeof options.skipEmptyRows === 'undefined') ?
            true : options.skipEmptyRows,
        ignoreColumns = options.ignoreColumns || [];
        ignoreColumns.sort();
    //
    var
        i, len,
        ignoreColumnsLen = ignoreColumns.length,
        row = 0;

    exports.fileToDataRows(filePath, loader, options,
        function dataRowCallback(dataRow) {
            if(skipEmptyRows && exports.isDataRowEmpty(transformer, dataRow)) {
                return;
            }
            if(ignoreColumnsLen > 0) {
                for(i = 0; i < ignoreColumnsLen; ++i) {
                    dataRow.splice(ignoreColumns[i] - i, 1);
                }
            }
            if(headerRow != row) {
                dataRowHook(dataRow);
            }
            ++row;
        },
        function doneCallback() {
            callback();
        });
};