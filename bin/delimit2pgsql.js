#!/usr/bin/env node
"use strict";

var delimit = require('../index.js');

require('main')(module)
.usage('Usage: ./delimit2pgsql [-flags] <file>')
.flags({
    'help': {
        alias: 'h',
        describe: 'display this message'
    },
    'name': {
        alias: 'n',
        describe: "What to name our data? Default 'default'"
    },
    'appendString': {
        alias: 'A',
        describe: "Append a string to the end of the name? Useful with " +
            "spreadsheets to ensure that a string appears at the end of " +
            "the name."
    },
    'prependString': {
        alias: 'P',
        describe: "Prepend a string to the front of name?"
    },
    'header': {
        alias: 'h',
        describe: "What row is the header in? Default 0"
    },
    'igEmHead': {
        "boolean": true,
        describe: "Ignore columns with empty headers? Default false"
    },
    'forceType': {
        alias: 'F',
        describe: "Force a particular type for all columns? Default not set"
    },
    'useHeaders': {
        describe: "Use these headers instead of defaults (comma separated)"
    },
    'maintainHeaders': {
        'boolean': true,
        'default': false,
        describe: "Do not change header names (e.g. zip, lat, lng, etc)"
    },
    'dataOnly': {
        alias: 'D',
        "boolean": true,
        "default": false,
        describe: "PSQL ONLY: Only show data SQL (no create statement)"
    },
    'createOnly': {
        alias: 'C',
        "boolean": true,
        "default": false,
        describe: "PSQL ONLY: Only output create table SQL (no data)"
    },
    'insertStatements': {
        alias: 'I',
        "boolean": true,
        describe: "PSQL ONLY: Use insert statements instead of dump format? " +
            "Useful for dealing with bad data"
    },
    'ignoreTypes': {
        describe: "Ignore these particular types of data (comma separated)"
    }
})
.run(function($) {
    if ($('help')) { $.cerr($.help).exit(); }
    $.assert.argsLen(1);
    delimit.toPgSql($(0), $.flags).then(function() {
        $.exit();
    }).otherwise(function(error) {
        $.cerr(error.stack || error).exit(1);
    })
});
