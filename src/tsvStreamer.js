"use strict";

var fs = require('fs')
, stream = require('stream')
, split = require('split')
, temp = require('temp')
, when = require('when')
, dataType = require('./dataType');

function isDataRowEmpty(transformer, dataRow) {
	return dataRow.filter(function(item) {
		return dataType.isStringEmpty(transformer, item);
	}).length === dataRow.length;
}

function getIgnoreColumns(transformer, headers) {
	var i = 0, len = headers.length, ignoreColumns = [];
	for (; i < len; ++i) {
		if (dataType.isStringEmpty(transformer, headers[i])) {
			ignoreColumns.push(i);
		}
	}
	return ignoreColumns;
}

/*

Goes through an array and removes indexes that we don't want, e.g.

	[0, 1, 2, 3]

if we specify indexes [0, 2] we would be left with:

	[1, 3]

*/
function removeIndexes(indexes, arr) {
	var arrObj = {};
	var i, len;

	// convert the array into an object indexed by the arrays position
	for (i = 0, len = arr.length; i < len; ++i) { arrObj[i] = arr[i]; }

	// go through, and delete the indexes that we don't want
	for (i = 0, len = indexes.length; i < len; ++i) {
		delete arrObj[indexes[i]];
	}

	// build back up our array
	var ret = [];
	for (i = 0, len = arr.length; i < len; ++i) {
		if (typeof arrObj[i] !== 'undefined') {
			ret.push(arrObj[i]);
		}
	}
	return ret;
}

