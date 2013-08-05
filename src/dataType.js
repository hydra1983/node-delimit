var transformers = require('./transformers.js');
var defines = require('./defines.js');

//-----

exports.isStringEmpty = function(transformer, string) {
    // remove surrounding white space, keep spaces in between words
    string = string + '';
    string = string.replace(/\n/g, '');
    string = string.replace(/\r/g, '');
    string = string.trim();

    var i, len = transformer.emptyValues.length;
    for(i = 0; i < len; ++i) {
        if(transformer.emptyValues[i].toUpperCase() == string.toUpperCase()) {
            return true;
        }
    }

    return false;
};

exports.isStringBoolean = function(transformer, string) {
    var i, len;

    len = transformer.booleanValues.isTrue.length;
    for(i = 0; i < len; ++i) {
        if(transformer.booleanValues.isTrue[i].toUpperCase() ==
            string.toUpperCase()) {
            return true;
        }
    }

    len = transformer.booleanValues.isFalse.length;
    for(i = 0; i < len; ++i) {
        if(transformer.booleanValues.isFalse[i].toUpperCase() ==
            string.toUpperCase()) {
            return true;
        }
    }

    return false;
};

exports.isStringBigInteger = function(string, kickLeadingZeros) {

    var isInt = string.match(/^-?\d+(?:\.0+)?$/) ? true : false;

    if(isInt && kickLeadingZeros && string.match(/^0/)) {
        return false;
    }

    if(isInt) {
        var parsed = parseInt(string, 10);
        if(parsed < -2147483648 || parsed > 2147483647) {
            return true;
        }
    }

    return false;
};


exports.isStringInteger = function(string, kickLeadingZeros) {
    var isInt = string.match(/^-?\d+(?:\.0+)?$/) ? true : false;

    if(isInt && kickLeadingZeros && string.match(/^0/)) {
        return false;
    }

    if(isInt) {
        var parsed = parseInt(string, 10);
        if(parsed >= -2147483648 && parsed <= 2147483647) {
            return true;
        }
    }

    return false;
};

exports.isStringPrimaryInteger = function(string, oldString) {
    var stringIsInt = exports.isStringInteger(string);

    if(stringIsInt && typeof oldString === 'undefined') {
        return true;
    }

    var oldStringIsInt = exports.isStringInteger(oldString || '');
    if(stringIsInt && oldStringIsInt) {
        return parseInt(string, 10) > parseInt(oldString, 10);
    }

    return false;
};

exports.isStringNumeric = function(string) {
    return string.match(/^-?\d*\.\d+$/) ? true : false;
};

exports.isStringNumber = function(string) {
    return exports.isStringInteger(string) ||
           exports.isStringBigInteger(string) ||
           exports.isStringNumeric(string);
};

exports.isStringZip = function(string) {
    return string.match(/^\d{5}-?(\d{4})?$/) ? true : false;
};

exports.isStringLat = function(string) {
    if(exports.isStringNumeric(string)) {
        var parsed = parseFloat(string);
        if(parsed >= -90 && parsed <= 90) {
            return true;
        }
    }
    return false;
};

exports.isStringLong = function(string) {
    if (exports.isStringNumeric(string)) {
        var parsed = parseFloat(string);
        if (parsed >= -180 && parsed <= 180) {
            return true;
        }
    }
    return false;
};


