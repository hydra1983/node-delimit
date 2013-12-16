"use strict";

var when = require('when')
, xls = require('./src/convert/xls/xls')
, tsv = require('./src/convert/tsv/tsv')
, csv = require('./src/convert/csv/csv')
, json = require('./src/convert/json/json')
, util = require('./src/util');

exports.toPgSql = function(file, options) {
	var options = util.getOptions(options);
	var extension = file.split('.');
	extension = options.forceExtension || extension[extension.length - 1];

	if (extension.match(/\.?xlsx?/)) {
		return xls.xlsToPgSql(file, process.stdout, options);
	}
	else if (extension.match(/\.?tsv/)) {
		return tsv.tsvToPgSql(file, process.stdout, options);
	}
	else if (extension.match(/\.?csv/)) {
		return csv.csvToPgSql(file, process.stdout, options);
	}
	else if (extension.match(/\.?json/)) {
		return json.readJson(file).then(function(jsonObj) {
			return json.jsonToPgSql(jsonObj, process.stdout, options);
		});
	}

	return when.reject(new Error(
		"You've provided a file with an invalid extension of '" +
		extension + "'"));
};

exports.convertTo = function(file, convertTo, options) {
	var convertPromise;

	switch (convertTo.toUpperCase()) {
	    case 'PG':
	        convertPromise = exports.toPgSql(file, options);
	        break;
	    default:
	        convertPromise = when.reject(new Error(
	        	'Invalid convertTo provided'));
	}

	return convertPromise;
};
