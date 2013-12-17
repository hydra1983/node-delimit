"use strict";

var fs = require('fs')
, path = require('path')
, exec = require('child_process').exec
, when = require('when')
, nodefn = require('when/node/function');

function xls2tsv(filePath, sheetNumbersToGrab) {
	sheetNumbersToGrab = sheetNumbersToGrab || [];

	var defer = when.defer();
	fs.exists(filePath, function(exists) {
		if (!exists) {
			return defer.reject(new Error(
				'File ' + filePath + ' does not exist'));
		}

		var call = 'python ' + __dirname + '/xls2tsv.py ' + filePath + ' ' +
			sheetNumbersToGrab.join(' ');

		exec(call, function(error, stdout, stderr) {
			return (error === null)
				? defer.resolve(stdout)
				: defer.reject(new Error(
					'There was a problem parsing the file ' + filePath +
					'\nstderr\n:' + stderr));
		});
	});
	return defer.promise;
}

function getTsvFilePaths(tempDir) {
	var fsExistsDefer = when.defer();
	fs.exists(tempDir, fsExistsDefer.resolve);
	return fsExistsDefer.promise.then(function(exists) {
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
	return xls2tsv(filePath, sheetNumbersToGrab).then(function(tempDir) {
		info.tempDir = tempDir;
		info.files = [];
		return getTsvFilePaths(tempDir).then(function(filePaths) {
			info.files = filePaths.map(function(filePath) {
				return { path: filePath, sheetName: filePath.split('.')[1] };
			});
			return info;
		});
	});
}

// expose private functions for tests
module.exports.test = {
	xls2tsv: xls2tsv,
	getTsvFilePaths: getTsvFilePaths
};
