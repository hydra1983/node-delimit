"use strict";

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
	, '[DELIMITED FILES ONLY] What row contains header information?'
	, (givenOpts.headerRow = typeof givenOpts.headerRow === 'undefined'
		? 0 : givenOpts.headerRow));

	addOption('ignoreEmptyHeaders', 'E', true
	, 'Should we ignore columns in data with empty headers?'
	, (givenOpts.ignoreEmptyHeaders || false));

	addOption('forceTypes', 'f', false
	, 'Force a type for a given column? (comma separated)\n' +
		"e.g. 'column_name:boolean,another_column:text'"
	, (function(forceTypes) {
		if (typeof forceTypes === 'object') { return forceTypes; }
		if (typeof forceTypes !== 'string') { return undefined; }

		return forceTypes.split(',').reduce(function(objForceTypes, curr) {
			var split = curr.split(':')
			, columnName = split[0]
			, forceType = split[1].toUpperCase();
			if (typeof defines[forceType] !== 'undefined') {
				objForceTypes[columnName] = defines[forceType];
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
				arrIgnoreTypes.push(iType)
			} else {
				console.error('W:', forceType, 'is not a valid ignoreType');
			}
			return arrIgnoreTypes;
		}, []);
	})(givenOpts.ignoreTypes));

	addOption('useHeaders', 'u', false
	, 'Have we specified out own headers?'
	, (function(useHeaders) {
		if (useHeaders instanceof Array) { return useHeaders; }
		if (typeof useHeaders === 'string') { return useHeaders.split(','); }
		return undefined;
	})(givenOpts.useHeaders));

	addOption('maintainHeaders', 'A', true
	, 'Maintain the original header names?\n' +
		'(e.g. do not switch to zip, lat, lng, etc)'
	, (givenOpts.maintainHeaders ? true : false));

	addOption('dataOnly', 'A', true
	, '[PSQL ONLY] Only output data SQL (no create statement)'
	, ((givenOpts.dataOnly && !givenOpts.createOnly) || false));

	addOption('createOnly', 'A', true
	, '[PSQL ONLY] Only output create table SQL (no data)'
	, ((givenOpts.createOnly && !givenOpts.dataOnly) || false));

	addOption('insertStatements', 'A', true
	, '[PSQL ONLY] Use insert statements instead of dump format?'
	, (givenOpts.insertStatements ? true : false));

	return retOpts;
};
