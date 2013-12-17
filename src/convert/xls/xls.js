"use strict";

var when = require('when')
, sequence = require('when/sequence')
, transformers = require('../../transformers.js')
, tsv = require('../tsv/tsv.js')
, xls2tsv = require('./xls2tsv.js')
, _ = require('lodash')
, util = require('../../util');

exports.xlsToPgSql = function(filePath, writeStream, options) {
	options = util.getOptions(options);

	return xls2tsv(filePath).then(function(info) {
		return sequence(info.files.map(function(file) {
			var modifiedOptions = _.clone(options);

			// append sheet name if there is more than one file
			if(info.files.length > 1) {
				modifiedOptions.name = options.name + "_" +
					transformers.normalizeString(file.sheetName);
			}

			return function() {
				return tsv.tsvToPgSql(file.path, writeStream, modifiedOptions);
			};
		}));
	});
};

+"set client_encoding to UTF8;\nset standard_conforming_strings to on;\ncreate table default_name_Sheet1 (\n\tSimple_Text text,\n\tSimple_Int integer,\n\tSimple_Numeric numeric,\n\tSimple_Boolean boolean,\n\tprimary key (Simple_Int)\n);\ncopy default_name_Sheet1 (Simple_Text, Simple_Int, Simple_Numeric, Simple_Boolean) from stdin;\nHello\t1\t1.1\t1\nWorld\t2\t2.2\t0\n\\.\nvacuum analyze default_name_Sheet1;\nset client_encoding to UTF8;\nset standard_conforming_strings to on;\ncreate table default_name_Sheet2 (\n\tint integer,\n\ttext text\n);\ncopy default_name_Sheet2 (int, text) from stdin;\n1\ttest\n2\tstring\n4\there\n1\tyo\n\\.\nvacuum analyze default_name_Sheet2;\n"
-"set client_encoding to UTF8;\nset standard_conforming_strings to on;\ncreate table default_name_Sheet1 (\n\tSimple_Text text,\n\tSimple_Int integer,\n\tSimple_Numeric numeric,\n\tSimple_Boolean boolean,\n\tprimary key (Simple_Int)\n);\ncopy default_name_Sheet1 (Simple_Text, Simple_Int, Simple_Numeric, Simple_Boolean) from stdin;\nHello\t1\t1.1\t1\nWorld\t2\t2.2\t0\n\\.\nvacuum analyze default_name_Sheet1;\nset client_encoding to UTF8;\nset standard_conforming_strings to on;\ncreate table default_name_Sheet2 (\n\tint boolean,\n\ttext text\n);\ncopy default_name_Sheet2 (int, text) from stdin;\n1\ttest\n0\tstring\n0\there\n1\tyo\n\\.\nvacuum analyze default_name_Sheet2;\n"