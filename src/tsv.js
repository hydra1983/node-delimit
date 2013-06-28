var reader = require('line-reader'),
    util = require('./util.js');

exports.toDataRow = function(tsvRowString) {
    return tsvRowString.split("\t");
};

exports.fileToDataRows = function(filePath, rowCallback, doneCallback) {
    if(typeof filePath !== 'string') {
        throw new Error('You must specify a filePath to fileToDataRows');
    }

    if(typeof rowCallback !== 'function') {
        throw new Error('You must provide a rowCallback to fileToDataRows');
    }

    if(typeof doneCallback !== 'function') {
        throw new Error('You must provide a doneCallback to fileToDataRows');
    }

    reader.eachLine(filePath, function(line) {
        rowCallback(exports.toDataRow(line));
    }).then(function () {
        doneCallback();
    });
};

exports.fileToHooks = function(filePath, headerRow, rowHook, doneHook) {
    var dataTypes = [];
    var headers = [];

    var row = 0;

    exports.fileToDataRows(filePath,
        function dataRowCallback(dataRow) {
            if(headerRow == row) {
                headers = dataRow;
            } else {
                dataTypes = util.getNewDataTypes(dataTypes, dataRow);
                rowHook(dataRow);
            }
            ++row;
        },
        function doneCallback() {
            doneHook(headers, dataTypes);
        });
};