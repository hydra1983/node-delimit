var fs = require('fs');
var spawn = require('child_process').spawn;

exports.csv2tsv = function(filePath) {
	var args = 'python ' + __dirname + '/xsv2tsv.py ' + filePath;
};