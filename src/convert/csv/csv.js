var csv2tsv = require('./csv2tsv.js');
	tsv = require('../tsv/tsv.js');

exports.csvToPgSql = function(filePath, writeStream, options, callback) {
	csv2tsv.csv2tsv(filePath, function(error, tempPath) {
		if(error) {
			throw error;
		}

		tsv.tsvToPgSql(tempPath, writeStream, options, function() {
			callback();
		});
	});
};