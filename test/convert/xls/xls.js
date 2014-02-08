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

/* global describe */
/* global it */

describe('xls', function() {

	var xlsSimple = __dirname + '/files/xlsSimple.xls'
	, xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls'
	, xlsInvalid = __dirname + '/files/xlsInvalid.xls';

	describe('#toPgSql()', function() {

		it('should convert an XLS file into PGSQL (one sheet)', function() {
			return xls.toPgSql(xlsSimple).then(function(pgsqlStream) {
				var endDefer = when.defer()
				, data = '';

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

		it('should convert an XLS file into PGSQL (two sheets, ONLY SHEET 1)', function() {
			return xls.toPgSql(xlsTwoSheets, {
				xlsSheetNumbers: [ 0 ]
			})
			.then(function(pgsqlStream) {
				var endDefer = when.defer()
				, data = '';

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
			return xls.toPgSql(xlsTwoSheets, {
				xlsSheetNumbers: [ 1 ]
			})
			.then(function(pgsqlStream) {
				var endDefer = when.defer()
				, data = '';

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

	});

	describe('#getTsvStream()', function() {
		it('should get back the proper tsv stream (one sheet)', function() {
			return xls.getTsvStream(xlsSimple).then(function(tsvStream) {
				var endDefer = when.defer()
				, data = '';

				tsvStream.on('data', function(chunk) {
					data += chunk.toString();
				});

				tsvStream.on('end', endDefer.resolve);

				return endDefer.promise.then(function() {
					data.should.equal([
						'Simple_Text\tSimple_Int\tSimple_Numeric\tSimple_Boolean',
						'Hello\t1.0\t1.1\t1',
						'World\t2.0\t2.2\t0',
					].join('\r\n') + '\r\n');
				});
			});
		});

		it('should get back the proper tsv stream (two sheets, ONLY SHEET 2)', function() {
			return xls.getTsvStream(xlsSimple).then(function(tsvStream) {
				var endDefer = when.defer()
				, data = '';

				tsvStream.on('data', function(chunk) {
					data += chunk.toString();
				});

				tsvStream.on('end', endDefer.resolve);

				return endDefer.promise.then(function() {
					data.should.equal([
						'Simple_Text\tSimple_Int\tSimple_Numeric\tSimple_Boolean',
						'Hello\t1.0\t1.1\t1',
						'World\t2.0\t2.2\t0',
					].join('\r\n') + '\r\n');
				});
			});
		});
	});

	describe('#toTsvDir()', function() {
		it('get tsv dir & count files - 1 sheet', function() {
			return xls._test.toTsvDir(xlsSimple).then(function(tempDir) {
				tempDir.should.be.a('string');
				tempDir.should.not.be.empty;
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(1);
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});
		});
		it('get tsv dir & count files - 2 sheets', function() {
			return xls._test.toTsvDir(xlsTwoSheets).then(function(tempDir) {
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(2);
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});
		});
		it('get specific sheets', function() {
			var getSheet0 = xls._test.toTsvDir(xlsTwoSheets, [0])
			.then(function(tempDir) {
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(1);
					files[0].match(/^00000_.*\.Sheet1/).should.be.ok;
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});

			var getSheet1 = xls._test.toTsvDir(xlsTwoSheets, [1])
			.then(function(tempDir) {
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(1);
					files[0].match(/^00001_.*\.Sheet2/).should.be.ok;
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});

			var getSheet0and1 = xls._test.toTsvDir(xlsTwoSheets, [0, 1])
			.then(function(tempDir) {
				tempDir.should.be.a('string');
				tempDir.should.not.be.empty;
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(2);
					files[0].match(/^00000_.*\.Sheet1$/).should.be.ok;
					files[1].match(/^00001_.*\.Sheet2$/).should.be.ok;
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});

			var getInvalidSheet = xls._test.toTsvDir(xlsTwoSheets, [1000])
			.then(function(tempDir) {
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(0);
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});

			return when.all([
				getSheet0, getSheet1, getSheet0and1, getInvalidSheet ]);
		});
		it('error if the file does not exist', function() {
			return xls._test.toTsvDir('fake.png').should.be.rejectedWith(
				'fake.png does not exist');
		});
		it('error if there was a problem with python', function() {
			return xls._test.toTsvDir(xlsInvalid).should.be.rejectedWith(
				'There was a problem parsing the file ' + xlsInvalid);
		});
	});

	describe('#getTsvFilePaths()', function() {
		it('should get back a file path for one file', function() {
			return xls._test.toTsvDir(xlsSimple).then(function(tempDir) {
				return xls._test.getTsvFilePaths(tempDir)
				.then(function(filePaths) {
					filePaths.length.should.equal(1);
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});
		});
		it('should throw an error (dir does not exist)', function() {
			return xls._test.getTsvFilePaths('bogusDir').should.be
				.rejectedWith('Directory bogusDir does not exist');
		});
	});

	describe('#convertAndGetInfo()', function() {
		it('should return an object containing information about the newly created TSV files (one sheet / file)', function () {

			return xls._test.convertAndGetInfo(xlsSimple).then(function(info) {
				info.should.have.property('tempDir');
				info.should.have.property('files');
				info.tempDir.should.be.ok;
				info.files.length.should.equal(1);
				info.files[0].sheetName.should.eql("Sheet1");
				info.files[0].path.should.ok;
				var defer = when.defer();
				fs.rmdir(info.tempDir, defer.resolve);
				return defer.promise;
			});
		});

		it('should return an object containing information about the newly created TSV files (two sheets / files)', function () {
			return xls._test.convertAndGetInfo(xlsTwoSheets).then(function(info) {
				info.should.have.property('tempDir');
				info.should.have.property('files');
				info.tempDir.should.be.ok;
				info.files[0].path.should.be.ok;
				info.files[1].path.should.be.ok;
				info.files[0].sheetName.should.be.ok;
				info.files[1].sheetName.should.be.ok;
				var defer = when.defer();
				fs.rmdir(info.tempDir, defer.resolve);
				return defer.promise;
			});
		});
	});


});
