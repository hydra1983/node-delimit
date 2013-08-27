var DataSet = require('../../DataSet.js'),
	defines = require('../../defines.js'),
	pgsql = require('../../pgsql.js'),
	transformers = require('../../transformers.js'),
	fs = require('fs'),
	async = require('async'),
	dataType = require('../../dataType.js');

var util = require('util');

exports.readJson = function(jsonFile, callback) {
	fs.readFile(jsonFile, { encoding: 'utf8' }, function(err, jsonString) {
		if(err) { throw err; }

		var parsedJson;

		try {
			parsedJson = JSON.parse(jsonString);
		} catch(e) {
			throw e;
		}
		callback(parsedJson);
	});
}

exports.jsonToDataSet = function(parsedJson, options)  {

	var i, j, len, jlen;

	var dataset = new DataSet();

	// name
	dataset.setName(parsedJson.name);

	// headers
	dataset.setHeaders(parsedJson.headers);

	// data types
	var newDataTypes = [];
	for(i = 0, len = parsedJson.dataTypes.length; i < len; ++i) {
		newDataTypes.push(defines.getDefine(parsedJson.dataTypes[i]));
	}
	dataset.setDataTypes(newDataTypes);

	// data
	dataset.setData(parsedJson.data);

	return dataset;
};

exports.jsonToDataSets = function(parsedJson, options) {
	var ret = [];
	if(typeof parsedJson == 'object' && parsedJson instanceof Array) {
		for(var i = 0, len = parsedJson.length; i < len; ++i) {
			ret.push(exports.jsonToDataSet(parsedJson[i], options));
		}
	}
	return ret;
};

// processes a single dataset and writes pgsql to the given stream
exports.processSingleDataset = function(dataset, transformer, writeStream, options, callback) {

	var name = options.prependString + dataset.getName() + options.appendString;
	var headers = dataset.getHeaders();
	var dataTypes = dataset.getDataTypes();
	var data = dataset.getData();

	var processHeader = function(callback) {

		var header = pgsql.getHeaderSql(name);

		if(!options.dataOnly) {
			header += pgsql.getCreateTableSql(name, headers, dataTypes, transformer);
		}
		if(!options.createOnly && !options.insertStatements) {
			header += pgsql.getCopyHeaderSql(name, headers, dataTypes, transformer);
		}

		writeStream.write(header, function() {
			callback();
		});
	};

	// Fuck it. This isn't going to be async due to the stack getting too large
	// on large datasets. @TODO figure out a workaround
	var processData = function(callback) {

		var out = '', adjustedDataRow;
		for(var i = 0, len = data.length; i < len; ++i) {
			adjustedDataRow = dataType.getAdjustedDataRow(
				transformer, dataTypes, data[i]);

			if(options.insertStatements) {
				out += pgsql.getInsertDataRowSql(
					name, headers, adjustedDataRow, transformer);
			} else {
				out += pgsql.getCopyDataRowSql(adjustedDataRow, transformer);
			}
		}

		writeStream.write(out, function() {
			callback();
		});
	};

	var processFooter = function(callback) {
		var footer = '';

		if(!options.createOnly && !options.insertStatements) {
		    footer += pgsql.getCopyFooterSql();
		}

		footer += pgsql.getFooterSql(name);

		writeStream.write(footer, function() {
			callback();
		});
	};

	processHeader(function() {
		processData(function() {
			processFooter(function() {
				callback();
			});
		});
	});
};

exports.jsonToPgSql = function(parsedJson, writeStream, options, callback) {
	var datasets = [];

	if(typeof parsedJson === 'object' && parsedJson instanceof Array) {
		datasets = exports.jsonToDataSets(parsedJson, options);
	} else if (typeof parsedJson === 'object') {
		datasets.push(exports.jsonToDataSet(parsedJson, options));
	} else {
		throw new Error('The dataset provided is not a valid object');
	}

	var i, len, toProcess = [],
	    pgSqlTransformer = transformers.getPgSqlTransformer({
	        nullValue: (options.insertStatements ? 'NULL' : false)
	    });

	for(i = 0, len = datasets.length; i < len; ++i) {
		singleApply = async.apply(
			exports.processSingleDataset,
			datasets[i], pgSqlTransformer, writeStream, options);
		toProcess.push(singleApply);
	}

	async.series(toProcess, function(error, results) {
	    if(error) {
	        throw error;
	    }
	    if(typeof callback === 'function') {
	        callback();
	    }
	});
};