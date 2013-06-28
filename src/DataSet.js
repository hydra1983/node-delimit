
function validateHeaders(headers) {
    if(typeof headers !== 'undefined' && !(headers instanceof Array)) {
        throw new Error('headers should be an instance of an array');
    }
}

function validateDataTypes(dataTypes) {
    if(typeof dataTypes !== 'undefined' && !(dataTypes instanceof Array)) {
        throw new Error('dataTypes should be an instance of an array');
    }
}

function validateData(data) {
    if(typeof data !== 'undefined' && !(data instanceof Array)) {
        throw new Error('data should be an instance of an array');
    }

    if(typeof data !== 'undefined') {
        if(data.length > 0) {
            if(typeof data[0] === 'undefined' || !(data[0] instanceof Array)) {
                throw new Error('data should be an array of arrays');
            }
        }
    }
}

function validateDataSetParameters(headers, dataTypes, data, primaryColumn) {
    if(typeof headers === 'undefined' &&
        typeof dataTypes === 'undefined' &&
        typeof data === 'undefined') {
        return;
    }
    validateHeaders(headers);
    validateDataTypes(dataTypes);
    validateData(data);
}

function getDataRange(headers, dataTypes, data) {
    var headerRange = -1,
        dataTypesRange = -1,
        dataRange = -1;

    if(typeof headers !== 'undefined') {
        headerRange = headers.length;
    }
    if(typeof dataTypes !== 'undefined') {
        dataTypesRange = dataTypes.length;
    }
    if(typeof data !== 'undefined') {
        if(data.length > 0) {
            dataRange = data[0].length;
        }
    }

    var compareRanges = function(rangeOne, rangeTwo) {
        if(rangeOne !== -1 && rangeTwo !== -1) {
            if(rangeOne !== rangeTwo) {
                throw new Error('The data provided has mis-matched ranges');
            }
        }
    };

    compareRanges(headerRange, dataTypesRange);
    compareRanges(headerRange, dataRange);
    compareRanges(dataTypesRange, dataRange);

    if (headerRange !== -1) return headerRange;
    if (dataTypesRange !== -1) return dataTypesRange;
    if (dataRange !== -1) return dataRange;
    return -1;
}

function DataSet(headers, dataTypes, data, primaryColumn, name) {

    //{{{-- INIT

    validateDataSetParameters(headers, dataTypes, data, primaryColumn);

    this._headers = headers;
    this._dataTypes = dataTypes;
    this._data = data;
    this._primaryColumn = primaryColumn;
    this._name = name;

    this._dataRange = getDataRange(this._headers,
                                   this._dataTypes,
                                   this._data);
    //---}}}

    this.testColumnByIndex = function(columnIndex, callback, match_precision) {

        if(typeof callback !== 'function') {
            throw new Error('This function requires a callback function to operate on items in a column and return true or false accordingly');
        }

        if(match_precision && (match_precision > 1 || match_precision < 0)) {
            throw new Error('Match precision is not within allowed range of 0-1');
        }

        var row, item, total=0, totalMiss=0;
        for(var index in this._data) {
            row = this._data[index];
            item = row[columnIndex];
            if(!callback(item)) {
                if(!match_precision) {
                    return false;
                }
                ++totalMiss;
            }
            ++total;
        }

        if(match_precision) {
            return (totalMiss / total) <= match_precision;
        }

        return true;
    };

    this.getColumnByIndex = function(columnIndex) {
        var row, column = [];
        for(var index in this._data) {
            row = this._data[index];
            column.push(row[columnIndex]);
        }
        return column;
    };

    this.getColumnByName = function(columnName) {
        return this.getColumnByIndex(this._headers.indexOf(columnName));
    };

    // "Kinda" Setter methods, e.g. they modify the variables
    this.setSingleHeader = function(columnIndex, headerName) {
        if(typeof this._headers === 'undefined') {
            throw new Error('Headers are not defined yet! Unable to modify');
        }
        if(columnIndex < 0 || columnIndex >= this._dataRange) {
            throw new Error('Can not change header, column index out of range');
        }

        this._headers[columnIndex] = ('' + headerName);
    };

    this.setSingleDataType = function(columnIndex, dataType) {
        if(typeof this._dataTypes === 'undefined') {
            throw new Error('DataTypes are not defined yet! Unable to modify');
        }
        if(columnIndex < 0 || columnIndex >= this._dataRange) {
            throw new Error('Can not change data type, column index out of range');
        }

        this._dataTypes[columnIndex] = dataType;
    };

    this.addDataRow = function(dataRow) {
        if(typeof dataRow === 'undefined' || !(dataRow instanceof Array)) {
            throw new Error('dataRow is undefined or is not an array');
        }
        if(dataRow.length <= 0) {
            throw new Error('You must provide at least one element');
        }
        if(this._dataRange === -1) {
            this._data = [];
            this._data.push(dataRow);
            this._dataRange = getDataRange(this._headers,
                                           this._dataTypes,
                                           this._data);
        }
        else if(dataRow.length === this._dataRange) {
            this._data.push(dataRow);
        }
        else {
            throw new Error('Can not add this data row - width does not match the data range');
        }
    };

    // "Pure" Setter methods, e.g. Change the entire variable
    this.setPrimaryColumn = function(primaryColumn) {
        if(primaryColumn < 0 || primaryColumn >= this._dataRange) {
            throw new Error('Invalid primary column. It falls outside of the dataset range');
        }
        this._primaryColumn = primaryColumn;
    };

    this.setHeaders = function(headers) {
        validateHeaders(headers);

        if(this._dataRange === -1) {
            this._headers = headers;
            this._dataRange = getDataRange(this._headers,
                                           this._dataTypes,
                                           this._data);
            return;
        }

        if(headers.length !== this._dataRange) {
            throw new Error('Invalid header length. It does not match the data range');
        }

        this._headers = headers;
    };

    this.setDataTypes = function(dataTypes) {

        validateDataTypes(dataTypes);

        if(this._dataRange === -1) {
            this._dataTypes = dataTypes;
            this._dataRange = getDataRange(this._headers,
                                           this._dataTypes,
                                           this._data);
            return;
        }

        if(dataTypes.length !== this._dataRange) {
            throw new Error('Invalid dataTypes length. It does not match the data range');
        }

        this._dataTypes = dataTypes;
    };

    this.setData = function(data) {
        validateData(data);

        if(this._dataRange === -1) {
            this._data = data;
            this._dataRange = getDataRange(this._headers,
                                           this._dataTypes,
                                           this._data);
            return;
        }

        if(typeof data !== 'undefined') {
            if(data.length > 0) {
                if(data[0].length !== this._dataRange) {
                    throw new Error('Invalid data width. It does not match the data range');
                }
            }
        } else {
            if(this._dataRange !== -1) {
                throw new Error('Invalid data width. It does not match the data range');
            }
        }

        this._data = data;
    };

    // Getter Methods
    this.getHeaders = function() { return this._headers; };
    this.getDataTypes = function() { return this._dataTypes; };
    this.getSqlTypes = function() { return this._sqlTypes; };
    this.getData = function() { return this._data; };
    this.getPrimaryColumn = function() { return this._primaryColumn; };
    this.getIdentifier = function() { return this._identifier; };
    this.getDataRange = function() {return this._dataRange; };
}

module.exports = DataSet;