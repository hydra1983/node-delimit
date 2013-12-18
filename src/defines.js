"use strict";

exports.UNKNOWN    = -1;
exports.BOOLEAN    = 0;
exports.INTEGER    = 1;
exports.BIGINTEGER = 2;
exports.TEXT       = 3;
exports.NUMERIC    = 4;
exports.ZIP        = 5;
exports.LAT        = 6;
exports.LONG       = 7;
exports.PRIMARY_INTEGER = 8;

exports.getDefine = function(thing) {

	if (!isNaN(thing)) {
		return thing;
	}

	switch ((thing + '').toUpperCase()) {
		case 'UNKNOWN': return exports.UNKNOWN;
		case 'BOOLEAN': return exports.BOOLEAN;
		case 'INTEGER': return exports.INTEGER;
		case 'BIGINTEGER': return exports.BIGINTEGER;
		case 'TEXT': return exports.TEXT;
		case 'NUMERIC': return exports.NUMERIC;
		case 'ZIP': return exports.ZIP;
		case 'LAT': return exports.LAT;
		case 'LONG': return exports.LONG;
		case 'PRIMARY_INTEGER': return exports.PRIMARY_INTEGER;
	}

	return exports.UNKNOWN;
};
