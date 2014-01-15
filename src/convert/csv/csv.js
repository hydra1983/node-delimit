"use strict";

var tsv = require('../tsv/tsv.js')
, path = require('path')
, helper = require('../../helper')
, spawn = require('child_process').spawn;

exports.csvToTsv = function(filePathOrStream) {
	return helper.getReadableStream(filePathOrStream).then(function(csvStream) {
		var csvToTsv = spawn(path.join(__dirname, 'csvToTsvStreamer.py'));
		csvStream.pipe(csvToTsv.stdin);
		return csvToTsv.stdout;
	});
};

exports.csvToPgSql = function(filePathOrStream, options) {
	return exports.csvToTsv(filePathOrStream).then(function(tsvStream) {
		return tsv.tsvToPgsqlStream(tsvStream, options);
	});
};
