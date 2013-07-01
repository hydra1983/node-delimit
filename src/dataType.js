var transformers = require('./transformers.js');
var defines = require('./defines.js');

//-----

exports.isStringInteger = function(string, kickLeadingZeros) {
    var isInt = string.match(/^\d+$/) ? true : false;

    if(isInt && kickLeadingZeros && string.match(/^0/)) {
        return false;
    }

    return isInt;
};

exports.isStringNumeric = function(string) {
    return string.match(/\d*\.\d+/) ? true : false;
};

exports.isStringNumber = function(string) {
    return exports.isStringInteger(string) ||
           exports.isStringNumeric(string);
};

exports.isStringBoolean = function(transformer, string) {
    var booleanTypes =
        transformer.booleanValues.isTrue + transformer.booleanValues.isFalse;

    return (booleanTypes.indexOf(string) !== -1);
};

exports.isStringEmpty = function(string) {
    string = string.replace(/\s/g, '');
    return string === '';
};

exports.getNewDataType = function(transformer, oldDataType, newString) {

    var isEmpty = exports.isStringEmpty(newString);

    // Boolean
    //
    // Can convert to Integer or Text if not a Boolean
    if(oldDataType == defines.BOOLEAN) {
        if(!isEmpty && !exports.isStringBoolean(transformer, newString)) {
            if(exports.isStringInteger(newString)) {
                return defines.INTEGER;
            } else {
                return defines.TEXT;
            }
        }
        return oldDataType;
    }

    // Integer
    //
    // Can convert to Numeric or Text if not an Integer
    if(oldDataType == defines.INTEGER) {
        if(!isEmpty && !exports.isStringInteger(newString)) {
            if(exports.isStringNumeric(newString)) {
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
    if(oldDataType == defines.NUMERIC) {
        if(!isEmpty && !exports.isStringNumber(newString)) {
            return defines.TEXT;
        }
        return oldDataType;
    }

    // Text
    //
    // Can't convert to anything else but itself!
    if(oldDataType == defines.TEXT) {
        return oldDataType;
    }

    // If we get down here, oldDataType was undefined or unknown
    //
    // Order of preference: Unknown, Boolean, Integer, Numeric, Default to Text

    if(isEmpty) {
        return defines.UNKNOWN;
    }
    if(exports.isStringBoolean(transformer, newString)) {
        return defines.BOOLEAN;
    }
    if(exports.isStringInteger(newString)) {
        return defines.INTEGER;
    }
    if(exports.isStringNumeric(newString)) {
        return defines.NUMERIC;
    }

    return defines.TEXT;
};

exports.getNewDataTypes = function(transformer, oldDataTypes, newStrings) {
    var string;
    var newDataTypes = [];
    for(var i = 0, len = newStrings.length; i < len; ++i) {
        string = newStrings[i];
        newDataTypes[i] = exports.getNewDataType(transformer, oldDataTypes[i], string);
    }
    return newDataTypes;
};

exports.getAdjustedDataRow = function(transformer, dataTypes, dataRow) {

    var newDataRow = [];

    var value, type;
    for(var i = 0, len = dataRow.length; i < len; ++i) {
        value = dataRow[i];
        type = dataTypes[i];

        if(exports.isStringEmpty(value)) {
            newDataRow.push(transformer.nullValue);
        } else {
            newDataRow.push(transformer.output(type, value));
        }
    }

    return newDataRow;
};