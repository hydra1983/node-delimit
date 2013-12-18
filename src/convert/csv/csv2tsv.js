"use strict";

var fs = require('fs')
, path = require('path')
, stream = require('stream')
, when = require('when')
, callbacks = require('when/callbacks')
, helper = require('../../helper')
, spawn = require('child_process').spawn;

module.exports = function(filePathOrStream) {
	return helper.getReadableStream(filePathOrStream).then(function(csvStream) {
		var csv2tsv = spawn(path.join(__dirname, 'pipeCsv2tsv.py'));
		csvStream.pipe(csv2tsv.stdin);
		return csv2tsv.stdout;
	});
};

require('main')(module)
.run(function($) {
	$.assert.argsLen(1)
	module.exports($(0)).then(function(tsvStream) {
		tsvStream.pipe(process.stdout);
	}).otherwise(function(error) {
		console.error(error.stack || error); void('debug');
	})
});