// Is this row finished or does it continue on another line?
function lineContinues(rowString) {
	if (rowString === '') {
		return true;
	}
	// Do we end with a continuation?
	return rowString.match(/(?:\t|^)"([^\t"]+[^"])?$/) ? true : false;
}

// Has this line finished continuing?
function lineEnds(rowString) {
	if (rowString === '"') {
		return true;
	}

	// Does it close off the previous quote?
	var closeQuote = rowString.match(/^([^\t"]+[^"])?"(?:\t|$)/)
		? true : false;

	// Does it continue again?
	var continuesAgain = lineContinues(rowString);

	return closeQuote && !continuesAgain;
}

function getDataRow(rowString) {

	// remove any quotes that surround text with newlines
	rowString = rowString.replace(/"(.*\n(?:\n|.)*)"/, '$1');

	// convert fancy quotes into normal ones
	rowString = rowString.replace(/\u2018/g, "'");
	rowString = rowString.replace(/\u2019/g, "'");
	rowString = rowString.replace(/\u201c/g, '"');
	rowString = rowString.replace(/\u201d/g, '"');

	// get rid of any other non printable character
	rowString = rowString.replace(/[^\x00-\x7F]/g, "");

	// other stuff
	rowString = rowString.replace(/\r/g, '');

	// split and return
	return rowString.split("\t");
}


/*
Pipe in a TSV (line) stream, it will return a new stream with the quirks ironed
out as a data row.

returns an object stream containing:

{
	row: < what row this data was on >
	data: < the data from this row [Array] >
}
*/
exports.toDataRows = function() {
	var ts = new stream.Transform({ objectMode: true });

	var joinedLine = ''
	, endLine = true
	, currentRow = 1;

	ts._transform = function(chunk, encoding, callback) {
		var currentLine = chunk.toString();

		// continue the previous line if necessary
		joinedLine = joinedLine === ''
			? currentLine
			: joinedLine + '\n' + currentLine;

		// If we were told to not end the line, check if that is still the case
		if (!endLine) {
			endLine = lineEnds(currentLine);
		}
		// If we were told that the line ends, ensure that is the case, else
		// send end line to false and append this line to the next
		else if (lineContinues(joinedLine)) {
			endLine = false;
		}

		// If we are ending this line, push a new object on to the stream
		if (endLine) {
			var dataRow = {
				row: currentRow,
				data: getDataRow(joinedLine)
			};
			ts.push(dataRow);
			joinedLine = ''; // reset the line continuations
			++currentRow; // bump current row
		}

		callback();
	};

	return ts;
};

function getTsvAttributes(tsvStream, transformer, options) {
	var dataStream = when.defer()
	, dataTypes =  []
	, headers = options.useHeaders || []
	, previousDataRow = [];

	var dataRowStream = tsvStream.pipe(split()).pipe(exports.toDataRows());

	dataRowStream.on('data', function(dataRow) {
		if (dataRow.row === options.headerRow && headers.length === 0) {
			headers = dataRow.data;
			return;
		}

		dataTypes = dataType.getNewDataTypes(
			transformer, dataTypes, dataRow.data, previousDataRow);

		previousDataRow = dataRow.data;
	});

	dataRowStream.on('error', dataStream.reject);

	dataRowStream.on('end', dataStream.resolve);

	return dataStream.promise.then(function () {
		var ignoreColumns = []
		, dataLength = previousDataRow.length;

		// Adjust headers
		if (options.ignoreEmptyHeaders) {
			ignoreColumns = getIgnoreColumns(transformer, headers);
			headers = removeIndexes(ignoreColumns, headers);
			dataTypes = removeIndexes(ignoreColumns, dataTypes);
		} else {
			// rename empty headers
			for (var i = 0; i < dataLength; ++i) {
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

		var tsvAttributes = {
			headers: headers,
			dataTypes: dataTypes,
			ignoreColumns: ignoreColumns
		};

		return tsvAttributes;
	});
}


/*
Given a tsv stream it will return an object containing
{
   tsvAttributes: { attributes... }
   tsvStream: <raw tsv stream containing the same content passed in>
}
*/
exports.process = function(tsvStream, transformer, options) {
	var writeTempTsv = when.defer()
	, tempTsvFile = temp.path({ suffix: '.tsv' })
	, tempTsvWriteStream = fs.createWriteStream(tempTsvFile);

	tsvStream.pipe(tempTsvWriteStream);
	tsvStream.on('end', writeTempTsv.resolve);
	tsvStream.on('error', writeTempTsv.reject);

	return writeTempTsv.promise.then(function() {
		var tsvStream = fs.createReadStream(tempTsvFile);
		return getTsvAttributes(tsvStream, transformer, options);
	}).then(function(tsvAttributes) {

		var tsvStream = fs.createReadStream(tempTsvFile);

		// cleanup the temp file after whoever uses this stream
		tsvStream.on('end', function() {
			fs.unlink(tempTsvFile);
		});

		return {
			tsvAttributes: tsvAttributes,
			tsvStream: tsvStream
		};
	});
};

/*
Given a tsvStream it will return:

{
	tsvAttributes: < attributes for this tsv file >
	dataRowStream: < an object stream containing... >
		{
			row: < what row this data was on >
			data: < the data from this row [Array] >
		}
}
*/
exports.data = function(tsvStream, transformer, options) {

	return exports.process(tsvStream, transformer, options)
	.then(function(info) {

		var tsvAttributes = info.tsvAttributes
		, dataRowStream = info.tsvStream
			.pipe(split())
			.pipe(exports.toDataRows())
		, ts = new stream.Transform({ objectMode: true });

		dataRowStream.pipe(ts);

		ts._transform = function(chunk, encoding, callback) {
			var dataRow = chunk;

			// no more data to read
			if (dataRow === null) {
				ts.push(null);
				return callback();
			}

			// skip header row
			if (dataRow.row === options.headerRow) {
				return callback();
			}

			// skip empty rows
			if (isDataRowEmpty(transformer, dataRow.data)) {
				return callback();
			}

			// remove any columns we are ignoring
			if (tsvAttributes.ignoreColumns) {
				var i = 0, len = tsvAttributes.ignoreColumns;
				for (; i < len; ++i) {
					dataRow.data.splice(tsvAttributes.ignoreColumns[i] - i, 1);
				}
			}

			ts.push(dataRow);
			callback();
		};

		var tsvData = {
			tsvAttributes: tsvAttributes,
			dataRowStream: ts
		};

		return tsvData;
	});

};

exports._test = {

};