exports.getNewDataType = function(transformer, oldDataType, newString, oldString) {

    var isEmpty = exports.isStringEmpty(transformer, newString);

    // Primary Integer
    //
    // Can convert to Zip Code, Boolean, Big Integer, Integer, or Text
    if (oldDataType == defines.PRIMARY_INTEGER) {
        if (isEmpty || !exports.isStringPrimaryInteger(newString, oldString)) {
            if (exports.isStringZip(newString)) {
                return defines.ZIP;
            } else if (exports.isStringBoolean(transformer, newString)) {
                return defines.BOOLEAN;
            } else if (exports.isStringBigInteger(newString)) {
                return defines.BIGINTEGER;
            } else if (exports.isStringInteger(newString)) {
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
        if (!isEmpty && !exports.isStringZip(newString)) {
            if (exports.isStringBigInteger(newString)) {
                return defines.BIGINTEGER;
            } else if (exports.isStringInteger(newString)) {
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
        if (!isEmpty && !exports.isStringLat(newString)) {
            if (exports.isStringLong(newString)) {
                return defines.LONG;
            } else if (exports.isStringNumeric(newString)) {
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
        if (!isEmpty && !exports.isStringLong(newString)) {
            if (exports.isStringNumeric(newString)) {
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
            if (exports.isStringBigInteger(newString)) {
                return defines.BIGINTEGER;
            } else if (exports.isStringInteger(newString)) {
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
            !exports.isStringInteger(newString) &&
            !exports.isStringBigInteger(newString))
        {
            if (exports.isStringNumeric(newString)) {
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
        if (!isEmpty && !exports.isStringInteger(newString)) {
            if (exports.isStringBigInteger(newString)) {
                return defines.BIGINTEGER;
            } else if (exports.isStringLat(newString)) {
                return defines.LAT;
            } else if (exports.isStringLong(newString)) {
                return defines.LONG;
            } else if (exports.isStringNumeric(newString)) {
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
        if (!isEmpty && !exports.isStringNumber(newString)) {
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
    if (exports.isStringPrimaryInteger(newString, oldString)) {
        return defines.PRIMARY_INTEGER;
    }
    if (exports.isStringZip(newString)) {
        return defines.ZIP;
    }
    if (exports.isStringBoolean(transformer, newString)) {
        return defines.BOOLEAN;
    }
    if (exports.isStringBigInteger(newString)) {
        return defines.BIGINTEGER;
    }
    if (exports.isStringInteger(newString)) {
        return defines.INTEGER;
    }
    if (exports.isStringLat(newString)) {
        return defines.LAT;
    }
    if (exports.isStringLong(newString)) {
        return defines.LONG;
    }
    if (exports.isStringNumeric(newString)) {
        return defines.NUMERIC;
    }

    return defines.TEXT;
};

exports.getNewDataTypes = function(transformer, oldDataTypes, dataRow, previousDataRow) {
    var i, len, newString, oldString,
        newDataTypes = [],
        latPositions = {}, // Where were latitude coordinates found?
        longPositions = {}; // Where were longitude coordinates found?

    for(i = 0, len = dataRow.length; i < len; ++i) {
        newString = dataRow[i];
        oldString = previousDataRow ? previousDataRow[i] : undefined;
        newDataTypes[i] = exports.getNewDataType(
                transformer, oldDataTypes[i], newString, oldString);

        // record where lat & long positions were found
        if(newDataTypes[i] == defines.LAT) { latPositions[i] = true; }
        if(newDataTypes[i] == defines.LONG) { longPositions[i] = true; }
    }

    // look through the new data types for LAT / LONG. IF they exist and are
    // not next to each other in LAT -> LONG order, change them to NUMERIC
    var pairings = {};
    for(var latPos in latPositions) {
        var pos = parseInt(latPos, 10);
        // if the current latPos is a pairing already, move on
        if(pairings[pos]) { continue; }
        // if next is lat make it a paring (adjust type to LONG)
        if(latPositions[pos+1]) {
            pairings[pos] = true;
            pairings[pos+1] = true;
            newDataTypes[pos+1] = defines.LONG;
            continue;
        }
        if(longPositions[pos+1]) {
            pairings[pos] = true;
            pairings[pos+1] = true;
            continue;
        }
        // default to numeric if no paring was found
        newDataTypes[pos] = defines.NUMERIC;
    }

    // cleanup leftover LONG's that aren't paired
    for(var longPos in longPositions) {
        if(!pairings[longPos]) { newDataTypes[longPos] = defines.NUMERIC; }
    }

    return newDataTypes;
};

exports.getAdjustedDataRow = function(transformer, dataTypes, dataRow) {

    var newDataRow = [];

    var value, type;
    for(var i = 0, len = dataRow.length; i < len; ++i) {
        value = dataRow[i];
        type = dataTypes[i];

        if(!value || exports.isStringEmpty(transformer, value)) {
            newDataRow.push(transformer.nullValue);
        } else {
            newDataRow.push(transformer.output(type, value));
        }
    }

    return newDataRow;
};