"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, tsv = require('../../../src/convert/tsv/tsv.js')
, defines = require('../../../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();


describe('tsv', function() {
	var options
	, tsvSimple = __dirname + '/files/tsvSimple.tsv'
	, tsvSimple1100 = __dirname + '/files/tsvSimple1100.tsv'
	, tsvMissingHeaders = __dirname + '/files/tsvMissingHeaders.tsv'
	, tsvMissingHeaders2 = __dirname + '/files/tsvMissingHeaders2.tsv'
	, tsvTwoSheets = __dirname + '/files/tsvTwoSheets.tsv'
	, tsvEmptyRow = __dirname + '/files/tsvEmptyRow.tsv';

	describe('#tsvToDataSet()', function() {
		beforeEach(function() {
			options = {
				tablename: 'trevor.test',
				headerRow: 0
			};
		});

		it('should convert a TSV file into a DataSet (simples)', function() {

			return tsv.tsvToDataSet(tsvSimple, options)
			.then(function(dataset) {
				dataset.getHeaders().should.eql([
				   'Simple_Text', 'Simple_Int', 'Simple_Numeric',
				   'Simple_Boolean', 'Simple_LAT', 'Simple_Lng',
				   'Simple_Primary', 'Simple_Zip'
				]);

				dataset.getDataTypes().should.eql([
				   defines.TEXT, defines.INTEGER, defines.NUMERIC,
				   defines.BOOLEAN, defines.LAT, defines.LONG,
				   defines.PRIMARY_INTEGER, defines.ZIP
				]);

				dataset.getData().should.eql([
					['Hello', 5, 1.1, true, 89.9, 23.56, 1, '12345'],
					['World', 4, 2.2, false, 55.5, 45.5, 2, '00000'],
					['Foo', 3, 3.3, true, 23.2, 179.9, 3, '12345-6789'],
					['Bar', 2, 4.4, false, 45.44, 67.22, 4, '00000-0000']
				]);
			});
		});

		it('should convert a TSV file into a DataSet (simple1100Lines)', function() {
			return tsv.tsvToDataSet(tsvSimple1100, options)
			.then(function(dataset) {
				dataset.getHeaders().should.eql([
				   'Simple_Text', 'Simple_Int',
				   'Simple_Numeric', 'Simple_Boolean'
				]);
				dataset.getDataTypes().should.eql([
				   defines.TEXT, defines.INTEGER,
				   defines.NUMERIC, defines.BOOLEAN
				]);
				dataset.getData().length.should.equal(1099);
			});
		});

		it('should convert a TSV file into a DataSet (skip empty header names)', function() {
			options.ignoreEmptyHeaders = true;
			return tsv.tsvToDataSet(tsvMissingHeaders, options)
			.then(function(dataset) {
				dataset.getHeaders().should.eql([
				   'test_1', 'test_3'
				]);
				dataset.getDataTypes().should.eql([
				   defines.TEXT, defines.NUMERIC
				]);
				dataset.getData().length.should.eql(3);
				dataset.getData().should.eql([
					['one', 4.4],
					['two', 5.5],
					['three', 6.6]
				]);
			});
		});

		it('should convert a TSV file into a DataSet (skip empty header names more obscure)', function() {
			options.ignoreEmptyHeaders = true;
			return tsv.tsvToDataSet(tsvMissingHeaders2, options)
			.then(function(dataset) {
				dataset.getHeaders().should.eql([
				   'Heatmap', 'table_name', 'column_name', 'column_criteria'
				]);
				dataset.getDataTypes().should.eql([
				   defines.TEXT, defines.TEXT, defines.TEXT, defines.TEXT
				]);
				dataset.getData().length.should.eql(1);
			});
		});

		it('should convert a TSV file into a DataSet (allow & replace empty header names)', function() {
			return tsv.tsvToDataSet(tsvMissingHeaders, options)
			.then(function(dataset) {
				dataset.getHeaders().should.eql([
				   'test_1', 'column_2', 'test_3'
				]);
				dataset.getDataTypes().should.eql([
				   defines.TEXT, defines.PRIMARY_INTEGER, defines.NUMERIC
				]);
				dataset.getData().length.should.eql(3);
				dataset.getData().should.eql([
					['one', 1, 4.4],
					['two', 2, 5.5],
					['three', 3, 6.6]
				]);
			});
		});

		it('should convert a TSV file into a DataSet (force type text)', function() {
			options.forceType = defines.TEXT;
			return tsv.tsvToDataSet(tsvMissingHeaders, options)
			.then(function(dataset) {
				dataset.getHeaders().should.eql([
				   'test_1', 'column_2', 'test_3'
				]);

				dataset.getDataTypes().should.eql([
				   defines.TEXT, defines.TEXT, defines.TEXT
				]);
				dataset.getData().should.eql([
					['one', '1', '4.4'],
					['two', '2', '5.5'],
					['three', '3', '6.6']
				]);
			});
		});

	});

	describe.only('#tsvToPgSql()', function() {

		beforeEach(function() {
			options = {
				tablename: 'trevor.test',
				headerRow: 0
			};
		});

		it('should convert a TSV file into PGSQL (simple)', function() {
			var ws = fs.createWriteStream('tsvToPgSql_0.sql');
			return tsv.tsvToPgSql(
				tsvSimple, ws, options
			).then(function() {
				ws.end();
				return nodefn.call(
					fs.readFile, 'tsvToPgSql_0.sql', {encoding: 'utf8'}
				).then(function(data) {
					data.should.be.ok;
					var defer = when.defer;
					fs.unlink('tsvToPgSql_0.sql', defer.resolve);
					return defer.promise;
				});
			});
		});

		it('should convert a TSV file into PGSQL (skip empty header names)', function(done) {
			options.ignoreEmptyHeaders = true;

			var ws = fs.createWriteStream('tsvToPgSql_1.sql');
			return tsv.tsvToPgSql(
				tsvMissingHeaders, ws, options
			).then(function() {
				ws.end();

				// fs.readFile('tsvToPgSql_1.sql', {encoding: 'utf8'}, function(error, data) {
				// 	if(error) { throw error; }
				// 	data.should.be.ok;
				// 	data.indexOf("one\t4.4\n" +
				// 				 "two\t5.5\n" +
				// 				 "three\t6.6\n").should.not.equal(-1);
				// 	fs.unlink('tsvToPgSql_1.sql', function() { done(); });
				// });

				return nodefn.call(
					fs.readFile, 'tsvToPgSql_1.sql', {encoding: 'utf8'}
				).then(function(data) {
					data.should.be.ok;
					data.indexOf("one\t4.4\n" +
								 "two\t5.5\n" +
								 "three\t6.6\n").should.not.equal(-1);
					var defer = when.defer;
					fs.unlink('tsvToPgSql_1.sql', defer.resolve);
					return defer.promise;
				});

			});
		});

		it('should only output data SQL (data only = true)', function(done) {
			options.ignoreEmptyHeaders = true;
			options.dataOnly = true;

			var ws = fs.createWriteStream('tsvToPgSql_2.sql');
			return tsv.tsvToPgSql(
				tsvSimple, ws, options
			).then(function() {
				ws.end();

				// fs.readFile('tsvToPgSql_2.sql', {encoding: 'utf8'}, function(error, data) {
				// 	if(error) { throw error; }
				// 	data.should.be.ok;
				// 	data.indexOf("copy").should.not.equal(-1); // data should exist
				// 	data.indexOf("create table").should.equal(-1); // create shouldn't
				// 	fs.unlink('tsvToPgSql_2.sql', function() { done(); });
				// });

				return nodefn.call(
					fs.readFile, 'tsvToPgSql_2.sql', {encoding: 'utf8'}
				).then(function(data) {
					data.should.be.ok;
					data.indexOf("copy").should.not.equal(-1); // data should exist
					data.indexOf("create table").should.equal(-1); // create shouldn't
					var defer = when.defer;
					fs.unlink('tsvToPgSql_2.sql', defer.resolve);
					return defer.promise;
				});

			});
		});

	});
});
