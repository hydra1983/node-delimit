"use strict";

var when = require('when')
, stream = require('stream')
, util = require('util')
, sequence = require('when/sequence')
, transformers = require('../../transformers.js')
, tsv = require('../tsv')
, xls2tsv = require('./xls2tsv.js')
, _ = require('lodash')
, helper = require('../../helper');

exports.xlsToPgSqlStream = function(filePath, options) {
	options = helper.getOptions(options);

	// We need our own xls stream to combine the streams given to us from each
	// sheet that may exist in the xls file
	util.inherits(XlsPgsqlStream, stream.Readable);
	function XlsPgsqlStream() { stream.Readable.call(this); }
	XlsPgsqlStream.prototype._read = function() {};

	var xlsPgsqlStream = new XlsPgsqlStream();

	/*
		This following code does NOT *return* a promise - it only interfaces
		with the stream that we return at the bottom (see last line in here)
	*/

	xls2tsv(filePath, options.xlsSheetNumbers).then(function(info) {

		return sequence(info.files.map(function(file) {
			var modifiedOptions = _.clone(options);

			// append sheet name if there is more than one file
			if (info.files.length > 1) {
				modifiedOptions.name = options.name + "_" +
					helper.normalizeString(file.sheetName);
			}

			return function() {
				return tsv.tsvToPgsqlStream(file.path, modifiedOptions)
				.then(function(pgsqlStream) {
					var defer = when.defer();
					pgsqlStream.on('end', defer.resolve);
					pgsqlStream.on('data', function(chunk) {
						xlsPgsqlStream.push(chunk);
					});
					return defer.promise;
				});
			};

		})).then(function() {
			xlsPgsqlStream.push(null); // end the read stream
		});
	});

	return when.resolve(xlsPgsqlStream);
};
