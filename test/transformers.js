"use strict";

var transformers = require('../src/transformers.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('transformers', function() {
	describe('#normalizeString()', function() {
		it('should remove all surrounding whitespace', function() {
			transformers.normalizeString("         column_name      ")
				.should.equal("column_name");
		});
		it('should replace all spaces with underscores', function() {
			transformers.normalizeString("column name")
				.should.equal("column_name");
		});
		it('should remove all characters that are not [A-Za-z09_]', function() {
			transformers.normalizeString("!#!#!#column_name@@@@@@####")
				.should.equal("column_name");
		});
	});

	describe('#normalizeHeader()', function() {
		it('should replace all header names starting with a number', function() {
			var headers = "88";
			transformers.normalizeHeader(headers).should.eql("column_88");
		});
	});

	describe('#removeIndicies()', function() {
		it('should remove the indexes provided from the array (first section)', function() {
			transformers.removeIndexes([0, 1, 2], ['0', '1', '2', '3'])
				.should.eql(['3']);
		});
		it('should remove the indexes provided from the array (end section)', function() {
			transformers.removeIndexes([1, 2, 3], ['0', '1', '2', '3'])
				.should.eql(['0']);
		});
		it('should remove the indexes provided from the array (mid section)', function() {
			transformers.removeIndexes([1, 2], ['0', '1', '2', '3'])
				.should.eql(['0', '3']);
		});
		it('should remove the indexes provided from the array (mixed)', function() {
			transformers.removeIndexes([1, 0, 3], ['0', '1', '2', '3'])
				.should.eql(['2']);
		});
		it('should not remove any indexes', function() {
			transformers.removeIndexes([], ['0', '1', '2', '3'])
				.should.eql(['0', '1', '2', '3']);
			(function() {
				transformers.removeIndexes(undefined, ['0', '1', '2', '3'])
					.should.eql(['0', '1', '2', '3']);
			}).should.throw;
		});
	});
});
