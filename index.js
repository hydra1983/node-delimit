"use strict";

var when = require('when')
, xls = require('./src/convert/xls/xls')
, tsv = require('./src/convert/tsv/tsv')
, csv = require('./src/convert/csv/csv')
, json = require('./src/convert/json/json')
, util = require('./src/util');

exports.toPgSql = function(convertFrom, file, options) {
	options = util.getOptions(options);

	var pgsqlPromise;

	switch (convertFrom.toLowerCase()) {
		case 'xls':
		case 'xlsx':
			pgsqlPromise = xls.xlsToPgSql(file, process.stdout, options);
			break;

		case 'tsv':
			pgsqlPromise = tsv.tsvToPgSql(file, process.stdout, options);
			break;

		case 'csv':
			pgsqlPromise = csv.csvToPgSql(file, process.stdout, options);
			break;

		case 'json':
			pgsqlPromise = json.readJson(file).then(function(jsonObj) {
				return json.jsonToPgSql(jsonObj, process.stdout, options);
			});
			break;

		default:
			pgsqlPromise = when.reject(new Error(
				"Invalid <convertFrom> specified '" + convertFrom + "'"));
	}

	return pgsqlPromise;
};

exports.convertTo = function(convertFrom, convertTo, file, options) {
	var convertPromise;

	switch (convertTo.toLowerCase()) {
		case 'pgsql':
			convertPromise = exports.toPgSql(convertFrom, file, options);
			break;

		default:
			convertPromise = when.reject(new Error(
				'Invalid <convertTo> provided'));
	}

	return convertPromise;
};
