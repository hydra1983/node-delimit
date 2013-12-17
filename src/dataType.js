"use strict";

var transformers = require('./transformers.js')
, defines = require('./defines.js');

//-----

exports.isStringEmpty = function(transformer, string) {
	// remove surrounding white space, keep spaces in between words
	string = string + '';
	string = string.replace(/\n/g, '');
	string = string.replace(/\r/g, '');
	string = string.trim();

	return transformer.emptyValues.some(function(value) {
		return value.toUpperCase() === string.toUpperCase();
	});
};

exports.isStringBoolean = function(transformer, string, oldString) {
	if(transformer.ignoreType(defines.BOOLEAN)) { return false; }

	// We will AND this at the end to determine validity
	var oldStringBoolean = (typeof oldString === 'string')
		? exports.isStringBoolean(transformer, oldString)
		: true;

	var i, len, stringBoolean = false;

	stringBoolean = transformer.booleanValues.isTrue.some(function(item) {
		return item.toUpperCase() === string.toUpperCase();
	}) || transformer.booleanValues.isFalse.some(function(item) {
		return item.toUpperCase() === string.toUpperCase();
	});

	return stringBoolean && oldStringBoolean;
};

exports.isStringBigInteger = function(transformer, string, kickLeadingZeros) {
	if(transformer.ignoreType(defines.BIGINTEGER)) { return false; }

	try { var parsed = '' + parseFloat(string); } catch (e) { return false; }

	var isInt = parsed.match(/^-?\d+(?:\.0+)?$/) ? true : false;

	if (isInt && kickLeadingZeros && string.match(/^0/)) {
		return false;
	}

	if (isInt) {
		var parsedInt = parseInt(parsed, 10);
		if (parsedInt < -2147483648 || parsedInt > 2147483647) {
			return true;
		}
	}

	return false;
};


exports.isStringInteger = function(transformer, string, kickLeadingZeros) {
	if(transformer.ignoreType(defines.INTEGER)) { return false; }

	// apparently, 2010-10-10-20-30 is valid when parsing... handle this
	// edge case. Any string with two "-"'s is invalid
	if (string.match(/.*-.*-/)) { return false; }

	try { var parsed = '' + parseFloat(string); } catch (e) { return false; }

	var isInt = parsed.match(/^-?\d+(?:\.0+)?$/) ? true : false;

	if (isInt && kickLeadingZeros && string.match(/^0/)) {
		return false;
	}

	if (isInt) {
		var parsedInt = parseInt(parsed, 10);
		if(parsedInt >= -2147483648 && parsedInt <= 2147483647) {
			return true;
		}
	}

	return false;
};

exports.isStringPrimaryInteger = function(transformer, string, oldString) {
	if(transformer.ignoreType(defines.PRIMARY_INTEGER)) { return false; }

	var stringIsInt = exports.isStringInteger(transformer, string);

	if (stringIsInt && typeof oldString === 'undefined') {
		return true;
	}

	var oldStringIsInt = exports.isStringInteger(transformer, oldString || '');
	if (stringIsInt && oldStringIsInt) {
		try {
			var isGreater = parseInt(string, 10) > parseInt(oldString, 10);
		} catch (e) {}
		return isGreater || false;
	}

	return false;
};

exports.isStringNumeric = function(transformer, string) {
	if(transformer.ignoreType(defines.NUMERIC)) { return false; }

	try { var parsed = '' + parseFloat(string); } catch (e) { return false; }

	// If the string has a SINGLE decimal place in it && parsed is a numeric
	return string.split('.').length == 2 &&
		   parsed.match(/^-?\d*\.?\d+$/) ? true : false;
};

exports.isStringNumber = function(transformer, string) {
	return exports.isStringInteger(transformer, string) ||
		   exports.isStringBigInteger(transformer, string) ||
		   exports.isStringNumeric(transformer, string);
};

exports.isStringZip = function(transformer, string) {
	if (transformer.ignoreType(defines.ZIP)) { return false; }

	return string.match(/^\d{5}-?(\d{4})?$/) ? true : false;
};

function inLatRange(number) {
	if (typeof number === 'string') { number = parseFloat(number); }
	return number >= -90 && number <= 90;
}

