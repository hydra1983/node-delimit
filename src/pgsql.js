var pgSqlTransformer = require('./transformers.js').getPgSqlTransformer();
var defines = require('./defines.js');

exports.getHeaderSql = function(tablename) {
    return "set client_encoding to UTF8;\n" +
           "set standard_conforming_strings to on;\n";
};

exports.getFooterSql = function(tablename) {
    return "vacuum analyze " + tablename + ';\n';
};

exports.getCreateTableSql = function(tablename, headers, dataTypes) {
    var statement = "create table " + tablename +
        " (\n";
    var columns = [], singleLine;

    var primaryHeaders = [];

    for(var i = 0, len = headers.length; i < len; ++i) {
        singleLine = "\t" +
            pgSqlTransformer.header(dataTypes[i], headers[i]) +
            " " +
            pgSqlTransformer.type(dataTypes[i]);
        columns.push(singleLine);

        if(dataTypes[i] == defines.PRIMARY_INTEGER) {
            primaryHeaders.push(headers[i]);
        }
    }

    if(primaryHeaders.length > 0) {
        columns.push('\tprimary key (' + primaryHeaders.join(', ') + ')');
    }

    statement += columns.join(',\n') + "\n);\n";
    return statement;
};

exports.getCopyHeaderSql = function(tablename, headers, dataTypes) {

    var adjustedHeaders = [];
    for(var i = 0, len = headers.length; i < len; ++i) {
        adjustedHeaders.push(pgSqlTransformer.header(dataTypes[i], headers[i]));
    }

    var statement = "copy " +
        tablename + " (" +
        adjustedHeaders.join(', ') +
        ") from stdin;\n";

    return statement;
};

exports.getCopyDataRowSql = function(dataRow) {
    var i, len;
    var adjustedDataRow = [];
    for(i = 0, len = dataRow.length; i < len; ++i) {
        adjustedDataRow.push((dataRow[i] + '').replace(/\n/g, "\\n"));
    }
    var statement = adjustedDataRow.join("\t") + "\n";
    return statement;
};

exports.getInsertDataRowSql = function(tablename, headers, dataRow) {
    var i, len;
    var adjustedDataRow = [];
    for(i = 0, len = dataRow.length; i < len; ++i) {
        adjustedDataRow.push((dataRow[i] + '').replace(/'/g, "''"));
    }
    var statement = 'insert into ' + tablename + ' ' +
        '(' + headers.join(', ') + ') values ' +
        "(E'" + adjustedDataRow.join("', E'") + "');\n";
    return statement;
};

exports.getCopyFooterSql = function() {
    var statement = "\\.\n";
    return statement;
};