"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, sequence = require('when/sequence')
, DataSet = require('../../DataSet')
, defines = require('../../defines')
, pgsql = require('../../pgsql')
, transformers = require('../../transformers')
, dataType = require('../../dataType');

var util = require('util');

exports.readJson = function(jsonFile, callback) {
	return nodefn.call(fs.readFile, jsonFile, { encoding: 'utf8' })
	.then(function(jsonString) {
		try { var parsedJson = JSON.parse(jsonString); }
		catch(error) { return when.reject(error); }
		return parsedJson;
	});
}

exports.jsonToDataSet = function(parsedJson, options)  {
	var dataset = new DataSet();
	dataset.setName(parsedJson.name);
	dataset.setHeaders(parsedJson.headers);
	dataset.setDataTypes(parsedJson.dataTypes.map(function(dataType) {
		return defines.getDefine(dataType);
	}));
	dataset.setData(parsedJson.data);
	return dataset;
};

exports.jsonToDataSets = function(parsedJson, options) {
	if (typeof parsedJson !== 'object' || !(parsedJson instanceof Array)) {
		return [];
	}

	return parsedJson.map(function(single) {
		return exports.jsonToDataSet(single, options);
	});
};

// processes a single dataset and writes pgsql to the given stream
exports.processSingleDataset = function(dataset, transformer, writeStream, options) {

	var headers = dataset.getHeaders()
	, dataTypes = dataset.getDataTypes()
	, data = dataset.getData()
	, name = options.prependString + dataset.getName() + options.appendString
	, self = this;

	var processHeader = function() {
		var header = pgsql.getHeaderSql(name);

		if (!options.dataOnly) {
			header += pgsql.getCreateTableSql(name, headers, dataTypes, transformer);
		}
		if (!options.createOnly && !options.insertStatements) {
			header += pgsql.getCopyHeaderSql(name, headers, dataTypes, transformer);
		}

		var defer = when.defer();
		writeStream.write(header, defer.resolve);
		return defer;
	};

	var processData = function() {
		var out = '', adjustedDataRow;

		for (var i = 0, len = data.length; i < len; ++i) {
			adjustedDataRow = dataType.getAdjustedDataRow(
				transformer, dataTypes, data[i]);

			if (options.insertStatements) {
				out += pgsql.getInsertDataRowSql(
					name, headers, adjustedDataRow, transformer);
			} else {
				out += pgsql.getCopyDataRowSql(adjustedDataRow, transformer);
			}
		}

		var defer = when.defer();
		writeStream.write(out, defer.resolve);
		return defer;
	};

	var processFooter = function() {
		var footer = '';

		if (!options.createOnly && !options.insertStatements) {
		    footer += pgsql.getCopyFooterSql();
		}

		footer += pgsql.getFooterSql(name);

		var defer = when.defer();
		writeStream.write(footer, defer.resolve);
		return defer;
	};

	return sequence([processHeader, processData, processFooter]);
};

exports.jsonToPgSql = function(parsedJson, writeStream, options) {
	var datasets = [];

	if (typeof parsedJson === 'object' && parsedJson instanceof Array) {
		datasets = exports.jsonToDataSets(parsedJson, options);
	} else if (typeof parsedJson === 'object') {
		datasets.push(exports.jsonToDataSet(parsedJson, options));
	} else {
		return when.reject(new Error(
			'The dataset provided is not a valid object'));
	}

	var pgSqlTransformer = transformers.getPgSqlTransformer({
		nullValue: (options.insertStatements ? 'NULL' : false)
	});

	return sequence(datasets.map(function(dataset) {
		return function() {
			return exports.processSingleDataset(
				dataset, pgSqlTransformer, writeStream, options);
		};
	}));
};