exports.isStringLat = function(transformer, string) {
	if (transformer.ignoreType(defines.LAT)) { return false; }

	if (exports.isStringNumeric(transformer, string)) {
		var parsed = parseFloat(string);
		if (inLatRange(parsed)) {
			return true;
		}
	}
	return false;
};

function inLongRange(number) {
	if (typeof number === 'string') { number = parseFloat(number); }
	return number >= -180 && number <= 180
}

exports.isStringLong = function(transformer, string) {
	if(transformer.ignoreType(defines.LONG)) { return false; }

	if (exports.isStringNumeric(transformer, string)) {
		return inLongRange(parseFloat(string));
	}

	return false;
};


exports.getNewDataType = function(transformer, oldDataType, newString, oldString) {

	var isEmpty = exports.isStringEmpty(transformer, newString);

	// Primary Integer
	//
	// Can convert to Zip Code, Boolean, Big Integer, Integer, or Text
	if (oldDataType == defines.PRIMARY_INTEGER) {
		if (isEmpty || !exports.isStringPrimaryInteger(transformer, newString, oldString)) {
			if (exports.isStringZip(transformer, newString)) {
				return defines.ZIP;
			} else if (exports.isStringBoolean(transformer, newString, oldString)) {
				return defines.BOOLEAN;
			} else if (exports.isStringBigInteger(transformer, newString)) {
				return defines.BIGINTEGER;
			} else if (exports.isStringInteger(transformer, newString)) {
				return defines.INTEGER;
			} else {
				return defines.TEXT;
			}
		}
		return oldDataType;
	}

	// Zip Code
	//
	// Can convert to Big Integer, Integer or Text if not a zip code
	if (oldDataType == defines.ZIP) {
		if (!isEmpty && !exports.isStringZip(transformer, newString)) {
			if (exports.isStringBigInteger(transformer, newString)) {
				return defines.BIGINTEGER;
			} else if (exports.isStringInteger(transformer, newString)) {
				return defines.INTEGER;
			} else {
				return defines.TEXT;
			}
		}
		return oldDataType;
	}

	// Lat
	//
	// Can convert to Long, Numeric or Text if not a latitude coordinate
	if (oldDataType == defines.LAT) {
		if (!isEmpty && !exports.isStringLat(transformer, newString)) {
			if (inLatRange(newString)) {
				return oldDataType;
			} else if (exports.isStringLong(transformer, newString)) {
				return defines.LONG;
			} else if (exports.isStringNumeric(transformer, newString)) {
				return defines.NUMERIC;
			} else {
				return defines.TEXT;
			}
		}
		return oldDataType;
	}

	// Longitude
	//
	// Can convert to Numeric or Text if not a longitude coordinate
	if (oldDataType == defines.LONG) {
		if (!isEmpty && !exports.isStringLong(transformer, newString)) {
			if (inLongRange(newString)) {
				return oldDataType;
			} else if (exports.isStringNumeric(transformer, newString)) {
				return defines.NUMERIC;
			} else {
				return defines.TEXT;
			}
		}
		return oldDataType;
	}

	// Boolean
	//
	// Can convert to Big Integer, Integer or Text if not a Boolean
	if (oldDataType == defines.BOOLEAN) {
		if (!isEmpty && !exports.isStringBoolean(transformer, newString)) {
			if (exports.isStringBigInteger(transformer, newString)) {
				return defines.BIGINTEGER;
			} else if (exports.isStringInteger(transformer, newString)) {
				return defines.INTEGER;
			} else {
				return defines.TEXT;
			}
		}
		return oldDataType;
	}

	// Big Integer
	//
	// Can convert to Numeric or Text if not a Big Integer
	if (oldDataType == defines.BIGINTEGER) {
		if (!isEmpty &&
			!exports.isStringInteger(transformer, newString) &&
			!exports.isStringBigInteger(transformer, newString))
		{
			if (exports.isStringNumeric(transformer, newString)) {
				return defines.NUMERIC;
			} else {
				return defines.TEXT;
			}
		}
		return oldDataType;
	}

	// Integer
	//
	// Can convert to Big Integer, Lat, Long, Numeric or Text if not an Integer
	if (oldDataType == defines.INTEGER) {
		if (!isEmpty && !exports.isStringInteger(transformer, newString)) {
			if (exports.isStringBigInteger(transformer, newString)) {
				return defines.BIGINTEGER;
			} else if (exports.isStringLat(transformer, newString)) {
				return defines.LAT;
			} else if (exports.isStringLong(transformer, newString)) {
				return defines.LONG;
			} else if (exports.isStringNumeric(transformer, newString)) {
				return defines.NUMERIC;
			} else {
				return defines.TEXT;
			}
		}
		return oldDataType;
	}

	// Numeric
	//
	// Can only convert to Text if it is not a number
	if (oldDataType == defines.NUMERIC) {
		if (!isEmpty && !exports.isStringNumber(transformer, newString)) {
			return defines.TEXT;
		}
		return oldDataType;
	}

	// Text
	//
	// Can't convert to anything else but itself!
	if (oldDataType == defines.TEXT) {
		return oldDataType;
	}

	// If we get down here, oldDataType was undefined or unknown
	//
	// Order of preference:
	//     Unknown, Primary Integer, Zip, Boolean, Big Integer,
	//     Integer, Lat, Long, Numeric, Text
	//
	if (isEmpty) {
		return defines.UNKNOWN;
	}
	if (exports.isStringPrimaryInteger(transformer, newString, oldString)) {
		return defines.PRIMARY_INTEGER;
	}
	if (exports.isStringZip(transformer, newString)) {
		return defines.ZIP;
	}
	if (exports.isStringBoolean(transformer, newString)) {
		return defines.BOOLEAN;
	}
	if (exports.isStringBigInteger(transformer, newString)) {
		return defines.BIGINTEGER;
	}
	if (exports.isStringInteger(transformer, newString)) {
		return defines.INTEGER;
	}
	if (exports.isStringLat(transformer, newString)) {
		return defines.LAT;
	}
	if (exports.isStringLong(transformer, newString)) {
		return defines.LONG;
	}
	if (exports.isStringNumeric(transformer, newString)) {
		return defines.NUMERIC;
	}

	return defines.TEXT;
};

