"use strict";

var tsv = require('../tsv')
, path = require('path')
, helper = require('../../helper')
, spawn = require('child_process').spawn;

exports.csvToTsvStream = function(filePathOrStream) {
	return helper.getReadableStream(filePathOrStream).then(function(csvStream) {
		var csvToTsv = spawn(path.join(__dirname, 'csvToTsvStreamer.py'));
		csvStream.pipe(csvToTsv.stdin);
		return csvToTsv.stdout;
	});
};

exports.csvToPgSqlStream = function(filePathOrStream, options) {
	return exports.csvToTsvStream(filePathOrStream).then(function(tsvStream) {
		return tsv.tsvToPgsqlStream(tsvStream, options);
	});
};
