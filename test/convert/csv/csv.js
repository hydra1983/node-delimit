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

		return csv.csvToPgSql(csvSimple, options)
		.then(function(pgsqlStream) {
			var endDefer = when.defer(), data = '';
			pgsqlStream.on('data', function(chunk) { data += chunk; });
			pgsqlStream.on('end', endDefer.resolve);

			return endDefer.promise.then(function() {
				data.should.equal([
					'set client_encoding to UTF8;',
					'set standard_conforming_strings to on;',
					'create table default_name (',
					'	First_Name text,',
					'	Last_Name text',
					');',
					'copy default_name (First_Name, Last_Name) from stdin;',
					'Trevor	Senior',
					'James	Nolan',
					'Henry	Smith',
					'\\.',
					'vacuum analyze default_name;',
					''
				].join('\n'));
			});
		});
	});

});
