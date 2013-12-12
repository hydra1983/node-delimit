"use strict";

var csv2tsv = require('./csv2tsv.js')
, tsv = require('../tsv/tsv.js');

exports.csvToPgSql = function(filePath, writeStream, options, callback) {
	return csv2tsv(filePath).then(function(tempPath) {
		return tsv.tsvToPgSql(tempPath, writeStream, options);
	});
};
