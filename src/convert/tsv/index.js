"use strict";

var fs = require('fs')
, path = require('path')
, stream = require('stream')
, when = require('when')
, nodefn = require('when/node/function')
, temp = require('temp')
, split = require('split')
, pgsql = require('../../pgsql')
, helper = require('../../helper')
// , loaders = require('../../loaders')
, transformers = require('../../transformers')
, tsvStreamer = require('../../tsvStreamer')
, dataType = require('../../dataType');


// returns a through stream
// a tsv stream must be piped into it
exports.toPgsqlStream = function(tsvStream, options) {

	options = helper.getOptions(options);

	var trans = transformers.getPgSqlTransformer(options)
	, name = (options.prependString + options.name + options.appendString);

	return tsvStreamer.data(tsvStream, trans, options).then(function(tsvData) {
		var streamReady = when.defer()
		, dataRowStream = tsvData.dataRowStream
		, tsvAttributes = tsvData.tsvAttributes
		, headers = tsvAttributes.headers
		, dataTypes = tsvAttributes.dataTypes
		, pgStream = new stream.Transform({ objectMode: true });

		// load in header sql
		pgStream.push(pgsql.getHeaderSql(name));

		// creating a table?
		if (!options.dataOnly) {
			pgStream.push(pgsql.getCreateTableSql(
				name, headers, dataTypes, trans));
		}

		// put a copy statement if we are not using insert statements
		if (!options.createOnly && !options.insertStatements) {
			pgStream.push(pgsql.getCopyHeaderSql(
				name, headers, dataTypes, trans));
		}

		// pipe the data into the pg stream
		dataRowStream.pipe(pgStream);

		pgStream._transform = function(chunk, encoding, callback) {

			var dataRow = chunk;

			// if we are only creating header information, there isn't a
			// need to go further. kill the stream here.
			if (options.createOnly) {
				return callback();
			}

			// adjust this data row for the transformer
			var adjusted = dataType
				.getAdjustedDataRow(trans, dataTypes, dataRow.data);

			var singleRowSql = options.insertStatements
				? pgsql.getInsertDataRowSql(name, headers, adjusted, trans)
				: pgsql.getCopyDataRowSql(adjusted, trans);

			pgStream.push(singleRowSql);
			callback();
		};

		// stream is over, write the footer information
		pgStream._flush = function(callback) {
			if (!options.createOnly && !options.insertStatements) {
				pgStream.push(pgsql.getCopyFooterSql());
			}

			pgStream.push(pgsql.getFooterSql(name));
			pgStream.push(null);
			return callback();
		};

		return pgStream;

	});
};
