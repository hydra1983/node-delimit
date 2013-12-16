"use strict";

var when = require('when')
, transformers = require('../../transformers.js')
, tsv = require('../tsv/tsv.js')
, xls2tsv = require('./xls2tsv.js')
, _ = require('lodash');

exports.xlsToPgSql = function(filePath, writeStream, options) {
	return xls2tsv(filePath).then(function(info) {
		return when.map(info.files, function(file) {
			var modifiedOptions = _.clone(options);

			// append sheet name if there is more than one file
			if(info.files.length > 1) {
				modifiedOptions.name = options.name + "_" +
					transformers.normalizeString(file.sheetName);
			}

			return tsv.tsvToPgSql(file.path, writeStream, modifiedOptions);
		});
	});
};
