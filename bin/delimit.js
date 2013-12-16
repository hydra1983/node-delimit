#!/usr/bin/env node
"use strict";

var delimit = require('../index.js')
, util = require('../src/util');

function buildFlags = function() {
    var options = util.getOptions()
    , flags = {};

    for (var item in options) {
        flags[item] = {};
        flags[item].describe = options[item + '_describe'];
        flags[item].boolean = options[item + '_boolean'];
        flags[item].alias = options[item + '_alias'];
    }

    return flags;
}

require('main')(module)
.usage(
    'Usage: ./delimit [-flags] <convertFrom> <convertTo> <inputFile>',
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
    $.assert.argsLen(3);
    delimit.convertTo($(0), $(1), $(2), $.flags)
    .then(function() { $.exit(); })
    .otherwise(function(error) {  $.cerr(error.stack || error).exit(1); });
});
