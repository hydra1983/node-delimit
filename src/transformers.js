var defines = require('./defines.js');

exports.removeIndexes = function(indexes, arr) {
    var arrObj = {};
    var i, len;
    for(i = 0, len = arr.length; i < len; ++i) { arrObj[i] = arr[i]; }
    for(i = 0, len = indexes.length; i < len; ++i) {
        delete arrObj[indexes[i]];
    }
    var ret = [];
    for(i = 0, len = arr.length; i < len; ++i) {
        if(typeof arrObj[i] !== 'undefined') {
            ret.push(arrObj[i]);
        }
    }
    return ret;
};

exports.normalizeString = function(string) {
    string = "" + string; // turn into a string
    // Remove surrounding spaces
    string = string.trim();
    // Replace % with "percent"
    string = string.replace(/%/g, "percent");
    // Replace all spaces with underscores
    string = string.replace(/ /g, "_");
    // Remove unwanted characters
    string = string.replace(/[^A-Za-z0-9_]/g, "");
    return string;
};

exports.normalizeHeader = function(header) {
    var normalized = exports.normalizeString(header);

    // look for headers starting with a number
    if(normalized.match(/^\d/)) {
        normalized = "column_" + normalized;
    }

    return normalized;
};

// @TODO needs test cases
exports.getDataSetTransformer = function(booleanValues) {
    var transformer = {};

    // What represents NULL?
    transformer.nullValue = null;

    // What is considered an empty value?
    transformer.emptyValues = [
        '',
        'nan',
        '#REF!:emptyRange' // Google Docs
    ];


    // What represents true and false?
    if(typeof booleanValues === 'undefined') {
        transformer.booleanValues = {
            isTrue: ['1','TRUE','T','YES','Y'],
            isFalse: ['0','FALSE','F','NO','N']
        };
    } else {
        transformer.booleanValues = booleanValues;
    }

    // Transform the output values based on data type
    transformer.output = function(dataType, value) {
        var i, len;

        switch(dataType) {
            case defines.BOOLEAN:
                return (function(value) {
                    len = transformer.booleanValues.isTrue.length;
                    for(i = 0; i < len; ++i) {
                        if(transformer.booleanValues.isTrue[i].toUpperCase() ==
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
exports.getPgSqlTransformer = function() {
    var transformer = {};

    // What represents NULL?
    transformer.nullValue = "\\N";

    // What is considered an empty value?
    transformer.emptyValues = [
        '',
        'nan',
        '#REF!:emptyRange' // Google Docs
    ];

    // What represents true and false?
    if(typeof booleanValues === 'undefined') {
        transformer.booleanValues = {
            isTrue: ['1','TRUE','T','YES','Y'],
            isFalse: ['0','FALSE','F','NO','N']
        };
    } else {
        transformer.booleanValues = booleanValues;
    }

    // Transform the output values based on data type
    transformer.output = function(dataType, value) {
        switch(dataType) {
            case defines.INTEGER: return parseInt(value, 10);
            case defines.BIGINTEGER: return parseInt(value, 10);
            case defines.PRIMARY_INTEGER: return parseInt(value, 10);
            default: return value;
        }
    };

    // What is the output type based on data type
    transformer.type = function(dataType) {
        switch(dataType) {
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
        switch(dataType) {
            case defines.LAT: return 'lat';
            case defines.LONG: return 'lng';
            case defines.ZIP: return 'zip';
            default: return exports.normalizeHeader(header);
        }
    };


    return transformer;
};