"use strict";

var defines = require('./defines.js');

exports.getHeaderSql = function(tablename) {
	return "set client_encoding to UTF8;\n" +
		"set standard_conforming_strings to on;\n";
};

exports.getFooterSql = function(tablename) {
	return "vacuum analyze " + tablename + ';\n';
};

exports.getCreateTableSql = function(tablename, headers, dataTypes, transformer) {
	var statement = "create table " + tablename +
		" (\n";
	var columns = [], singleLine;

	var primaryHeaders = [];

	for (var i = 0, len = headers.length; i < len; ++i) {
		singleLine = "\t" +
			transformer.header(dataTypes[i], headers[i]) +
			" " +
			transformer.type(dataTypes[i]);
		columns.push(singleLine);

		if (dataTypes[i] == defines.PRIMARY_INTEGER) {
			primaryHeaders.push(transformer.header(dataTypes[i], headers[i]));
		}
	}

	if (primaryHeaders.length > 0) {
		columns.push('\tprimary key (' + primaryHeaders.join(', ') + ')');
	}

	statement += columns.join(',\n') + "\n);\n";
	return statement;
};

exports.getCopyHeaderSql = function(tablename, headers, dataTypes, transformer) {

	var adjustedHeaders = [];
	for (var i = 0, len = headers.length; i < len; ++i) {
		adjustedHeaders.push(transformer.header(dataTypes[i], headers[i]));
	}

	var statement = "copy " +
		tablename + " (" +
		adjustedHeaders.join(', ') +
		") from stdin;\n";

	return statement;
};

exports.getCopyDataRowSql = function(dataRow, transformer) {
	var i, len;
	var adjustedDataRow = [], adjusted;
	for (i = 0, len = dataRow.length; i < len; ++i) {

		adjusted = dataRow[i] + '';

		if (transformer.nullValue != dataRow[i]) {
			adjusted = adjusted.replace(/\\/g, "\\\\");
			adjusted = adjusted.replace(/\n/g, "\\n");
			adjusted = adjusted.replace(/\r/g, "\\r");
			adjusted = adjusted.replace(/\t/g, "\\t");
		}

		adjustedDataRow.push(adjusted);
	}
	var statement = adjustedDataRow.join("\t") + "\n";
	return statement;
};

exports.getInsertDataRowSql = function(tablename, headers, dataRow, transformer) {
	var i, len, adjustedDataRow = [], adjusted;

	for (i = 0, len = dataRow.length; i < len; ++i) {
		adjusted = dataRow[i];
		if (transformer.nullValue != dataRow[i]) {
			adjusted = (dataRow[i] + '').replace(/'/g, "''");
			adjusted = "E'" + adjusted + "'";
		}
		adjustedDataRow.push(adjusted);
	}

	var statement = 'insert into ' + tablename + ' ' +
		'(' + headers.join(', ') + ') values (' +
		adjustedDataRow.join(', ') + ");\n";

	return statement;
};

exports.getCopyFooterSql = function() {
	var statement = "\\.\n";
	return statement;
};
