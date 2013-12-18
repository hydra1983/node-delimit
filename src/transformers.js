"use strict";

var defines = require('./defines.js')
, helper = require('./helper');

function getDefaultTransformer(options) {
	options = options || {};
	var transformer = {};

	// What represents NULL?
	transformer.nullValue = null;

	// What is considered an empty value?
	transformer.emptyValues = [
		'',
		'nan',
		'NaN',
		'null',
		'undefined',
		'#REF!:emptyRange' // Google Docs
	];

	// What represents true and false?
	transformer.booleanValues = {
		isTrue: ['1', '1.0', 'TRUE', 'T', 'YES', 'Y'],
		isFalse: ['0', '0.0', 'FALSE', 'F', 'NO', 'N']
	};

	// Are we ignoring a particular type?
	transformer.ignoreType = function(dataType) {
		if (!options.ignoreTypes) { return false; }
		return options.ignoreTypes.indexOf(dataType) !== -1;
	};

	return transformer;
}

// @TODO needs test cases
exports.getDataSetTransformer = function(options) {
	options = options || {};
	var transformer = getDefaultTransformer(options);

	// Transform the output values based on data type
	transformer.output = function(dataType, value) {
		var i, len;

		switch (dataType) {
			case defines.BOOLEAN:
				return (function(value) {
					len = transformer.booleanValues.isTrue.length;
					for (i = 0; i < len; ++i) {
						if (transformer.booleanValues.isTrue[i].toUpperCase() ==
							value.toUpperCase()) {
							return true;
						}
					}
					return false;
				})(value);
			case defines.INTEGER: return parseInt(value, 10);
			case defines.BIGINTEGER: return parseInt(value, 10);
			case defines.NUMERIC: return Number(value);
			case defines.LAT: return Number(value);
			case defines.LONG: return Number(value);
			case defines.ZIP: return value;
			case defines.TEXT: return value;
			case defines.PRIMARY_INTEGER: return parseInt(value, 10);
			default: return null;
		}
	};

	// What is the output type based on data type
	transformer.type = function(dataType) {
		return dataType;
	};

	// Transform the header based on data type
	transformer.header = function(dataType, header) {
		return header;
	};

	return transformer;
};

// @TODO needs test cases
exports.getPgSqlTransformer = function(options) {
	options = options || {};
	var transformer = getDefaultTransformer(options);

	transformer.nullValue = options.insertStatements ? 'NULL' : '\\N';

	// Transform the output values based on data type
	transformer.output = function(dataType, value) {
		var i, len;

		switch (dataType) {
			case defines.INTEGER: return parseInt(value, 10);
			case defines.BIGINTEGER: return parseInt(value, 10);
			case defines.PRIMARY_INTEGER: return parseInt(value, 10);
			case defines.BOOLEAN:
				return (function(value) {
					len = transformer.booleanValues.isTrue.length;
					for (i = 0; i < len; ++i) {
						if (transformer.booleanValues.isTrue[i].toUpperCase() ==
							value.toUpperCase()) {
							return 1;
						}
					}
					return 0;
				})(value);
			default: return value;
		}
	};

	// What is the output type based on data type
	transformer.type = function(dataType) {
		switch (dataType) {
			case defines.BOOLEAN: return 'boolean';
			case defines.INTEGER: return 'integer';
			case defines.BIGINTEGER: return 'bigint';
			case defines.NUMERIC: return 'numeric';
			case defines.LAT: return 'numeric';
			case defines.LONG: return 'numeric';
			case defines.ZIP: return 'text';
			case defines.TEXT: return 'text';
			case defines.PRIMARY_INTEGER: return 'integer';
			default: return 'text';
		}
	};

	// Transform the header based on data type
	transformer.header = function(dataType, header) {
		if (!options.maintainHeaders) {
			switch (dataType) {
				case defines.LAT: return 'lat';
				case defines.LONG: return 'lng';
				case defines.ZIP: return 'zip';
			}
		}
		return helper.normalizeHeader(header);
	};

	return transformer;
};
