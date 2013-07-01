// @TODO needs test cases

var defines = require('./defines.js');

exports.getDataSetTransformer = function(booleanValues) {
    var transformer = {};

    // What represents NULL?
    transformer.nullValue = null;

    // What represents true and false?
    if(typeof booleanValues === 'undefined') {
        transformer.booleanValues = {
            isTrue: '1,true,TRUE,t,T,yes,YES,y,Y',
            isFalse: '0,false,FALSE,f,F,no,NO,n,N'
        };
    } else {
        transformer.booleanValues = booleanValues;
    }

    // Transform the output values based on data type
    transformer.output = function(dataType, value) {
        switch(dataType) {
            case defines.BOOLEAN: return (transformer.booleanValues.isTrue.indexOf(value) !== -1);
            case defines.INTEGER: return Number(value);
            case defines.NUMERIC: return Number(value);
            case defines.TEXT: return value;
            default: return null;
        }
    };

    // What is the output type based on data type?
    transformer.type = function(dataType) {
        return dataType;
    };

    return transformer;
};


exports.getPgSqlTransformer = function() {
    var transformer = {};

    // What represents NULL?
    transformer.nullValue = "\\N";

    // What represents true and false?
    if(typeof booleanValues === 'undefined') {
        transformer.booleanValues = {
            isTrue: '1,true,TRUE,t,T,yes,YES,y,Y',
            isFalse: '0,false,FALSE,f,F,no,NO,n,N'
        };
    } else {
        transformer.booleanValues = booleanValues;
    }

    // Transform the output values based on data type
    transformer.output = function(dataType, value) {
        return value;
    };

    // What is the output type based on data type?
    transformer.type = function(dataType) {
        switch(dataType) {
            case defines.BOOLEAN: return 'boolean';
            case defines.INTEGER: return 'integer';
            case defines.BIGINTEGER: return 'bigint';
            case defines.NUMERIC: return 'numeric';
            case defines.TEXT: return 'text';
            default: return 'text';
        }
    };

    return transformer;
};