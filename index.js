"use strict";

var when = require('when')
, xls = require('./src/convert/xls/xls')
, tsv = require('./src/convert/tsv/tsv')
, csv = require('./src/convert/csv/csv')
, json = require('./src/convert/json/json')
, helper = require('./src/helper');

exports.toPgSql = function(convertFrom, file, options) {
	options = helper.getOptions(options);

	var pgsqlStreamPromise;

	switch (convertFrom.toLowerCase()) {
		case 'xls':
		case 'xlsx':
			pgsqlStreamPromise = xls.xlsToPgSql(file, options);
			break;

		case 'tsv':
			pgsqlStreamPromise = tsv.tsvToPgSql(file, options);
			break;

		case 'csv':
			pgsqlStreamPromise = csv.csvToPgSql(file, options);
			break;

		case 'json':
			pgsqlStreamPromise = json.readJson(file).then(function(jsonObj) {
				return json.jsonToPgSql(jsonObj, options);
			});
			break;

		default:
			pgsqlStreamPromise = when.reject(new Error(
				"Invalid <convertFrom> specified '" + convertFrom + "'"));
	}

	return pgsqlStreamPromise;
};

exports.convertStream = function(convertFrom, convertTo, file, options) {

	options = helper.getOptions(options);

	var convertStreamPromise;

	switch (convertTo.toLowerCase()) {
		case 'pgsql':
			convertStreamPromise = exports.toPgSql(convertFrom, file, options);
			break;

		default:
			convertStreamPromise = when.reject(new Error(
				'Invalid <convertTo> provided'));
	}

	return convertStreamPromise;
};
