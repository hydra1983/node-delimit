"use strict";

var csv2tsv = require('./csv2tsv.js')
, tsv = require('../tsv/tsv.js');

exports.csvToPgSql = function(filePathOrStream, options) {
	return csv2tsv(filePathOrStream).then(function(tsvStream) {
		return tsv.tsvToPgSql(tsvStream, options);
	});
};
