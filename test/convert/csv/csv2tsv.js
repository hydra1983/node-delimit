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
			return csv2tsv(csvSimple).then(function(tempPath) {
				var defer = when.defer();
				fs.exists(tempPath, defer.resolve);
				return defer.promise.then(function(exists) {
					exists.should.be.true;
					var defer = when.defer();
					fs.unlink(tempPath, defer.resolve);
					return defer.promise;
				});
			});
		});

	});

});
