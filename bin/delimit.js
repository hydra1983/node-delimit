#!/usr/bin/env node
"use strict";

var delimit = require('../index.js')
, helper = require('../src/helper');

function buildFlags() {
    var options = helper.getOptions()
    , flags = {};

    for (var item in options) {
        flags[item] = {};
        flags[item].describe = options[item + '_describe'];
        flags[item].boolean = options[item + '_boolean'];
        flags[item].alias = options[item + '_alias'];
    }

    flags.help = {
        alias: 'h', describe: 'Display this message.'
    };

    return flags;
}

require('main')(module)
.usage(
    'Usage: ./delimit [-flags] <convertFrom> <convertTo> [<inputFile>]',
    '',
    'Convert From Valid Values:',
    '  - csv, tsv, xls, xlsx, json',
    '',
    'Convert To Valid Values:',
    '  - tsv, pgsql',
    '',
    'If no <inputFile> is specified, data is read from stdin',
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
.flags(buildFlags())
.run(function($) {
    if ($('help')) { $.cerr($.help).exit(); }
    $.assert.argsLenGe(2);
    delimit.convertStream($(0), $(1), $(2) || process.stdin, $.flags)
    .then(function(outStream) {
        var defer = when.defer();
        outStream.on('end', defer.resolve);
        outStream.on('error', defer.reject);
        return defer.promise;
    }).otherwise(function(error) {
        $.cerr(error.stack || error).exit(1);
    });
});
