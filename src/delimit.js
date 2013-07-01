#!/usr/bin/env node

var DataSet = require('./DataSet.js');

var file = require('./file.js');
var loaders = require('./loaders.js');
var transformers = require('./transformers.js');
var dataType = require('./dataType.js');

exports.tsvToDataSet = function(fileName, headerRow, callback) {

    var tsvLoader = loaders.getTsvLoader();
    var datasetTransformer = transformers.getDataSetTransformer();

    // First iteration is to get the correct data types.
    file.fileToHooks(fileName, headerRow, tsvLoader, datasetTransformer,
        function dataRowCb(dataRow) {},
        // Once done with the first iteration, we have accurate data types
        // and can use them to adjust the data as necessary
        function doneCb(headers, dataTypes) {

            var dataset = new DataSet();
            dataset.setHeaders(headers);
            dataset.setDataTypes(dataTypes);
            var adjustedDataRow;

            file.fileToHooks(fileName, headerRow, tsvLoader, datasetTransformer,
                function dataRowCb2(dataRow) {
                    adjustedDataRow = dataType.getAdjustedDataRow(
                        datasetTransformer, dataTypes, dataRow);
                    dataset.addDataRow(adjustedDataRow);
                },
                function doneCb2() {
                    callback(dataset);
                });
        });
};

exports.tsvToPgSql = function(fileName, headerRow, writeStream) {

    var tsvLoader = loaders.getTsvLoader();
    var pgSqlTransformer = transformers.getDataSetTransformer();

    // First iteration is to get the correct data types.
    file.fileToHooks(fileName, headerRow, tsvLoader, pgSqlTransformer,
        function dataRowCb(dataRow) {},
        // Once done with the first iteration, we have accurate data types
        // and can use them to adjust the data as necessary
        function doneCb(headers, dataTypes) {

            var dataset = new DataSet();
            dataset.setHeaders(headers);
            dataset.setDataTypes(dataTypes);
            var adjustedDataRow;

            file.fileToHooks(fileName, headerRow, tsvLoader, pgSqlTransformer,
                function dataRowCb2(dataRow) {
                    adjustedDataRow = dataType.getAdjustedDataRow(
                        pgSqlTransformer, dataTypes, dataRow);
                    dataset.addDataRow(adjustedDataRow);
                },
                function doneCb2() {
                    callback(dataset);
                });
        });
};