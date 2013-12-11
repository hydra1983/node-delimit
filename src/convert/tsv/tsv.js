"use strict";

var when = require('when')
, pgsql = require('../../pgsql.js')
, file = require('../../file.js')
, loaders = require('../../loaders.js')
, transformers = require('../../transformers.js')
, DataSet = require('../../DataSet.js')
, dataType = require('../../dataType.js');

exports.tsvToDataSet = function(filePath, options) {
	var defer = when.defer()
	, tsvLoader = loaders.getTsvLoader()
	, datasetTransformer = transformers.getDataSetTransformer();

	file.getFileAttributes(filePath, tsvLoader, datasetTransformer, options
	, function doneHook(headers, dataTypes, ignoredColumns) {

		var dataset = new DataSet();
		dataset.setHeaders(headers);
		dataset.setDataTypes(dataTypes);

		console.error(filePath); void('debug');

		file.getFileData(
			filePath, tsvLoader, datasetTransformer, options, ignoredColumns,
			function dataRowHook(dataRow) {
				dataset.addDataRow(dataType.getAdjustedDataRow(
					datasetTransformer, dataTypes, dataRow));
			},
			function doneHook() {
				return defer.resolve(dataset);
			});
	});

	return defer.promise;
};

exports.tsvToPgSql = function(filePath, writeStream, options, callback) {
	var i, len,
		tsvLoader = loaders.getTsvLoader(),
		name = (options.prependString + options.name + options.appendString),
		// Setup this transformer based on the options passed in
		pgSqlTransformer = transformers.getPgSqlTransformer(options);

	file.getFileAttributes(filePath, tsvLoader, pgSqlTransformer, options,
		function doneHook(headers, dataTypes, ignoredColumns) {

			writeStream.write(pgsql.getHeaderSql(name));

			if(!options.dataOnly) {
				writeStream.write(pgsql.getCreateTableSql(
					name, headers, dataTypes, pgSqlTransformer));
			}
			if(!options.createOnly && !options.insertStatements) {
				writeStream.write(pgsql.getCopyHeaderSql(
					name, headers, dataTypes, pgSqlTransformer));
			}

			var adjustedDataRow;
			file.getFileData(filePath, tsvLoader, pgSqlTransformer, options, ignoredColumns,
				function dataRowHook(dataRow) {
					if(!options.createOnly) {
						adjustedDataRow = dataType.getAdjustedDataRow(
							pgSqlTransformer, dataTypes, dataRow);

						if(options.insertStatements) {
							writeStream.write(
								pgsql.getInsertDataRowSql(
									name, headers, adjustedDataRow, pgSqlTransformer));
						} else {
							writeStream.write(
								pgsql.getCopyDataRowSql(
									adjustedDataRow, pgSqlTransformer));
						}
					}
				},
				function doneHook() {
					if(!options.createOnly && !options.insertStatements) {
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
