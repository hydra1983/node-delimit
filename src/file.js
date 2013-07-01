var reader = require('line-reader'),
    dataType = require('./dataType.js');

exports.mapFilePaths = function(filePaths, callback) {
    if(typeof filePaths !== 'object') {
        throw new Error('You must specify filePaths to mapFilePaths');
    }

    if(typeof callback !== 'function') {
        throw new Error('You must provide a callback to mapFilePaths');
    }

    if(filePaths.length === 0) {
        throw new Error('There were not any filePaths provided in the array');
    }

    for(var i = 0, len = filePaths.length; i < len; ++i) {
        callback(filePaths[i]);
    }
};

exports.fileToDataRows = function(filePath, loader, rowCallback, doneCallback) {
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

exports.fileToHooks = function(filePath, headerRow, loader, transformer, rowHook, doneHook) {
    var dataTypes = [], headers = [], row = 0;
    var previousDataRow = [];

    exports.fileToDataRows(filePath, loader,
        function dataRowCallback(dataRow) {
            if(headerRow == row) {
                headers = dataRow;
            } else {
                dataTypes = dataType.getNewDataTypes(transformer, dataTypes, dataRow, previousDataRow);
                rowHook(dataRow);
                previousDataRow = dataRow;
            }
            ++row;
        },
        function doneCallback() {
            doneHook(headers, dataTypes);
        });
};