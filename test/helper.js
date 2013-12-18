"use strict";

var when = require('when')
, helper = require('../src/helper')
, defines = require('../src/defines')
, assert = require('assert')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('helper', function() {

	describe('#getOptions()', function() {

		it('should return the correct defaults', function() {
			var options = helper.getOptions();

			options.should.deep.eql({
				name: 'default_name',
				appendString: '',
				prependString: '',
				headerRow: 0,
				ignoreEmptyHeaders: false,
				forceTypes: undefined,
				ignoreTypes: undefined,
				useHeaders: undefined,
				maintainHeaders: false,
				dataOnly: false,
				createOnly: false,
				insertStatements: false
			});
		});

		it.skip('should set a name');
		it.skip('should set an append string');
		it.skip('should set a prepend string');
		it.skip('should set the header row');
		it.skip('should set ignoreEmptyHeaders');

		it('should set force types (object passed in)', function() {

			var options = helper.getOptions({
				forceTypes: {
					'foo': 'boolean',
					'bar': 'text'
				}
			});

			options.forceTypes.should.deep.eql({
				'foo': defines.BOOLEAN,
				'bar': defines.TEXT
			});
		});

		it('should set force types (string passed in)', function() {
			var options = helper.getOptions({
				forceTypes: 'foo:boolean,bar:text'
			});

			options.forceTypes.should.deep.eql({
				'foo': defines.BOOLEAN,
				'bar': defines.TEXT
			});
		});

		it('should set normalize strings (object)', function() {
			var options = helper.getOptions({
				forceTypes: {
					'foo bar': 'boolean',
					'0': 'text'
				}
			});

			options.forceTypes.should.deep.eql({
				'foo_bar': defines.BOOLEAN,
				'column_0': defines.TEXT
			});
		});

		it('should set force types (string)', function() {
			var options = helper.getOptions({
				forceTypes: 'foo bar:boolean,0:text'
			});

			options.forceTypes.should.deep.eql({
				'foo_bar': defines.BOOLEAN,
				'column_0': defines.TEXT
			});
		});

		it.skip('should set ignore types');
		it.skip('should set the headers to use');
		it.skip('should set maintain headers');
		it.skip('should set data only');
		it.skip('should set create only');
		it.skip('should set insert only');

		it.only('should set xls sheet numbers', function() {
			var options = helper.getOptions();
			assert.equal(options.xlsSheetNumbers, undefined);
			options = helper.getOptions({ xlsSheetNumbers: [1, 2, 3] });
			options.xlsSheetNumbers.should.eql([1, 2 ,3]);
			options = helper.getOptions({ xlsSheetNumbers: ['1', '2', '3'] });
			options.xlsSheetNumbers.should.eql([1, 2 ,3]);
			options = helper.getOptions({ xlsSheetNumbers: '1,2,3' });
			options.xlsSheetNumbers.should.eql([1, 2 ,3]);
		});

	});

	describe('#normalizeString()', function() {
		it('should remove all surrounding whitespace', function() {
			helper.normalizeString("         column_name      ")
				.should.equal("column_name");
		});
		it('should replace all spaces with underscores', function() {
			helper.normalizeString("column name")
				.should.equal("column_name");
		});
		it('should remove all characters that are not [A-Za-z09_]', function() {
			helper.normalizeString("!#!#!#column_name@@@@@@####")
				.should.equal("column_name");
		});
	});

	describe('#normalizeHeader()', function() {
		it('should replace all header names starting with a number', function() {
			var headers = "88";
			helper.normalizeHeader(headers).should.eql("column_88");
		});
	});

});
