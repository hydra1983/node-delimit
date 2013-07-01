var pgSqlTransformer = require('./transformers.js').getPgSqlTransformer();

exports.getHeaderSql = function(tablename) {
    return "set client_encoding to UTF8;\n" +
           "set standard_conforming_strings to on;\n";
};

exports.getFooterSql = function(tablename) {
    return "vacuum analyze " + tablename + ';';
};

exports.getCreateTableSql = function(tablename, headers, dataTypes) {
    var statement = "create table " + tablename + " (\n";
    var columns = [], singleLine;

    for(var i = 0, len = headers.length; i < len; ++i) {
        singleLine = "\t" +
            headers[i] + " " + pgSqlTransformer.type(dataTypes[i]);
        columns.push(singleLine);
    }

    statement += columns.join(',\n') + "\n);\n";
    return statement;
};

exports.getCopyHeaderSql = function(tablename, headers) {
    var statement = "copy " + tablename + " (" + headers.join(', ') + ") from stdin;\n";
    return statement;
};

exports.getCopyDataRowSql = function(dataRow) {
    var statement = dataRow.join("\t") + "\n";
    return statement;
};

exports.getCopyFooterSql = function() {
    var statement = "\\.\n";
    return statement;
};