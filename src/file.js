"use strict";

var fs = require('fs')
, stream = require('stream')
, util = require('util')
, when = require('when')
, byline = require('byline')
, dataType = require('./dataType.js')
, helper = require('./helper')
, defines = require('./defines.js');

exports.isDataRowEmpty = function(transformer, dataRow) {
	return dataRow.filter(function(item) {
		return dataType.isStringEmpty(transformer, item);
	}).length === dataRow.length;
};

exports.getIgnoreColumns = function(transformer, headers) {
	var i = 0, len = headers.length, ignoreColumns = [];
	for (; i < len; ++i) {
		if (dataType.isStringEmpty(transformer, headers[i])) {
			ignoreColumns.push(i);
		}
	}
	return ignoreColumns;
};

exports.toRows = function(filePath, loader, options, headerRowHook, dataRowHook) {
	options = helper.getOptions(options);

	var defer = when.defer();

	if (options.useHeaders && typeof headerRowHook === 'function') {
		headerRowHook(options.useHeaders);
	}

	var lineStream = byline(fs.createReadStream(filePath, { encoding: 'utf8' })
	, { keepEmptyLines: true });

	var handleLine = function(line, currentRow) {
		var dataRow = loader.toDataRow(line);

		if (options.headerRow !== currentRow) {
			return dataRowHook(dataRow);
		}
		// if we're not using custom headers
		if (!options.useHeaders && typeof headerRowHook === 'function') {
			return headerRowHook(dataRow);
		}
	};

	var currentRow = 0, joinedLine = '', endLine = true;

	lineStream.on('data', function(rawLine) {

		joinedLine = joinedLine === '' ? rawLine : joinedLine + '\n' + rawLine;

		// If we were told to not end the line, check if that is still the case
		if (!endLine) {
			endLine = loader.lineEnds(rawLine);
		}
		// If we were told that the line ends, ensure that is the case, else
		// send end line to false and append this line to the next
		else if (loader.lineContinues(joinedLine)) {
			endLine = false;
		}

		// If we are ending this line, handle it
		if (endLine) {
			handleLine(joinedLine, currentRow);
			joinedLine = '';
			++currentRow;
		}
	});

	lineStream.on('end', defer.resolve);
	return defer.promise;
};

exports.removeIndexes = function(indexes, arr) {
	var arrObj = {};
	var i, len;
	for (i = 0, len = arr.length; i < len; ++i) { arrObj[i] = arr[i]; }
	for (i = 0, len = indexes.length; i < len; ++i) {
		delete arrObj[indexes[i]];
	}
	var ret = [];
	for (i = 0, len = arr.length; i < len; ++i) {
		if (typeof arrObj[i] !== 'undefined') {
			ret.push(arrObj[i]);
		}
	}
	return ret;
};

exports.getAttributes = function(filePath, loader, transformer, options) {
	var dataTypes = []
	, headers = []
	, previousDataRow = []
	, i
	, dataLength
	, singleHeader;

	return exports.toRows(filePath, loader, options
	, function headerRowCallback(dataRow) {
		dataLength = dataRow.length;
		headers = dataRow;
	}
	, function dataRowCallback(dataRow) {
		dataLength = dataRow.length;
		dataTypes = dataType.getNewDataTypes(
			transformer, dataTypes, dataRow, previousDataRow);
		previousDataRow = dataRow;
	})
	.then(function() {
		var ignoreColumns = [];

		// Adjust headers
		if (options.ignoreEmptyHeaders) {
			ignoreColumns = exports.getIgnoreColumns(transformer, headers);
			headers = exports.removeIndexes(ignoreColumns, headers);
			dataTypes = exports.removeIndexes(ignoreColumns, dataTypes);
		} else {
			for (i = 0; i < dataLength; ++i) {
				if (dataType.isStringEmpty(transformer, headers[i])) {
					headers[i] = "column_" + (i+1);
				}
			}
		}

		// Adjust Data Types if any were forced
		if (options.forceTypes) {
			dataTypes = headers.map(function(header, headerIndex) {
				return typeof options.forceTypes[header] ==='undefined'
					? dataTypes[headerIndex]
					: options.forceTypes[header];
			});
		}

		return {
			headers: headers,
			dataTypes: dataTypes,
			ignoreColumns: ignoreColumns
		};
	});
};

exports.getData = function(filePath, loader, transformer, options, ignoreColumns, dataRowHook) {
	var i, len;

	return exports.toRows(
		filePath, loader, options, false,
		function dataRowCallback(dataRow) {

			if (exports.isDataRowEmpty(transformer, dataRow)) {
				return;
			}

			if (ignoreColumns) {
				for (i = 0, len = ignoreColumns.length; i < len; ++i) {
					dataRow.splice(ignoreColumns[i] - i, 1);
				}
			}

			dataRowHook(dataRow);
		});
};
