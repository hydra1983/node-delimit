var fs = require('fs'),
    should = require('should'),
    csv2tsv = require('../../../src/convert/csv/csv2tsv.js');

describe('csv2tsv', function() {

	var csvSimple = __dirname + '/files/csvSimple.csv';

	describe('#csv2tsv()', function() {
		it('should create the temporary tsv file', function(done) {
			csv2tsv.csv2tsv(csvSimple, function(error, tempPath) {
				should.not.exist(error);
				fs.exists(tempPath, function(exists) {
					exists.should.be.true;
					fs.unlink(tempPath, function() {
						done();
					});
				});
			});
		});
	});
});