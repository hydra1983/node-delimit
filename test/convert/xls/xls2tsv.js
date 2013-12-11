"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, xls2tsv = require('../../../src/convert/xls/xls2tsv.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('xls2tsv', function() {

	var xlsSimple = __dirname + '/files/xlsSimple.xls'
	, xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls'
	, xlsInvalid = __dirname + '/files/xlsInvalid.xls';

	describe('xls2tsv.xls2tsv()', function() {
		it('get tsv dir & count files - 1 sheet', function() {
			return xls2tsv.test.xls2tsv(xlsSimple).then(function(tempDir) {
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
			return xls2tsv.test.xls2tsv(xlsTwoSheets).then(function(tempDir) {
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(2);
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});
		});
		it('get specific sheets', function() {
			var getSheet0 = xls2tsv.test.xls2tsv(xlsTwoSheets, [0])
			.then(function(tempDir) {
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(1);
					files[0].match(/^00000_.*\.Sheet1/).should.be.ok;
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});

			var getSheet1 = xls2tsv.test.xls2tsv(xlsTwoSheets, [1])
			.then(function(tempDir) {
				return nodefn.call(fs.readdir, tempDir).then(function(files) {
					files.length.should.equal(1);
					files[0].match(/^00001_.*\.Sheet2/).should.be.ok;
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});

			var getSheet0and1 = xls2tsv.test.xls2tsv(xlsTwoSheets, [0, 1])
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

			var getInvalidSheet = xls2tsv.test.xls2tsv(xlsTwoSheets, [1000])
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
			return xls2tsv.test.xls2tsv('fake.png').should.be.rejectedWith(
				'File fake.png does not exist');
		});
		it('error if there was a problem with python', function() {
			return xls2tsv.test.xls2tsv(xlsInvalid).should.be.rejectedWith(
				'There was a problem parsing the file ' + xlsInvalid);
		});
	});

	describe('#xls2tsv.getTsvFilePaths()', function() {
		it('should get back a file path for one file', function() {
			return xls2tsv.test.xls2tsv(xlsSimple).then(function(tempDir) {
				return xls2tsv.test.getTsvFilePaths(tempDir)
				.then(function(filePaths) {
					filePaths.length.should.equal(1);
					var defer = when.defer();
					fs.rmdir(tempDir, defer.resolve);
					return defer.promise;
				});
			});
		});
		it('should throw an error (dir does not exist)', function() {
			return xls2tsv.test.getTsvFilePaths('bogusDir').should.be
				.rejectedWith('Directory bogusDir does not exist');
		});
	});

	describe('#module.exports()', function() {
		it('should return an object containing information about the newly created TSV files (one sheet / file)', function () {

			return xls2tsv(xlsSimple).then(function(info) {
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
			return xls2tsv(xlsTwoSheets).then(function(info) {
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
