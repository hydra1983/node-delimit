"use strict";

var loaders = require('../src/loaders.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('loaders', function() {

	describe('#getTsvLoader()', function() {

		var tsvLoader = loaders.getTsvLoader();

		describe('#lineContinues()', function() {
			it('should determine that the line should continue', function() {
				tsvLoader.lineContinues('"').should.be.true;
				tsvLoader.lineContinues('\t"').should.be.true;
				tsvLoader.lineContinues('test\t"').should.be.true;
				tsvLoader.lineContinues('"test"').should.be.false;
				tsvLoader.lineContinues('"middle"middle"').should.be.false;
			});
		});

		describe('#lineEnds()', function() {
			it('should determine that the line should end', function() {
				tsvLoader.lineEnds('"').should.be.true;
				tsvLoader.lineEnds('something"').should.be.true;
			});
		});

		describe('#toDataRow()', function() {
			it('should convert a tsv string into a 1D array', function() {
				var tsvLoader = loaders.getTsvLoader();
				tsvLoader.toDataRow("test").should.eql(['test']);
				tsvLoader.toDataRow("test\tstring").should.eql(['test', 'string']);
				tsvLoader.toDataRow("\t").should.eql(['', '']);
			});
		});

	});
});
