"use strict";

var when = require('when')
, xls = require('./src/convert/xls/xls')
, tsv = require('./src/convert/tsv/tsv')
, csv = require('./src/convert/csv/csv')
, json = require('./src/convert/json/json')
, helper = require('./src/helper');

exports.toPgSql = function(convertFrom, fileOrStream, options) {
	options = helper.getOptions(options);

	var pgsqlStreamPromise;

	switch (convertFrom.toLowerCase()) {
		case 'xls':
		case 'xlsx':
			pgsqlStreamPromise = xls.xlsToPgSql(fileOrStream, options);
			break;

		case 'tsv':
			pgsqlStreamPromise = tsv.tsvToPgSql(fileOrStream, options);
			break;

		case 'csv':
			pgsqlStreamPromise = csv.csvToPgSql(fileOrStream, options);
			break;

		case 'json':
			pgsqlStreamPromise = json.readJson(fileOrStream).then(function(jsonObj) {
				return json.jsonToPgSql(jsonObj, options);
			});
			break;

		default:
			pgsqlStreamPromise = when.reject(new Error(
				"Invalid <convertFrom> specified '" + convertFrom + "'"));
	}

	return pgsqlStreamPromise;
};

exports.toTsv = function(convertFrom, fileOrStream, options) {
	options = helper.getOptions(options);

	var pgsqlStreamPromise;

	switch (convertFrom.toLowerCase()) {
		case 'xls':
		case 'xlsx':
			pgsqlStreamPromise = when.reject(new Error(
				'Can not convert XLS to TSV at the moment.'));
			break;

		case 'tsv':
			pgsqlStreamPromise = helper.getReadableStream(fileOrStream);
			break;

		case 'csv':
			pgsqlStreamPromise = csv.csvToPgSql(fileOrStream, options);
			break;

		case 'json':
			pgsqlStreamPromise = json.readJson(fileOrStream).then(function(jsonObj) {
				return json.jsonToPgSql(jsonObj, options);
			});
			break;

		default:
			pgsqlStreamPromise = when.reject(new Error(
				"Invalid <convertFrom> specified '" + convertFrom + "'"));
	}

	return pgsqlStreamPromise;
};

exports.convertStream = function(convertFrom, convertTo, fileOrStream, options) {

	options = helper.getOptions(options);

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
};
