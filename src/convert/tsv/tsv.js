"use strict";

var stream = require('stream')
, util = require('util')
, when = require('when')
, pgsql = require('../../pgsql.js')
, file = require('../../file.js')
, helper = require('../../helper')
, loaders = require('../../loaders.js')
, transformers = require('../../transformers.js')
, DataSet = require('../../DataSet.js')
, dataType = require('../../dataType.js');

exports.tsvToDataSet = function(filePath, options) {
	options = helper.getOptions(options);

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

exports.tsvToPgSql = function(filePath, options) {
	options = helper.getOptions(options);

	util.inherits(PgsqlStream, stream.Readable);
	function PgsqlStream() { stream.Readable.call(this); }
	PgsqlStream.prototype._read = function() {};

	var pgsqlStream = new PgsqlStream();

	var i, len,
		tsvLoader = loaders.getTsvLoader(),
		name = (options.prependString + options.name + options.appendString),
		// Setup this transformer based on the options passed in
		pgSqlTransformer = transformers.getPgSqlTransformer(options);

	return file.getAttributes(
		filePath, tsvLoader, pgSqlTransformer, options
	).then(function(fileAttributes) {

		pgsqlStream.push(pgsql.getHeaderSql(name));

		if (!options.dataOnly) {
			pgsqlStream.push(pgsql.getCreateTableSql(
				name, fileAttributes.headers, fileAttributes.dataTypes,
				pgSqlTransformer));
		}
		if (!options.createOnly && !options.insertStatements) {
			pgsqlStream.push(pgsql.getCopyHeaderSql(
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
						pgsqlStream.push(
							pgsql.getInsertDataRowSql(
								name, fileAttributes.headers, adjustedDataRow,
								pgSqlTransformer));
					} else {
						pgsqlStream.push(
							pgsql.getCopyDataRowSql(
								adjustedDataRow, pgSqlTransformer));
					}
				}
			}
		).then(function() {
			if (!options.createOnly && !options.insertStatements) {
				pgsqlStream.push(pgsql.getCopyFooterSql());
			}

			pgsqlStream.push(pgsql.getFooterSql(name));
			pgsqlStream.push(null); // end this readable stream

			return pgsqlStream;
		});
	});
};
