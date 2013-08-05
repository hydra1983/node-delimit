var xls = require('../src/convert/xls/xls');
var tsv = require('../src/convert/tsv/tsv');
var csv = require('../src/convert/csv/csv');
var json = require('../src/convert/json/json');
var defines = require('../src/defines');

var getOptions = function(options) {
    return {
        // What row contains header information?
        headerRow: typeof options.header === 'undefined' ? 0 : options.header,
        // Have we specified out own headers?
        useHeaders: typeof options.useHeaders === 'undefined' ? false : options.useHeaders.split(','),
        // What should we name our dataset?
        name: options.name || "default_name",
        // What String should we append to the end of our dataset name?
        appendString: typeof options.appendString === 'undefined' ? '' : options.appendString,
        // What String should we prepend to the beginning of our dataset name?
        prependString: typeof options.prependString === 'undefined' ? '' : options.prependString,
        // Should we ignore columns in data with empty headers?
        ignoreEmptyHeaders: options.igEmHead || false,
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
        })(options.forceType) || false,
        // Maintain the original header names? (e.g. don't switch to zip, lat, lng, etc)
        maintainHeaders: options.maintainHeaders,

        //-- SQL Specific
        // Are we only displaying data?
        dataOnly: options.dataOnly && !options.createOnly,
        // Are we only displaying create?
        createOnly: options.createOnly && !options.dataOnly,
        // Using insert statements vs. dump (COPY) format?
        insertStatements: options.insertStatements ? true : false
    };
};

exports.toPgSql = function(file, options, callback) {

    var options = getOptions(options);
    var extension = file.split(".");
    extension = extension[extension.length - 1];

    if(extension.match(/xlsx?/)) {
        xls.xlsToPgSql(file, process.stdout, options, function doneCb() {
            callback();
        });
    }
    else if (extension.match(/tsv/)) {
        tsv.tsvToPgSql(file, process.stdout, options, function doneCb() {
            callback();
        });
    }
    else if (extension.match(/csv/)) {
        csv.csvToPgSql(file, process.stdout, options, function doneCb() {
            callback();
        });
    }
    else if (extension.match(/json/)) {
        json.readJson(file, function(jsonObj) {
            json.jsonToPgSql(jsonObj, process.stdout, options, function doneCb() {
                callback();
            });
        });
    }
    else {
        callback("You've provided a file with an invalid extension of '" + extension + "'");
    }
};