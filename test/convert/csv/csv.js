"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, csv = require('../../../src/convert/csv')
, defines = require('../../../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

/* global describe */
/* global it */
/* global beforeEach */

describe('csv', function() {

	var options
	, csvSimple = __dirname + '/files/csvSimple.csv';

	beforeEach(function() {
		options = {
			tablename: 'trevor.test',
			headerRow: 1
		};
	});

	describe('#csv2tsv()', function() {

		it('should create a valid tsv stream', function() {
			return csv.toTsvStream(csvSimple).then(function(tsvStream) {
				var endDefer = when.defer()
				, data = '';

				tsvStream.on('data', function(chunk) { data += chunk; });
				tsvStream.on('end', endDefer.resolve);

				return endDefer.promise.then(function() {
					data.should.equal([
						'First Name\tLast Name',
						'Trevor\tSenior',
						'James\tNolan',
						'Henry\tSmith',
						''
					].join('\n'));
				});
			});
		});

	});

	describe('#csv2PgSql()', function() {

		it('should convert a simple CSV file into a PGSQL stream', function() {

			return csv.toPgSqlStream(csvSimple, options).then(function(pgsqlStream) {
				var endDefer = when.defer()
				, data = '';

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

});
