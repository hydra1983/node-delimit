"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, xls = require('../../../src/convert/xls/xls.js')
, defines = require('../../../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('xls', function() {

	var options
	, xlsSimple = __dirname + '/files/xlsSimple.xls'
	, xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls'
	, xlsInvalid = __dirname + '/files/xlsInvalid.xls';

	describe('#xlsToPgSql()', function() {
		beforeEach(function() {
			options = { tablename: 'trevor.test' };
		});

		it('should convert an XLS file into PGSQL (one sheet)', function() {
			var ws = fs.createWriteStream('t1.sql');
			return xls.xlsToPgSql(xlsSimple, ws, options).then(function() {
				ws.end();
				return nodefn.call(fs.readFile, 't1.sql', {encoding: 'UTF8'})
				.then(function(data) {
					data.should.be.ok;
					var defer = when.defer();
					fs.unlink('t1.sql', defer.resolve);
					return defer.promise;
				});
			});
		});

		it('should convert an XLS file into PGSQL (two sheets)', function(done) {
			var ws = fs.createWriteStream('t2.sql');
			return xls.xlsToPgSql(xlsTwoSheets, ws, options).then(function() {
				ws.end();
				return nodefn.call(fs.readFile, 't2.sql', {encoding: 'UTF8'})
				.then(function(data) {
					data.should.be.ok;
					var defer = when.defer();
					fs.unlink('t2.sql', defer.resolve);
					return defer.promise;
				});
			});
		});
	});
});
