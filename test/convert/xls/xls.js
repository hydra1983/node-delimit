"use strict";

var fs = require('fs')
, path = require('path')
, when = require('when')
, nodefn = require('when/node/function')
, xls = require('../../../src/convert/xls/xls.js')
, defines = require('../../../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised')
, testConfig = require('../../testConfig');

chai.Should();
chai.use(chaiAsPromised);
require('mocha-as-promised')();

describe('xls', function() {

	var options
	, xlsSimple = __dirname + '/files/xlsSimple.xls'
	, xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls'
	, xlsInvalid = __dirname + '/files/xlsInvalid.xls';

	describe('#xlsToPgSql()', function() {
		beforeEach(function() {
			options = { tablename: 'trevor.test' };
		});

		it.only('should convert an XLS file into PGSQL (one sheet)', function() {
			var tmpFile = path.join(testConfig.tmpDir,'t1.sql')
			, ws = fs.createWriteStream(tmpFile);
			return xls.xlsToPgSql(xlsSimple, ws, options).then(function() {
				ws.end();
				return nodefn.call(fs.readFile, tmpFile, {encoding: 'utf8'})
				.then(function(data) {
					console.error(data); void('debug');
					data.should.equal(
						'set client_encoding to UTF8;\n' +
						'set standard_conforming_strings to on;\n' +
						'create table default_name (\n' +
						'        Simple_Text text,\n' +
						'        Simple_Int text,\n' +
						'        Simple_Numeric text,\n' +
						'        Simple_Boolean text\n' +
						');\n' +
						'copy default_name (Simple_Text, Simple_Int, Simple_Numeric, Simple_Boolean) from stdin;\n' +
						'Hello\t1.0\t1.1\t1\n' +
						'World\t2.0\t2.2\t0\n' +
						'\\.\n' +
						'vacuum analyze default_name;'
					);
					return nodefn.call(fs.unlink, tmpFile);
				});
			});
		});

		it('should convert an XLS file into PGSQL (two sheets)', function() {
			var tmpFile = path.join(testConfig.tmpDir,'t2.sql')
			, ws = fs.createWriteStream(tmpFile);
			return xls.xlsToPgSql(xlsTwoSheets, ws, options).then(function() {
				ws.end();
				return nodefn.call(fs.readFile, tmpFile, {encoding: 'utf8'})
				.then(function(data) {
					data.should.be.ok;
					var defer = when.defer();
					fs.unlink(tmpFile, defer.resolve);
					return defer.promise;
				});
			});
		});
	});
});
