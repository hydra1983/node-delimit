var transformers = require('../../transformers.js'),
    tsv = require('../tsv/tsv.js'),
    xls2tsv = require('./xls2tsv.js');

var async = require('async'),
    _ = require('underscore');

exports.xlsToPgSql = function(filePath, writeStream, options, callback) {
    xls2tsv.process(filePath, function(error, info) {
        if(error) {
            throw error;
        }

        var toProcess = [], singleApply, modifiedOptions;

        for(var i = 0, len = info.files.length; i < len; ++i) {
            modifiedOptions = _.clone(options);
            modifiedOptions.tablename = options.tablename + "_" +
                transformers.normalizeString(info.files[i].sheetName),

            singleApply = async.apply(tsv.tsvToPgSql, info.files[i].path,
                writeStream, modifiedOptions);

            toProcess.push(singleApply);
        }

        async.series(toProcess, function(error, results) {
            if(error) {
                throw error;
            }
            if(typeof callback === 'function') {
                callback();
            }
        });
    });
};