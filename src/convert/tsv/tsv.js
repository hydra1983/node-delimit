var pgsql = require('../../pgsql.js'),
    file = require('../../file.js'),
    loaders = require('../../loaders.js'),
    transformers = require('../../transformers.js'),
    DataSet = require('../../DataSet.js'),
    dataType = require('../../dataType.js');

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
                    // console.log(dataRow);
                    adjustedDataRow = dataType.getAdjustedDataRow(
                        datasetTransformer, dataTypes, dataRow);
                    dataset.addDataRow(adjustedDataRow);
                    // console.log('----');
                    // console.log(dataset);
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
        pgSqlTransformer = transformers.getPgSqlTransformer(),
        name = options.name + options.appendString;

    file.getFileAttributes(filePath, tsvLoader, pgSqlTransformer, options,
        function doneHook(headers, dataTypes, ignoredColumns) {

            writeStream.write(pgsql.getHeaderSql(name));

            if(!options.dataOnly) {
               writeStream.write(pgsql.getCreateTableSql(name, headers, dataTypes));
            }
            if(!options.createOnly) {
               writeStream.write(pgsql.getCopyHeaderSql(name, headers, dataTypes));
            }

            var adjustedDataRow;
            file.getFileData(filePath, tsvLoader, pgSqlTransformer, options, ignoredColumns,
                function dataRowHook(dataRow) {
                    if(!options.createOnly) {
                        adjustedDataRow = dataType.getAdjustedDataRow(
                            pgSqlTransformer, dataTypes, dataRow);
                        writeStream.write(
                            pgsql.getCopyDataRowSql(adjustedDataRow));
                    }
                },
                function doneHook() {
                    if(!options.createOnly) {
                        writeStream.write(pgsql.getCopyFooterSql());
                    }

                    writeStream.write(pgsql.getFooterSql(name), undefined,
                        function sucessfullyWrittenCb() {
                            if(typeof callback === 'function') {
                               callback();
                            }
                        });
                });

        });
};