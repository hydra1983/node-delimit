"use strict";

var fs = require('fs')
, when = require('when')
, exec = require('child_process').exec;

module.exports = function(filePath) {
	var defer = when.defer();

	fs.exists(filePath, function(exists) {
		if (!exists) {
			return defer.reject(new Error(
				'File ' + filePath + ' does not exist'));
		}

		var call = 'python ' + __dirname + '/csv2tsv.py ' + filePath;
		exec(call, function(error, stdout, stderr) {
			return error
				? defer.reject(new Error(
					'Failed to convert CSV to TSV\n' +
					'stderr:\n' + stderr + '\n' +
					'stack:\n' + (error.stack || error)
				))
				: defer.resolve(stdout);
		});
	});

	return defer.promise;
};
