var DataType = require('./DataType.js');

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

exports.isStringBoolean = function(string) {
    var booleanTypes =
        DataType.BOOLEAN_VALUES.isTrue.concat(DataType.BOOLEAN_VALUES.isFalse);

    for(var i = 0, len = booleanTypes.length; i < len; ++i) {
        if(string === booleanTypes[i]) {
            return true;
        }
    }

    return false;
};

exports.isStringEmpty = function(string) {
    string = string.replace(/\s/g, '');
    return string === '';
};

exports.getNewDataType = function(oldDataType, newString) {

    var isEmpty = exports.isStringEmpty(newString);

    // Boolean
    //
    // Can convert to Integer or Text if not a Boolean
    if(oldDataType == DataType.BOOLEAN) {
        if(!isEmpty && !exports.isStringBoolean(newString)) {
            if(exports.isStringInteger(newString)) {
                return DataType.INTEGER;
            } else {
                return DataType.TEXT;
            }
        }
        return oldDataType;
    }

    // Integer
    //
    // Can convert to Numeric or Text if not an Integer
    if(oldDataType == DataType.INTEGER) {
        if(!isEmpty && !exports.isStringInteger(newString)) {
            if(exports.isStringNumeric(newString)) {
                return DataType.NUMERIC;
            } else {
                return DataType.TEXT;
            }
        }
        return oldDataType;
    }

    // Numeric
    //
    // Can only convert to Text if it is not a number
    if(oldDataType == DataType.NUMERIC) {
        if(!isEmpty && !exports.isStringNumber(newString)) {
            return DataType.TEXT;
        }
        return oldDataType;
    }

    // Text
    //
    // Can't convert to anything else but itself!
    if(oldDataType == DataType.TEXT) {
        return oldDataType;
    }

    // If we get down here, oldDataType was undefined or unknown
    //
    // Order of preference: Unknown, Boolean, Integer, Numeric, Default to Text

    if(isEmpty) {
        return DataType.UNKNOWN;
    }
    if(exports.isStringBoolean(newString)) {
        return DataType.BOOLEAN;
    }
    if(exports.isStringInteger(newString)) {
        return DataType.INTEGER;
    }
    if(exports.isStringNumeric(newString)) {
        return DataType.NUMERIC;
    }

    return DataType.TEXT;
};

exports.getNewDataTypes = function(oldDataTypes, newStrings) {
    var string;
    var newDataTypes = [];
    for(var i = 0, len = newStrings.length; i < len; ++i) {
        string = newStrings[i];
        newDataTypes[i] = exports.getNewDataType(oldDataTypes[i], string);
    }
    return newDataTypes;
};