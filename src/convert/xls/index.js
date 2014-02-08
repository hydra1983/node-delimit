"use strict";

var fs = require('fs')
, fse = require('fs-extra')
, path = require('path')
, when = require('when')
, exec = require('child_process').exec
, nodefn = require('when/node/function')
, callbacks = require('when/callbacks')
, stream = require('stream')
, split = require('split')
, sequence = require('when/sequence')
, transformers = require('../../transformers.js')
, tsv = require('../tsv')
, _ = require('lodash')
, helper = require('../../helper');

exports._test = {
	toTsvDir: toTsvDir,
	getTsvFilePaths: getTsvFilePaths,
	convertAndGetInfo: convertAndGetInfo
};

function toTsvDir(filePath, sheetNumbersToGrab) {
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
}

function convertAndGetInfo(filePath, sheetNumbersToGrab) {
	var info = {};
	return toTsvDir(filePath, sheetNumbersToGrab).then(function(tempDir) {
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

// Takes an xls & converts it into a single tsv stream.
exports.getTsvStream = function(filePath, sheetNumbersToGrab) {
	return convertAndGetInfo(filePath, sheetNumbersToGrab).then(function(info) {
		var ts = new stream.Transform();

		ts._transform = function(chunk, encoding, callback) {
			ts.push(chunk);
			callback();
		};

		info.files.forEach(function(file) {
			fs.createReadStream(file.path).pipe(ts);
		});

		return ts;
	});
};

exports.toPgSql = function(filePath, options) {
	options = helper.getOptions(options);
	return exports.getTsvStream(filePath, options.xlsSheetNumbers)
	.then(function(tsvStream) {
		return tsv.toPgsqlStream(tsvStream, options);
	});
};
