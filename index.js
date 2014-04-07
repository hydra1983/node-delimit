"use strict";

var when = require('when')
, xls = require('./src/convert/xls')
, tsv = require('./src/convert/tsv')
, csv = require('./src/convert/csv')
, helper = require('./src/helper');

exports.toPgSql = function(convertFrom, fileOrStream, options) {
	options = helper.getOptions(options);
	return helper.getReadableStream(fileOrStream).then(function(fileStream) {
		var pgsqlStreamPromise;

		switch (convertFrom.toLowerCase()) {
			case 'xls':
			case 'xlsx':
				pgsqlStreamPromise = xls.toPgSqlStream(fileStream, options);
				break;

			case 'tsv':
				pgsqlStreamPromise = tsv.toPgsqlStream(fileStream, options);
				break;

			case 'csv':
				pgsqlStreamPromise = csv.toPgSqlStream(fileStream, options);
				break;

			default:
				pgsqlStreamPromise = when.reject(new Error(
					"Invalid <convertFrom> specified '" + convertFrom + "'"));
		}

		return pgsqlStreamPromise;
	});
};

exports.toTsv = function(convertFrom, fileOrStream, options) {
	options = helper.getOptions(options);
	return helper.getReadableStream(fileOrStream).then(function(fileStream) {
		var tsvStreamPromise;

		switch (convertFrom.toLowerCase()) {
			case 'xls':
			case 'xlsx':
				tsvStreamPromise = when.reject(new Error(
					'Can not convert XLS to TSV at the moment.'));
				break;

			case 'tsv':
				tsvStreamPromise = helper.getReadableStream(fileOrStream);
				break;

			case 'csv':
				tsvStreamPromise = csv.toTsvStream(fileOrStream);
				break;

			default:
				tsvStreamPromise = when.reject(new Error(
					"Invalid <convertFrom> specified '" + convertFrom + "'"));
		}

		return tsvStreamPromise;
	});
};

exports.convertStream = function(convertFrom, convertTo, fileOrStream, options) {

	options = helper.getOptions(options);
	return helper.getReadableStream(fileOrStream).then(function(fileStream) {
		var convertStreamPromise;

		switch (convertTo.toLowerCase()) {
			case 'pgsql':
				convertStreamPromise =
					exports.toPgSql(convertFrom, fileOrStream, options);
				break;

			case 'tsv':
				convertStreamPromise =
					exports.toTsv(convertFrom, fileOrStream, options);
				break;

			default:
				convertStreamPromise = when.reject(new Error(
					'Invalid <convertTo> provided'));
		}

		return convertStreamPromise;
	});
};
