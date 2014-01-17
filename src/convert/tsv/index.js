"use strict";

// WOAH!

var fs = require('fs')
, path = require('path')
, stream = require('stream')
, util = require('util')
, when = require('when')
, nodefn = require('when/node/function')
, temp = require('temp')
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
	, pgsqlt = transformers.getPgSqlTransformer(options)
	// The temporary file that we use to read from the stream twice
	, tsvFile = temp.path({ suffix: '.tsv' });


	/*
		This following code does NOT *return* a promise - it only interfaces
		with the stream that we return at the bottom (see last line in here)
	*/

	helper.getReadableStream(pathOrStream).then(function(tsvStream) {

		// Save the TSV stream into a file so we can use it twice. Once with the
		// attribute discovery, and again with applying those attributes to the
		// tsv file.
		//
		// @TODO I want to return the stream WHILE saving it to a file, and then
		// use the file for the second read through the data.
		//
		var defer = when.defer()
		, tsvWriteStream = fs.createWriteStream(tsvFile);

		tsvStream.pipe(tsvWriteStream);
		tsvStream.on('end', defer.resolve);
		tsvStream.on('error', defer.reject);

		return defer.promise;

	}).then(function() {

		// Get the attributes for the given tsv file
		//
		var tsvAttributeStream = fs.createReadStream(tsvFile);

		return rowStreamer.getAttributes(
			tsvAttributeStream, tsvLoader, pgsqlt, options)
		.then(function(fileAttributes) {

			pgsqlStream.push(pgsql.getHeaderSql(name));

			if (!options.dataOnly) {
				pgsqlStream.push(pgsql.getCreateTableSql(
					name, fileAttributes.headers,
					fileAttributes.dataTypes, pgsqlt));
			}

			if (!options.createOnly && !options.insertStatements) {
				pgsqlStream.push(pgsql.getCopyHeaderSql(
					name, fileAttributes.headers,
					fileAttributes.dataTypes, pgsqlt));
			}

			// run this hook for every row in the TSV
			function dataRowHook(dataRow) {
				if (options.createOnly) { return; }

				var adjustedDataRow = dataType.getAdjustedDataRow(
					pgsqlt, fileAttributes.dataTypes, dataRow);

				if (options.insertStatements) {
					pgsqlStream.push(
						pgsql.getInsertDataRowSql(name
						, fileAttributes.headers, adjustedDataRow, pgsqlt));
				} else {
					pgsqlStream.push(
						pgsql.getCopyDataRowSql(adjustedDataRow, pgsqlt));
				}
			}

			var dataTsvStream = fs.createReadStream(tsvFile);

			return rowStreamer.getData(
				dataTsvStream, tsvLoader, pgsqlt, options,
				fileAttributes.ignoreColumns, dataRowHook)
			.then(function() {

				if (!options.createOnly && !options.insertStatements) {
					pgsqlStream.push(pgsql.getCopyFooterSql());
				}

				pgsqlStream.push(pgsql.getFooterSql(name));
				pgsqlStream.push(null); // end this readable stream

				return pgsqlStream;
			});

		});

	}).then(function() {
		// cleanup
		return nodefn.call(fs.unlink, tsvFile);
	});


	// return the stream - it's contents will be populated as the above code
	// churns
	return when.resolve(pgsqlStream);
};
