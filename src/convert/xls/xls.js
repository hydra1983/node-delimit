"use strict";

var when = require('when')
, sequence = require('when/sequence')
, transformers = require('../../transformers.js')
, tsv = require('../tsv/tsv.js')
, xls2tsv = require('./xls2tsv.js')
, _ = require('lodash')
, helper = require('../../helper');

exports.xlsToPgSql = function(filePath, writeStream, options) {
	options = helper.getOptions(options);

	return xls2tsv(filePath).then(function(info) {

		return sequence(info.files.map(function(file) {
			var modifiedOptions = _.clone(options);

			// append sheet name if there is more than one file
			if (info.files.length > 1) {
				modifiedOptions.name = options.name + "_" +
					transformers.normalizeString(file.sheetName);
			}

			return function() {
				return tsv.tsvToPgSql(file.path, writeStream, modifiedOptions);
			};
		}));
	});
};
