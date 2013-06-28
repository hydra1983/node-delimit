// @TODO allow for values to be changed
function DataType() {}

DataType.UNKNOWN = -1;
DataType.BOOLEAN = 0;
DataType.INTEGER = 1;
DataType.TEXT    = 3;
DataType.NUMERIC = 2;

DataType.BOOLEAN_VALUES = {
    isTrue: [ '1', 'true', 'TRUE', 't', 'T', 'yes', 'YES', 'y', 'Y' ],
    isFalse: [ '0', 'false', 'FALSE', 'f', 'F', 'no', 'NO', 'n', 'N' ]
};

// Setup PGSQL data type conversions
DataType.PGSQL = {};
DataType.PGSQL.NULL = '\\N';
DataType.PGSQL[DataType.UNKNOWN] = 'text';
DataType.PGSQL[DataType.BOOLEAN] = 'boolean';
DataType.PGSQL[DataType.INTEGER] = 'integer';
DataType.PGSQL[DataType.TEXT]    = 'text';
DataType.PGSQL[DataType.NUMERIC] = 'numeric';

module.exports = DataType;