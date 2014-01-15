"use strict";

var fs = require('fs')
, path = require('path')
, exec = require('child_process').exec
, when = require('when')
, callbacks = require('when/callbacks')
, nodefn = require('when/node/function');

function xlsToTsvDir(filePath, sheetNumbersToGrab) {
	sheetNumbersToGrab = sheetNumbersToGrab || [];

	return callbacks.call(fs.exists, filePath).then(function(exists) {
		if (!exists) {
			return when.reject(new Error(filePath + ' does not exist'));
		}

		var scriptPath = path.join(__dirname, 'xlsToTsvDir.py');
		var call = 'python ' + scriptPath + " '" + filePath + "' " +
			sheetNumbersToGrab.join(' ');

		var defer = when.defer();
		exec(call, function(error, stdout, stderr) {
			return (error === null)
				? defer.resolve(stdout)
				: defer.reject(new Error(
					'There was a problem parsing the file ' + filePath +
					'\nstderr\n:' + stderr));
		});
		return defer.promise;
	});
}

function getTsvFilePaths(tempDir) {
	return callbacks.call(fs.exists, tempDir).then(function(exists) {
		if (!exists) {
			return when.reject(new Error(
				'Directory ' + tempDir + ' does not exist'));
		}
		return nodefn.call(fs.readdir, tempDir).then(function(files) {
			return files.map(function(file) {
				return path.join(tempDir, file);
			});
		});
	});
};

module.exports = function(filePath, sheetNumbersToGrab) {
	var info = {};
	return xlsToTsvDir(filePath, sheetNumbersToGrab)
	.then(function(tempDir) {
		info.tempDir = tempDir;
		info.files = [];
		return getTsvFilePaths(tempDir).then(function(filePaths) {
			info.files = filePaths.map(function(filePath) {
				return { path: filePath, sheetName: filePath.split('.')[1] };
			});
			return info;
		});
	});
};

// attach to exports after setting module.exports = fn()
module.exports.xlsToTsvDir = xlsToTsvDir;

// expose private functions for tests
module.exports.test = {
	getTsvFilePaths: getTsvFilePaths
};
