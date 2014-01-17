"use strict";

var fs = require('fs')
, path = require('path')
, when = require('when')
, nodefn = require('when/node/function')
, xls = require('../../../src/convert/xls')
, defines = require('../../../src/defines')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised')
, testConfig = require('../../testConfig');

chai.Should();
chai.use(chaiAsPromised);
require('mocha-as-promised')();

describe('xls', function() {

	var xlsSimple = __dirname + '/files/xlsSimple.xls'
	, xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls'
	, xlsInvalid = __dirname + '/files/xlsInvalid.xls';

	describe('#xlsToPgSql()', function() {

		it('should convert an XLS file into PGSQL (one sheet)', function() {
			return xls.xlsToPgSqlStream(xlsSimple).then(function(pgsqlStream) {
				var endDefer = when.defer(), data = '';
				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					data.should.equal([
						'set client_encoding to UTF8;',
						'set standard_conforming_strings to on;',
						'create table default_name (',
						'\tSimple_Text text,',
						'\tSimple_Int integer,',
						'\tSimple_Numeric numeric,',
						'\tSimple_Boolean boolean,',
						'\tprimary key (Simple_Int)',
						');',
						'copy default_name (Simple_Text, Simple_Int, Simple_Numeric, Simple_Boolean) from stdin;',
						'Hello\t1\t1.1\t1',
						'World\t2\t2.2\t0',
						'\\.',
						'vacuum analyze default_name;\n'
					].join('\n'));
				});
			});

		});

		it('should convert an XLS file into PGSQL (two sheets)', function() {
			return xls.xlsToPgSqlStream(xlsTwoSheets).then(function(pgsqlStream) {
				var endDefer = when.defer(), data = '';
				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					data.should.equal([
						'set client_encoding to UTF8;',
						'set standard_conforming_strings to on;',
						'create table default_name_Sheet1 (',
						'\tSimple_Text text,',
						'\tSimple_Int integer,',
						'\tSimple_Numeric numeric,',
						'\tSimple_Boolean boolean,',
						'\tprimary key (Simple_Int)',
						');',
						'copy default_name_Sheet1 (Simple_Text, Simple_Int, Simple_Numeric, Simple_Boolean) from stdin;',
						'Hello\t1\t1.1\t1',
						'World\t2\t2.2\t0',
						'\\.',
						'vacuum analyze default_name_Sheet1;',
						'set client_encoding to UTF8;',
						'set standard_conforming_strings to on;',
						'create table default_name_Sheet2 (',
						'\tint integer,',
						'\ttext text',
						');',
						'copy default_name_Sheet2 (int, text) from stdin;',
						'1\ttest',
						'2\tstring',
						'4\there',
						'1\tyo',
						'\\.',
						'vacuum analyze default_name_Sheet2;\n'
					].join('\n'));
				});
			});
		});

		it('should convert an XLS file into PGSQL (two sheets, ONLY SHEET 1)', function() {
			return xls.xlsToPgSqlStream(xlsTwoSheets, {
				xlsSheetNumbers: [ 0 ]
			}).then(function(pgsqlStream) {
				var endDefer = when.defer(), data = '';
				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					data.should.equal([
						'set client_encoding to UTF8;',
						'set standard_conforming_strings to on;',
						'create table default_name (',
						'\tSimple_Text text,',
						'\tSimple_Int integer,',
						'\tSimple_Numeric numeric,',
						'\tSimple_Boolean boolean,',
						'\tprimary key (Simple_Int)',
						');',
						'copy default_name (Simple_Text, Simple_Int, Simple_Numeric, Simple_Boolean) from stdin;',
						'Hello\t1\t1.1\t1',
						'World\t2\t2.2\t0',
						'\\.',
						'vacuum analyze default_name;\n',
					].join('\n'));
				});
			});
		});

		it('should convert an XLS file into PGSQL (two sheets, ONLY SHEET 2)', function() {
			return xls.xlsToPgSqlStream(xlsTwoSheets, {
				xlsSheetNumbers: [ 1 ]
			}).then(function(pgsqlStream) {
				var endDefer = when.defer(), data = '';
				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					data.should.equal([
						'set client_encoding to UTF8;',
						'set standard_conforming_strings to on;',
						'create table default_name (',
						'\tint integer,',
						'\ttext text',
						');',
						'copy default_name (int, text) from stdin;',
						'1\ttest',
						'2\tstring',
						'4\there',
						'1\tyo',
						'\\.',
						'vacuum analyze default_name;\n'
					].join('\n'));
				});
			});
		});

		it('should convert an XLS file into PGSQL (two sheets, specifying both)', function() {
			return xls.xlsToPgSqlStream(xlsTwoSheets, {
				xlsSheetNumbers: [ 0, 1 ]
			}).then(function(pgsqlStream) {
				var endDefer = when.defer(), data = '';
				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					data.should.equal([
						'set client_encoding to UTF8;',
						'set standard_conforming_strings to on;',
						'create table default_name_Sheet1 (',
						'\tSimple_Text text,',
						'\tSimple_Int integer,',
						'\tSimple_Numeric numeric,',
						'\tSimple_Boolean boolean,',
						'\tprimary key (Simple_Int)',
						');',
						'copy default_name_Sheet1 (Simple_Text, Simple_Int, Simple_Numeric, Simple_Boolean) from stdin;',
						'Hello\t1\t1.1\t1',
						'World\t2\t2.2\t0',
						'\\.',
						'vacuum analyze default_name_Sheet1;',
						'set client_encoding to UTF8;',
						'set standard_conforming_strings to on;',
						'create table default_name_Sheet2 (',
						'\tint integer,',
						'\ttext text',
						');',
						'copy default_name_Sheet2 (int, text) from stdin;',
						'1\ttest',
						'2\tstring',
						'4\there',
						'1\tyo',
						'\\.',
						'vacuum analyze default_name_Sheet2;\n'
					].join('\n'));
				});
			});
		});

	});
});
