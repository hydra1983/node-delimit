"use strict";

var fs = require('fs')
, when = require('when')
, csv2tsv = require('../../../src/convert/csv/csv2tsv.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe('csv2tsv', function() {

	var csvSimple = __dirname + '/files/csvSimple.csv';

	describe('#csv2tsv()', function() {

		it('should create the temporary tsv file', function() {
			return csv2tsv(csvSimple).then(function(tsvStream) {

				var endDefer = when.defer(), data = '';
				tsvStream.on('data', function(chunk) { data += chunk; });
				tsvStream.on('end', endDefer.resolve);

				return endDefer.promise.then(function() {
					data.should.equal([
						'First Name\tLast Name',
						'Trevor\tSenior',
						'James\tNolan',
						'Henry\tSmith\n'
					].join('\n'));
				});
			});
		});

	});

});
