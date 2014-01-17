"use strict";

var stream = require('stream')
, util = require('util')
, when = require('when')
, pgsql = require('../../pgsql')
, rowStreamer = require('../../rowStreamer')
, helper = require('../../helper')
, loaders = require('../../loaders')
, transformers = require('../../transformers')
, DataSet = require('../../DataSet')
, dataType = require('../../dataType');

exports.tsvToDataSet = function(pathOrStream, options) {
	options = helper.getOptions(options);

	var tsvLoader = loaders.getTsvLoader()
	, dst = transformers.getDataSetTransformer();

	return helper.getReadableStream(pathOrStream).then(function(tsvStream) {
		// Can't reuse piped data http://stackoverflow.com/a/19561718/586621
		var attrTsvStream = new stream.PassThrough()
		, dataTsvStream = new stream.PassThrough();

		tsvStream.pipe(attrTsvStream);
		tsvStream.pipe(dataTsvStream);

		return rowStreamer.getAttributes(attrTsvStream
		, tsvLoader, dst, options)
		.then(function(fileAttributes) {

			var dataset = new DataSet();
			dataset.setHeaders(fileAttributes.headers);
			dataset.setDataTypes(fileAttributes.dataTypes);

			return rowStreamer.getData(dataTsvStream
			, tsvLoader, dst, options, fileAttributes.ignoreColumns
			, function dataRowHook(dataRow) {
				dataset.addDataRow(dataType.getAdjustedDataRow(
					dst, fileAttributes.dataTypes, dataRow));
			}).then(function() {
				return dataset;
			});

		});
	});
};

exports.tsvToPgsqlStream = function(pathOrStream, options) {
	options = helper.getOptions(options);

	util.inherits(PgsqlStream, stream.Readable);
	function PgsqlStream() { stream.Readable.call(this); }
	PgsqlStream.prototype._read = function() {};

	var pgsqlStream = new PgsqlStream();

	var tsvLoader = loaders.getTsvLoader()
	// @TODO move to helper.js
	, name = (options.prependString + options.name + options.appendString)
	// Setup this transformer based on the options passed in
	, pgsqlt = transformers.getPgSqlTransformer(options);

	return helper.getReadableStream(pathOrStream).then(function(tsvStream) {

		// Can't reuse piped data http://stackoverflow.com/a/19561718/586621
		var attrTsvStream = new stream.PassThrough()
		, dataTsvStream = new stream.PassThrough();

		tsvStream.pipe(attrTsvStream);
		tsvStream.pipe(dataTsvStream);

		return rowStreamer.getAttributes(attrTsvStream
		, tsvLoader, pgsqlt, options)
		.then(function(fileAttributes) {

			pgsqlStream.push(pgsql.getHeaderSql(name));

			if (!options.dataOnly) {
				pgsqlStream.push(pgsql.getCreateTableSql(name
				, fileAttributes.headers, fileAttributes.dataTypes, pgsqlt));
			}

			if (!options.createOnly && !options.insertStatements) {
				pgsqlStream.push(pgsql.getCopyHeaderSql(name
				, fileAttributes.headers, fileAttributes.dataTypes, pgsqlt));
			}

			var adjustedDataRow;

			return rowStreamer.getData(dataTsvStream
			, tsvLoader, pgsqlt, options, fileAttributes.ignoreColumns
			, function dataRowHook(dataRow) {
				if (options.createOnly) { return; }

				adjustedDataRow = dataType.getAdjustedDataRow(pgsqlt
				, fileAttributes.dataTypes, dataRow);

				if (options.insertStatements) {
					pgsqlStream.push(
						pgsql.getInsertDataRowSql(name
						, fileAttributes.headers, adjustedDataRow, pgsqlt));
				} else {
					pgsqlStream.push(
						pgsql.getCopyDataRowSql(adjustedDataRow, pgsqlt));
				}
			}).then(function() {
				if (!options.createOnly && !options.insertStatements) {
					pgsqlStream.push(pgsql.getCopyFooterSql());
				}

				pgsqlStream.push(pgsql.getFooterSql(name));
				pgsqlStream.push(null); // end this readable stream

				return pgsqlStream;
			});

		});

	});
};
