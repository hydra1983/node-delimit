"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, csv = require('../../../src/convert/csv/csv.js')
, defines = require('../../../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('csv', function() {

	var options
	, csvSimple = __dirname + '/files/csvSimple.csv';

	beforeEach(function() {
		options = {
			tablename: 'trevor.test',
			headerRow: 0
		};
	});

	it('should convert a CSV file into PGSQL (simple)', function() {
		var ws = fs.createWriteStream('out_csv_0.sql');
		return csv.csvToPgSql(csvSimple, ws, options)
		.then(function() {
			ws.end();
			return nodefn.call(
				fs.readFile, 'out_csv_0.sql', {encoding: 'UTF8'}
			).then(function(data) {
				data.should.be.ok;
				var defer = when.defer();
				fs.unlink('out_csv_0.sql', defer.resolve);
				return defer.promise;
			});
		});
	});

});
