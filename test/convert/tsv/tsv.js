"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, tsv = require('../../../src/convert/tsv')
, defines = require('../../../src/defines')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

/* global describe */
/* global it */

describe('tsv', function() {
	var tsvSimple = __dirname + '/files/tsvSimple.tsv'
	, tsvSimple1100 = __dirname + '/files/tsvSimple1100.tsv'
	, tsvMissingHeaders = __dirname + '/files/tsvMissingHeaders.tsv'
	, tsvMissingHeaders2 = __dirname + '/files/tsvMissingHeaders2.tsv'
	, tsvTwoSheets = __dirname + '/files/tsvTwoSheets.tsv'
	, tsvEmptyRow = __dirname + '/files/tsvEmptyRow.tsv';

	describe('#tsvToPgsqlStream()', function() {

		it('should convert a TSV file into PGSQL (simple)', function() {
			return tsv.toPgsqlStream(fs.createReadStream(tsvSimple))
			.then(function(pgsqlStream) {
				var endDefer = when.defer()
				, data = '';

				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					data.should.be.ok;
				});
			});
		});

		it('should convert a TSV file into PGSQL (skip empty header names)', function(done) {
			return tsv.toPgsqlStream(
				fs.createReadStream(tsvMissingHeaders),
				{ ignoreEmptyHeaders: true })
			.then(function(pgsqlStream) {
				var endDefer = when.defer()
				, data = '';

				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					data.indexOf(
						"one\t4.4\n" +
						"two\t5.5\n" +
						"three\t6.6\n").should.not.equal(-1);
				});
			});
		});

		it('should only output data SQL (data only = true)', function(done) {
			return tsv.toPgsqlStream(fs.createReadStream(tsvSimple), {
					ignoreEmptyHeaders: true,
					dataOnly: true
			}).then(function(pgsqlStream) {
				var endDefer = when.defer()
				, data = '';

				pgsqlStream.on('data', function(chunk) { data += chunk; });
				pgsqlStream.on('end', endDefer.resolve);
				return endDefer.promise.then(function() {
					// data should exist
					data.indexOf("copy").should.not.equal(-1);
					// create shouldn't
					data.indexOf("create table").should.equal(-1);
				});
			});
		});

	});
});
