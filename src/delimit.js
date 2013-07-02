#!/usr/bin/env node

var DataSet = require('./DataSet.js');
var pgsql = require('./pgsql.js');
var file = require('./file.js');
var loaders = require('./loaders.js');
var transformers = require('./transformers.js');
var dataType = require('./dataType.js');
var xls2tsv = require('./xls2tsv.js');

var async = require('async');
var _ = require('underscore');

exports.tsvToDataSet = function(filePath, options, callback) {
    var
        tsvLoader = loaders.getTsvLoader(),
        datasetTransformer = transformers.getDataSetTransformer();

    file.getFileAttributes(filePath, tsvLoader, datasetTransformer, options,
        function doneHook(headers, dataTypes, ignoredColumns) {

            var dataset = new DataSet();
            dataset.setHeaders(headers);
            dataset.setDataTypes(dataTypes);

            var adjustedDataRow;
            file.getFileData(filePath, tsvLoader, datasetTransformer, options, ignoredColumns,
                function dataRowHook(dataRow) {
                    adjustedDataRow = dataType.getAdjustedDataRow(
                        datasetTransformer, dataTypes, dataRow);
                    dataset.addDataRow(adjustedDataRow);
                },
                function doneHook() {
                    callback(dataset);
                });
        });
};

exports.tsvToPgSql = function(filePath, writeStream, options, callback) {
    var
        i, len,
        tsvLoader = loaders.getTsvLoader(),
        pgSqlTransformer = transformers.getPgSqlTransformer();

    file.getFileAttributes(filePath, tsvLoader, pgSqlTransformer, options,
        function doneHook(headers, dataTypes, ignoredColumns) {
            var statements =
                pgsql.getHeaderSql(options.name) +
                pgsql.getCreateTableSql(options.name, headers, dataTypes) +
                pgsql.getCopyHeaderSql(options.name, headers, dataTypes);
            writeStream.write(statements);

            var adjustedDataRow;
            file.getFileData(filePath, tsvLoader, pgSqlTransformer, options, ignoredColumns,
                function dataRowHook(dataRow) {
                    adjustedDataRow = dataType.getAdjustedDataRow(
                        pgSqlTransformer, dataTypes, dataRow);
                    writeStream.write(pgsql.getCopyDataRowSql(adjustedDataRow));
                },
                function doneHook() {
                    writeStream.write(pgsql.getCopyFooterSql());
                    writeStream.write(pgsql.getFooterSql(options.name), undefined,
                        function sucessfullyWrittenCb() {
                            if(typeof callback === 'function') {
                               callback();
                            }
                        });
                });

        });
};

exports.xlsToPgSql = function(filePath, writeStream, options, callback) {

    xls2tsv.process(filePath, function(error, info) {
        if(error) {
            throw error;
        }

        var toProcess = [], singleApply, modifiedOptions;

        for(var i = 0, len = info.files.length; i < len; ++i) {
            modifiedOptions = _.clone(options);
            modifiedOptions.tablename = options.tablename + "_" +
                transformers.normalizeString(info.files[i].sheetName),

            singleApply = async.apply(exports.tsvToPgSql, info.files[i].path,
                writeStream, modifiedOptions);

            toProcess.push(singleApply);
        }

        async.series(toProcess, function(error, results) {
            if(error) {
                throw error;
            }
            if(typeof callback === 'function') {
                callback();
            }
        });
    });
};