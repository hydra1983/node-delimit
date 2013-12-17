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

	var xlsSimple = __dirname + '/files/xlsSimple.xls'
	, xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls'
	, xlsInvalid = __dirname + '/files/xlsInvalid.xls';

	describe('#xlsToPgSql()', function() {

		it('should convert an XLS file into PGSQL (one sheet)', function() {
			var tmpFile = path.join(testConfig.tmpDir,'t1.sql')
			, ws = fs.createWriteStream(tmpFile);
			return xls.xlsToPgSql(xlsSimple, ws).then(function() {
				ws.end();
				return nodefn.call(fs.readFile, tmpFile, {encoding: 'utf8'})
				.then(function(data) {
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
					return nodefn.call(fs.unlink, tmpFile);
				});
			});
		});

		it.only('should convert an XLS file into PGSQL (two sheets)', function() {
			var tmpFile = path.join(testConfig.tmpDir,'t2.sql')
			, ws = fs.createWriteStream(tmpFile);
			return xls.xlsToPgSql(xlsTwoSheets, ws).then(function() {
				ws.end();
				return nodefn.call(fs.readFile, tmpFile, {encoding: 'utf8'})
				.then(function(data) {
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

					return nodefn.call(fs.unlink, tmpFile);
				});
			});
		});

	});
});
