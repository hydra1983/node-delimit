var DataSet = require('../../DataSet.js'),
	defines = require('../../defines.js'),
	pgsql = require('../../pgsql.js'),
	fs = require('fs'),
	async = require('async');

var util = require('util');

exports.readJson = function(jsonFile, callback) {
	fs.readFile(jsonFile, { encoding: 'utf8' }, function(err, jsonString) {

		if(err) { throw err; }

		var jsonObj;
		try {
			jsonObj = JSON.parse(jsonString);
		} catch(e) {
			throw e;
		}
		callback(jsonObj);
	});
}

exports.jsonToDataSet = function(jsonObj, options)  {

	var i, j, len, jlen;

	var dataset = new DataSet();

	// name
	dataset.setName(jsonObj.name);

	// headers
	dataset.setHeaders(jsonObj.headers);

	// data types
	var newDataTypes = [];
	for(i = 0, len = jsonObj.dataTypes.length; i < len; ++i) {
		newDataTypes.push(defines.getDefine(jsonObj.dataTypes[i]));
	}
	dataset.setDataTypes(newDataTypes);

	// data
	dataset.setData(jsonObj.data);

	return dataset;
};

exports.jsonToDataSets = function(jsonObj, options) {
	var ret = [];
	if(typeof jsonObj == 'object' && jsonObj instanceof Array) {
		for(var i = 0, len = jsonObj.length; i < len; ++i) {
			ret.push(exports.jsonToDataSet(jsonObj[i], options));
		}
	}
	return ret;
};

exports.jsonToPgSql = function(jsonObj, writeStream, options, callback) {
	var datasets = [];
	if(typeof jsonObj === 'object' && jsonObj instanceof Array) {
		datasets = exports.jsonToDataSets(jsonObj, options);
	} else if (typeof jsonObj === 'object') {
		datasets.push(exports.jsonToDataSet(jsonObj, options));
	} else {
		throw new Error('The dataset provided is not a valid object');
	}

	var i, len, j, jlen,
	    dataset, name, headers, dataTypes, data, dataRow;

	for(i = 0, len = datasets.length; i < len; ++i) {
		dataset = datasets[i];
		name = options.name || dataset.getName();
		headers = dataset.getHeaders();
		dataTypes = dataset.getDataTypes();
		data = dataset.getData();

		writeStream.write(pgsql.getHeaderSql(name));

		if(!options.dataOnly) {
		   writeStream.write(pgsql.getCreateTableSql(name, headers, dataTypes));
		}
		if(!options.createOnly) {
		   writeStream.write(pgsql.getCopyHeaderSql(name, headers, dataTypes));
		}

		for(j = 0, jlen = data.length; j < jlen; ++j) {
			dataRow = data[i]
			writeStream.write(pgsql.getCopyDataRowSql(dataRow));
		}

		writeStream.write(pgsql.getFooterSql(name));
	}

	// Write nothing to the write stream so we can only call the callback
	// once the buffer is empty...
	writeStream.write('', undefined, function successfullyWrittenCb() {
		if(typeof callback === 'function') {
			callback();
		}
	});
};