#!/usr/bin/env node
"use strict";

var delimit = require('../index.js');

require('main')(module)
.usage(
    'Usage: ./delimit [-flags] <convertTo> <file>',
    '',
    'If specifying column types for a flag, the following values are valid:',
    '',
    '  - boolean   ',
    '  - integer   ',
    '  - biginteger',
    '  - text      ',
    '  - numeric   ',
    '  - zip       ',
    '  - lat       ',
    '  - long      ',
    '  - primary_integer',
    '',
    '# Example:',
    '',
    'Given the CSV file with contents',
    '',
    '    First Name,Last Name',
    '    Trevor,Senior',
    '    James,Nolan',
    '    Henry,Smith',
    '',
    'This will convert the CSV file into Postgres SQL',
    '',
    '    ./delimit pg myfile.csv',
    '',
    ''
)
.flags({
    'help': {
        describe: 'display this message.',
        alias: 'h'
    },
    'name': {
        describe: "What to name our data?",
        alias: 'n',
        default: 'default_name'
    },
    'appendString': {
        describe: "Append a string to the end of the name? Useful with\n" +
            "\t\t\t\tspreadsheets to ensure that a string appears at \n" +
            "\t\t\t\tthe end of the name.\n",
        alias: 'A'
    },
    'prependString': {
        describe: "Prepend a string to the front of name?",
        alias: 'P',
    },
    'header': {
        describe: "[DELIMITED FILES ONLY] What row is the header in?",
        alias: 'h',
        default: 0
    },
    'igEmHead': {
        describe: "Ignore columns with empty headers?",
        boolean: true,
        default: false
    },
    'forceTypes': {
        describe: "Force a type for a given column? (comma separated)\n" +
            "\t\t\t\te.g.  'column_name:boolean,another_column:text'\n",
        alias: 'F'
    },
    'ignoreTypes': {
        describe: "Ignore these particular types of data (comma separated)"
    },
    'useHeaders': {
        describe: "Use these headers instead of defaults (comma separated)"
    },
    'maintainHeaders': {
        describe: "Do not automatically change header names (e.g. zip, lat, lng, etc)",
        boolean: true,
        default: false
    },
    'dataOnly': {
        describe: "[PSQL ONLY] Only output data SQL (no create statement)",
        alias: 'D',
        boolean: true,
        default: false
    },
    'createOnly': {
        describe: "[PSQL ONLY] Only output create table SQL (no data)",
        alias: 'C',
        boolean: true,
        default: false,
    },
    'insertStatements': {
        describe: "[PSQL ONLY] Use insert statements instead of dump format?",
        alias: 'I',
        boolean: true,
        default: false
    }
})
.run(function($) {
    if ($('help')) { $.cerr($.help).exit(); }
    $.assert.argsLen(2);
    delimit.convertTo($(1), $(0), $.flags)
    .then(function() { $.exit(); })
    .otherwise(function(error) {  $.cerr(error.stack || error).exit(1); });
});
