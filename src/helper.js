"use strict";

var defines = require('./defines')
, fs = require('fs')
, when = require('when')
, callbacks = require('when/callbacks')
, stream = require('stream');

exports.normalizeString = function(string) {
	string = '' + string; // turn into a string
	// Remove surrounding spaces
	string = string.trim();
	// Replace % with "percent"
	string = string.replace(/%/g, "percent");
	// Replace all spaces with underscores
	string = string.replace(/ /g, "_");
	// Remove unwanted characters
	string = string.replace(/[^A-Za-z0-9_]/g, "");
	// Remove any double and trailing underscores
	string = string.replace(/__+/g, '_').replace(/_*$/g, '');
	return string;
};

exports.normalizeHeader = function(header) {
	var normalized = exports.normalizeString(header);

	// look for headers starting with a number
	if (normalized.match(/^\d/)) {
		normalized = "column_" + normalized;
	}

	return normalized;
};

exports.getOptions = function(givenOpts) {

	// no need to get the options if we have already inspected it previously
	if (typeof givenOpts === 'object' && givenOpts._inspected) {
		return givenOpts;
	}

	givenOpts = givenOpts || {};
	var retOpts = {};

	var addOption = function(name, alias, is_bool, describe, value) {
		retOpts[name] = value;
		Object.defineProperty(retOpts, name + '_describe', {
			enumerable: false, value: describe
		});
		Object.defineProperty(retOpts, name + '_boolean', {
			enumerable: false, value: is_bool
		});
		Object.defineProperty(retOpts, name + '_alias', {
			enumerable: false, value: alias
		});
	};

	// define this property so we don't revisit the options again if called
	// multiple times (see first check in function)
	Object.defineProperty(retOpts, '_inspected', {
		enumerable: false,
		value: true
	});

	addOption('name', 'n', false
	, 'What should we name our dataset?'
	, (givenOpts.name || 'default_name'));

	addOption('appendString', 'a', false
	, 'What String should we append to the end of our dataset name?'
	, (typeof givenOpts.appendString === 'undefined'
		? '' : givenOpts.appendString));

	addOption('prependString', 'p', false
	, 'What String should we prepend to the beginning of our dataset name?'
	, (typeof givenOpts.prependString === 'undefined'
		? '' : givenOpts.prependString));

	addOption('headerRow', 'H', false
	, 'What row contains header information?'
	, (givenOpts.headerRow = typeof givenOpts.headerRow === 'undefined'
		? 0 : givenOpts.headerRow));

	addOption('ignoreEmptyHeaders', 'e', true
	, 'Should we ignore columns in data with empty headers?'
	, (givenOpts.ignoreEmptyHeaders || false));

	addOption('forceTypes', 'f', false
	, 'Force a type for a given column? (comma separated)\n' +
		"e.g. 'column_name:boolean,another_column:text'"
	, (function(forceTypes) {

		// if it's already an object, convert to the proper defines
		if (typeof forceTypes === 'object') {
			for (var column_name in forceTypes) {
				var normalizedName = exports.normalizeHeader(column_name);
				forceTypes[normalizedName] = defines.getDefine(
					forceTypes[column_name]);
				if (normalizedName !== column_name) {
					delete forceTypes[column_name];
				}
			}
			return forceTypes;
		}

		// if it's not a string, nothing we can do about it...
		if (typeof forceTypes !== 'string') {
			return undefined;
		}

		return forceTypes.split(',').reduce(function(objForceTypes, curr) {
			var split = curr.split(':')
			, columnName = exports.normalizeHeader(split[0])
			, forceType = split[1].toUpperCase();
			if (typeof defines[forceType] !== 'undefined') {
				objForceTypes[columnName] = defines.getDefine(
					defines[forceType]);
			} else {
				console.error('W:', forceType, 'is not a valid forceType');
			}
			return objForceTypes;
		}, {});

	})(givenOpts.forceTypes));

	addOption('ignoreTypes', 't', false
	, "Ignore a specific type?\n" +
		" e.g. make a column of 0's and 1's type int instead of boolean"
	, (function(ignoreTypes) {
		if (ignoreTypes instanceof Array) { return ignoreTypes; }
		if (typeof ignoreTypes !== 'string') { return undefined; }

		return ignoreTypes.split(',').reduce(function(arrIgnoreTypes, itype) {
			itype = itype.toUpperCase();
			if (typeof defines[itype] !== 'undefined') {
				arrIgnoreTypes.push(itype)
			} else {
				console.error('W:', forceType, 'is not a valid ignoreType');
			}
			return arrIgnoreTypes;
		}, []);
	})(givenOpts.ignoreTypes));

	addOption('useHeaders', 'u', false
	, 'Supply your own headers to use vs. ones provided in file.'
	, (function(useHeaders) {
		if (useHeaders instanceof Array) { return useHeaders; }
		if (typeof useHeaders === 'string') { return useHeaders.split(','); }
		return undefined;
	})(givenOpts.useHeaders));

	addOption('maintainHeaders', 'm', true
	, 'Maintain the original header names?\n' +
		'(e.g. do not switch to zip, lat, lng, etc)'
	, (givenOpts.maintainHeaders ? true : false));

	addOption('dataOnly', 'D', true
	, '[PSQL ONLY] Only output data SQL (no create statement)'
	, ((givenOpts.dataOnly && !givenOpts.createOnly) || false));

	addOption('createOnly', 'C', true
	, '[PSQL ONLY] Only output create table SQL (no data)'
	, ((givenOpts.createOnly && !givenOpts.dataOnly) || false));

	addOption('insertStatements', 'I', true
	, '[PSQL ONLY] Use insert statements instead of dump format?'
	, (givenOpts.insertStatements ? true : false));

	addOption('xlsSheetNumbers', 'x', false
	, '[XLS ONLY] Which sheets to import? Comma separated (default: ALL)'
	, (function(sheets) {
		if (sheets instanceof Array) {
			return sheets.map(function(sheet) {
				return parseInt(sheet, 10);
			});
		}
		if (typeof sheets !== 'string') { return undefined; }
		return sheets.split(',').map(function(sheet) {
			return parseInt(sheet, 10);
		});
	})(givenOpts.xlsSheetNumbers));

	return retOpts;
};

exports.getReadableStream = function(filePathOrStream) {
	if (filePathOrStream instanceof stream.Readable) {
		return when.resolve(filePathOrStream);
	}

	return callbacks.call(fs.exists, filePathOrStream).then(function(exists) {
		if (!exists) {
			return when.reject(new Error(
				'File ' + filePathOrStream + ' does not exist'));
		}
		return when.resolve(fs.createReadStream(filePathOrStream));
	});
};
