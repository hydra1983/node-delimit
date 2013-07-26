#!/usr/bin/env node

var xls = require('../src/convert/xls/xls');
var tsv = require('../src/convert/tsv/tsv');
var csv = require('../src/convert/csv/csv');
var json = require('../src/convert/json/json');
var defines = require('../src/defines');

var argv = require('optimist')
    .usage("\nUsage: node delimit.js [options] --file <filePath>")
    .options('file', {
        "demand": true,
        describe: "The file to parse"
    })
    .options('name', {
        describe: "What to name our data? Default 'default'"
    })
    .options('appendString', {
        describe: "Append a string to the end of the name? Useful with " +
            "spreadsheets to ensure that a string appears at the end of " +
            "the table name."
    })
    .options('prependString', {
        describe: "Append a string to the end of the name? Useful with " +
            "spreadsheets to ensure that a string appears at the end of " +
            "the table name."
    })
    .options('dataOnly', {
        "boolean": true,
        "default": false,
        describe: "SQL ONLY: Only show data SQL (no create statement)"
    })
    .options('createOnly', {
        "boolean": true,
        "default": false,
        describe: "SQL ONLY: Only output create table SQL (no data)"
    })
    .options('header', {
        describe: "What row is the header in? Default 0"
    })
    .options('igEmHead', {
        "boolean": true,
        describe: "Ignore columns with empty headers? Default false"
    })
    .options('forceType', {
        describe: "Force a particular type for all columns? Default not set"
    })
    .options('useHeaders', {
        describe: "Use these headers instead of defaults (comma separated)"
    })
    .argv;

var extension = argv.file.split(".");
extension = extension[extension.length - 1];

var options = {
    // What row contains header information?
    headerRow: typeof argv.header === 'undefined' ? 0 : argv.header,
    // Have we specified out own headers?
    useHeaders: typeof argv.useHeaders === 'undefined' ? false : argv.useHeaders.split(','),
    // What should we name our dataset?
    name: argv.name || "default_name",
    // What String should we append to the end of our dataset name?
    appendString: typeof argv.appendString === 'undefined' ? '' : argv.appendString,
    // Should we ignore columns in data with empty headers?
    ignoreEmptyHeaders: argv.igEmHead || false,
    // Should we force a particular type on all columns in this data?
    forceType: (function(forceType) {
        if(typeof forceType === 'string') {
            forceType = forceType.toUpperCase();
            if(typeof defines[forceType] === 'undefined') {
                console.error('You have provided an invalid forceType');
                process.exit(1);
            } else {
                return defines[forceType];
            }
        }
        return forceType;
    })(argv.forceType) || false,

    //-- SQL Specific
    // Are we only displaying data?
    dataOnly: argv.dataOnly && !argv.createOnly,
    // Are we only displaying create?
    createOnly: argv.createOnly && !argv.dataOnly,
};

if(extension.match(/xlsx?/)) {
    xls.xlsToPgSql(argv.file, process.stdout, options, function doneCb() {
        process.exit(0);
    });
}
else if (extension.match(/tsv/)) {
    tsv.tsvToPgSql(argv.file, process.stdout, options, function doneCb() {
        process.exit(0);
    });
}
else if (extension.match(/csv/)) {
    csv.csvToPgSql(argv.file, process.stdout, options, function doneCb() {
        process.exit(0);
    });
}
else if (extension.match(/json/)) {
    json.readJson(argv.file, function(jsonObj) {
        json.jsonToPgSql(jsonObj, process.stdout, options, function doneCb() {
            process.exit(0);
        });
    });
}
else {
    console.error("You've provided a file with an invalid extension of '" + extension + "'");
    process.exit(1);
}