exports.getNewDataTypes = function(transformer, oldDataTypes, dataRow, previousDataRow) {
	var i, len, newString, oldString
	, newDataTypes = []
	, latPositions = {} // Where were latitude coordinates found?
	, longPositions = {}; // Where were longitude coordinates found?

	for (i = 0, len = dataRow.length; i < len; ++i) {
		newString = dataRow[i];
		oldString = previousDataRow ? previousDataRow[i] : undefined;
		newDataTypes[i] = exports.getNewDataType(
				transformer, oldDataTypes[i], newString, oldString);

		// record where lat & long positions were found
		if (newDataTypes[i] == defines.LAT) { latPositions[i] = true; }
		if (newDataTypes[i] == defines.LONG) { longPositions[i] = true; }
	}

	// look through the new data types for LAT / LONG. IF they exist and are
	// not next to each other in LAT -> LONG order, change them to NUMERIC
	var pairings = {};
	for (var latPos in latPositions) {
		var pos = parseInt(latPos, 10);
		// if the current latPos is a pairing already, move on
		if (pairings[pos]) { continue; }
		// if next is lat make it a paring (adjust type to LONG)
		if (latPositions[pos+1]) {
			pairings[pos] = true;
			pairings[pos+1] = true;
			newDataTypes[pos+1] = defines.LONG;
			continue;
		}
		if (longPositions[pos+1]) {
			pairings[pos] = true;
			pairings[pos+1] = true;
			continue;
		}
		// default to numeric if no paring was found
		newDataTypes[pos] = defines.NUMERIC;
	}

	// cleanup leftover LONG's that aren't paired
	for (var longPos in longPositions) {
		if (!pairings[longPos]) { newDataTypes[longPos] = defines.NUMERIC; }
	}

	return newDataTypes;
};

exports.getAdjustedDataRow = function(transformer, dataTypes, dataRow) {
	return dataRow.map(function(dataItem, dataIndex) {
		if (!dataItem || exports.isStringEmpty(transformer, dataItem)) {
			return transformer.nullValue;
		}
		return transformer.output(dataTypes[dataIndex], dataItem);
	});
};
