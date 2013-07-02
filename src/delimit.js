#!/usr/bin/env node

var DataSet = require('./DataSet.js');
var pgsql = require('./pgsql.js');
var file = require('./file.js');
var loaders = require('./loaders.js');
var transformers = require('./transformers.js');
var dataType = require('./dataType.js');
var xls2tsv = require('./xls2tsv.js');
var async = require('async');

exports.tsvToDataSet = function(filePath, options, callback) {

    options = options || {};
    var
        tablename = options.tablename || "default";
    //
    var
        tsvLoader = loaders.getTsvLoader(),
        datasetTransformer = transformers.getDataSetTransformer();

    file.getFileAttributes(filePath, tsvLoader, datasetTransformer, options,
        function doneHook(headers, dataTypes) {

            var dataset = new DataSet();
            dataset.setHeaders(headers);
            dataset.setDataTypes(dataTypes);

            var adjustedDataRow;
            file.getFileData(filePath, tsvLoader, datasetTransformer, options,
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

    options = options || {};
    var
        tablename = options.tablename || "default",
        ignoreEmptyHeaders = typeof options.ignoreEmptyHeaders === 'undefined' ?
            false : true;
    //
    var
        i, len,
        tsvLoader = loaders.getTsvLoader(),
        pgSqlTransformer = transformers.getPgSqlTransformer();

    file.getFileAttributes(filePath, tsvLoader, pgSqlTransformer, options,
        function doneHook(headers, dataTypes) {
            var statements =
                pgsql.getHeaderSql(tablename) +
                pgsql.getCreateTableSql(tablename, headers, dataTypes) +
                pgsql.getCopyHeaderSql(tablename, headers, dataTypes);
            writeStream.write(statements);

            var adjustedDataRow;
            file.getFileData(filePath, tsvLoader, pgSqlTransformer, options,
                function dataRowHook(dataRow) {
                    adjustedDataRow = dataType.getAdjustedDataRow(
                        pgSqlTransformer, dataTypes, dataRow);
                    writeStream.write(pgsql.getCopyDataRowSql(adjustedDataRow));
                },
                function doneHook() {
                    writeStream.write(pgsql.getCopyFooterSql());
                    writeStream.write(pgsql.getFooterSql(tablename), undefined,
                        function sucessfullyWrittenCb() {
                            if(typeof callback === 'function') {
                               callback();
                            }
                        });
                });

        });
};

exports.xlsToPgSql = function(filePath, writeStream, options, callback) {

    options = options || {};
    var
        tablename = options.tablename || "default",
        headerRow = (typeof options.headerRow === 'undefined') ?
            0 : options.headerRow;
    //

    xls2tsv.process(filePath, function(error, info) {
        if(error) { throw error; }
        var toProcess = [];

        var singleApply,
            newOptions = options;
        for(var i = 0, len = info.files.length; i < len; ++i) {
            newOptions.tablename =

            newOptions.headerRow = headerRow;
            singleApply = async.apply(
                exports.tsvToPgSql,
                info.files[i].path,
                writeStream,
                {
                    tablename: tablename + "_" + transformers.normalizeString(info.files[i].sheetName),
                    headerRow: headerRow,
                    ignoreEmptyHeaders: options.ignoreEmptyHeaders,
                    forceType: options.forceType
                }
            );
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