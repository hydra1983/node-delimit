var reader = require('line-reader'),
    dataType = require('./dataType.js');

exports.isDataRowEmpty = function(transformer, dataRow) {
    var emptyCount = 0;
    for(var i = 0, len = dataRow.length; i < len; ++i) {
        if(dataType.isStringEmpty(transformer, dataRow[i])) {
            ++emptyCount;
        }
    }
    return emptyCount === dataRow.length;
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
            -1 : options.headerRow;
    //
    var
        dataTypes = [],
        headers = [],
        row = 0,
        previousDataRow = [];

    exports.fileToDataRows(filePath, loader, options,
        function dataRowCallback(dataRow) {
            if(headerRow == row) {
                headers = dataRow;
            } else {
                dataTypes = dataType.getNewDataTypes(
                    transformer,
                    dataTypes,
                    dataRow,
                    previousDataRow);
                previousDataRow = dataRow;
            }
            ++row;
        },
        function doneCallback() {
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