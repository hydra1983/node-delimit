"use strict";

var when = require('when')
, lineReader = require('line-reader')
, dataType = require('./dataType.js')
, transformers = require('./transformers.js')
, defines = require('./defines.js');

exports.isDataRowEmpty = function(transformer, dataRow) {
	return dataRow.filter(function(item) {
		return dataType.isStringEmpty(transformer, item);
	}).length === dataRow.length;
};

exports.getIgnoreColumns = function(transformer, headers) {
	var i = 0, len = headers.length, ignoreColumns = [];
	for(; i < len; ++i) {
		if(dataType.isStringEmpty(transformer, headers[i])) {
			ignoreColumns.push(i);
		}
	}
	return ignoreColumns;
};

exports.toRows = function(filePath, loader, options, headerRowHook, dataRowHook) {

	var defer = when.defer();

	if (options.useHeaders) {
		if (typeof headerRowHook === 'function') {
			headerRowHook(options.useHeaders);
		}
	}

	try {
		lineReader.open(filePath, function(reader) {

			var exitReader = function() {
				reader.close();
				return defer.resolve();
			};

			var handleLine = function(line, row) {
				var dataRow = loader.toDataRow(line);
				if (options.headerRow == row) {
					// if we're not using custom headers
					if (!options.useHeaders &&
						typeof headerRowHook === 'function')
					{
						headerRowHook(dataRow);
					}
				} else {
					dataRowHook(dataRow);
				}
				return true;
			};

			var row = 0;
			var joinedLine = '';
			var continueLine = false;

			var cycle = function() {
				if (reader.hasNextLine()) {
					reader.nextLine(function(rawLine) {

						joinedLine = joinedLine ?
							(joinedLine + '\n' + rawLine) : rawLine;

						// If marked to continue, shall we continue again?
						if (continueLine) {
							continueLine = !loader.lineEnds(rawLine);
						}
						// Mark this line for continuation
						else if (loader.lineContinues(joinedLine)) {
							continueLine = true;
						}

						// If we have our final line, handle it
						if (!continueLine) {
							handleLine(joinedLine, row);
							joinedLine = '';
							++row;
						}

						setImmediate(cycle);
					});
				} else {
					exitReader();
				}
			};

			setImmediate(cycle);
		});
	} catch(error) {
		return defer.reject(new Error(
			'Failed to open the file to read lines, \n' +
			error.stack || error));
	}

	return defer.promise;
};

exports.getAttributes = function(filePath, loader, transformer, options) {
	var dataTypes = []
	, headers = []
	, previousDataRow = []
	, i
	, dataLength;

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
			headers = transformers.removeIndexes(ignoreColumns, headers);
			dataTypes = transformers.removeIndexes(ignoreColumns, dataTypes);
		} else {
			for (i = 0; i < dataLength; ++i) {
				if (dataType.isStringEmpty(transformer, headers[i])) {
					headers[i] = "column_" + (i+1);
				}
			}
		}

		// Adjust Data Types
		if (options.forceType && options.forceType !== false) {
			dataTypes = [];
			for(i = 0; i < dataLength; ++i) {
				dataTypes.push(options.forceType);
			}
		}

		return {
			headers: headers,
			dataTypes: dataTypes,
			ignoreColumns: ignoreColumns
		};
	});
};

exports.getData = function(filePath, loader, transformer, options, ignoreColumns, dataRowHook, callback) {
	var i, len;

	return exports.toRows(
		filePath, loader, options, false,
		function dataRowCallback(dataRow) {

			if (exports.isDataRowEmpty(transformer, dataRow)) {
				return;
			}

			if (ignoreColumns) {
				for(i = 0, len = ignoreColumns.length; i < len; ++i) {
					dataRow.splice(ignoreColumns[i] - i, 1);
				}
			}

			dataRowHook(dataRow);
		});
};
