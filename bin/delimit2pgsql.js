#!/usr/bin/env node

var convert = require('../src/convert.js');

var argv = require('optimist')
    .usage("\nUsage: node delimit.js [options] --file <filePath>")
    .options('file', {
        alias: 'f',
        "demand": true,
        describe: "The file to parse"
    })
    .options('name', {
        alias: 'n',
        describe: "What to name our data? Default 'default'"
    })
    .options('appendString', {
        alias: 'A',
        describe: "Append a string to the end of the name? Useful with " +
            "spreadsheets to ensure that a string appears at the end of " +
            "the name."
    })
    .options('prependString', {
        alias: 'P',
        describe: "Prepend a string to the front of name?"
    })
    .options('header', {
        alias: 'h',
        describe: "What row is the header in? Default 0"
    })
    .options('igEmHead', {
        "boolean": true,
        describe: "Ignore columns with empty headers? Default false"
    })
    .options('forceType', {
        alias: 'F',
        describe: "Force a particular type for all columns? Default not set"
    })
    .options('useHeaders', {
        describe: "Use these headers instead of defaults (comma separated)"
    })
    .options('dataOnly', {
        alias: 'D',
        "boolean": true,
        "default": false,
        describe: "PSQL ONLY: Only show data SQL (no create statement)"
    })
    .options('createOnly', {
        alias: 'C',
        "boolean": true,
        "default": false,
        describe: "PSQL ONLY: Only output create table SQL (no data)"
    })
    .options('insertStatements', {
        alias: 'I',
        "boolean": true,
        "default": false,
        describe: "PSQL ONLY: Use insert statements instead of dump format? " +
            "Useful for dealing with bad data"
    })
    .argv;

convert.toPgSql(argv.file, argv, function(error) {
    if(!error) {
        process.exit(0);
    } else {
        process.exit(1);
    }
});
