"use strict";

var when = require('when')
, pgsql = require('../../pgsql.js')
, file = require('../../file.js')
, loaders = require('../../loaders.js')
, transformers = require('../../transformers.js')
, DataSet = require('../../DataSet.js')
, dataType = require('../../dataType.js');

exports.tsvToDataSet = function(filePath, options) {
	var tsvLoader = loaders.getTsvLoader()
	, datasetTransformer = transformers.getDataSetTransformer();

	return file.getAttributes(
		filePath, tsvLoader, datasetTransformer, options
	).then(function(fileAttributes) {

		var dataset = new DataSet();

		dataset.setHeaders(fileAttributes.headers);
		dataset.setDataTypes(fileAttributes.dataTypes);

		return file.getData(
			filePath, tsvLoader, datasetTransformer, options,
			fileAttributes.ignoreColumns,
			function dataRowHook(dataRow) {
				dataset.addDataRow(dataType.getAdjustedDataRow(
					datasetTransformer, fileAttributes.dataTypes, dataRow));
			}
		).then(function() {
			return dataset;
		});
	});
};

exports.tsvToPgSql = function(filePath, writeStream, options) {
	var i, len,
		tsvLoader = loaders.getTsvLoader(),
		name = (options.prependString + options.name + options.appendString),
		// Setup this transformer based on the options passed in
		pgSqlTransformer = transformers.getPgSqlTransformer(options);

	return file.getAttributes(
		filePath, tsvLoader, pgSqlTransformer, options
	).then(function(fileAttributes) {

		writeStream.write(pgsql.getHeaderSql(name));

		if (!options.dataOnly) {
			writeStream.write(pgsql.getCreateTableSql(
				name, fileAttributes.headers, fileAttributes.dataTypes,
				pgSqlTransformer));
		}
		if (!options.createOnly && !options.insertStatements) {
			writeStream.write(pgsql.getCopyHeaderSql(
				name, fileAttributes.headers, fileAttributes.dataTypes,
				pgSqlTransformer));
		}

		var adjustedDataRow;

		return file.getData(
			filePath, tsvLoader, pgSqlTransformer, options,
			fileAttributes.ignoreColumns,
			function dataRowHook(dataRow) {
				if (!options.createOnly) {
					adjustedDataRow = dataType.getAdjustedDataRow(
						pgSqlTransformer, fileAttributes.dataTypes, dataRow);
					if (options.insertStatements) {
						writeStream.write(
							pgsql.getInsertDataRowSql(
								name, fileAttributes.headers, adjustedDataRow,
								pgSqlTransformer));
					} else {
						writeStream.write(
							pgsql.getCopyDataRowSql(
								adjustedDataRow, pgSqlTransformer));
					}
				}
			}
		).then(function() {
			if (!options.createOnly && !options.insertStatements) {
				writeStream.write(pgsql.getCopyFooterSql());
			}

			var defer = when.defer();
			// wait till the write is complete before resolving this promise
			writeStream.write(
				pgsql.getFooterSql(name), undefined, defer.resolve);
			return defer.promise;
		});
	});
};
