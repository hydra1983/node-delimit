"use strict";

var fs = require('fs')
, when = require('when')
, nodefn = require('when/node/function')
, json = require('../../../src/convert/json')
, DataSet = require('../../../src/DataSet')
, defines = require('../../../src/defines')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe.only('json', function() {

	var jsonSimple = __dirname + '/files/jsonSimple.json'
	, jsonMulti = __dirname + '/files/jsonMulti.json';

	describe('#readJson()', function() {

		it('should parse the json', function() {
			return json.readJson(jsonSimple).then(function(data) {
				data.should.be.deep.eql({
					"name": "foobar",
					"headers": [
						"one", "two", "three"
					],
					"dataTypes": [
						"integer", "text", "numeric"
					],
					"data": [
						[ 1, "one", 1.1 ],
						[ 2, "two", 2.2 ]
					]
				});
			});
		});

		it('should fail to parse the json', function() {
			return json.readJson('[invalid]').should.eventually.reject;
		});

	});

	describe('#jsonToDataSet()', function() {

		it('should convert a json string into a DataSet', function() {
			return json.readJson(jsonSimple).then(function(jsonObj) {
				var dataset = json.jsonToDataSet(jsonObj, undefined);
				dataset.should.be.instanceOf(DataSet);

				dataset.getHeaders().should.eql(['one', 'two', 'three']);
				dataset.getDataTypes().should.eql([
					defines.INTEGER, defines.TEXT, defines.NUMERIC
				]);
				dataset.getData().should.eql([
					[ 1, 'one', 1.1 ],
					[ 2, 'two', 2.2 ]
				]);
			});
		});

	});

	describe('#jsonToDataSets()', function() {

		it('should convert a json string into an array of DataSets', function() {
			return json.readJson(jsonMulti).then(function(jsonObj) {
				var datasets = json.jsonToDataSets(jsonObj, undefined);

				datasets.should.be.instanceOf(Array);
				datasets.length.should.equal(2);

				datasets[0].should.be.instanceOf(DataSet);
				datasets[0].getHeaders().should.eql(['one','two','three']);
				datasets[0].getDataTypes().should.eql([
					defines.INTEGER, defines.TEXT, defines.NUMERIC
				]);
				datasets[0].getData().should.eql([[1,'one',1.1],[2,'two',2.2]]);

				datasets[1].should.be.instanceOf(DataSet);
				datasets[1].getHeaders().should.eql(['one','two','three']);
				datasets[1].getDataTypes().should.eql([
					defines.INTEGER, defines.TEXT, defines.NUMERIC
				]);
				datasets[1].getData().should.eql([[1,'one',1.1],[2,'two',2.2]]);
			});
		});

	});

	describe('#jsonToPgSql()', function() {

		it('should convert a json string into PgSql', function() {
			var ws = fs.createWriteStream('json2PgSql_0.sql');
			var options = {};

			return json.readJson(jsonSimple).then(function(jsonObj) {
				return json.jsonToPgSql(jsonObj, ws, options);
			}).then(function() {
				ws.end();

				return nodefn.call(
					fs.readFile, 'json2PgSql_0.sql', {encoding: 'utf8'}
				).then(function(data) {
					data.should.be.ok;
					var defer = when.defer();
					fs.unlink('json2PgSql_0.sql', defer.resolve);
					return defer.promise;
				});
			});
		});

		it('should convert a json string into PgSql (multiple creates)', function(done) {
			var ws = fs.createWriteStream('json2PgSql_1.sql');
			var options = {};

			return json.readJson(jsonMulti).then(function(jsonObj) {
				return json.jsonToPgSql(jsonObj, ws, options);
			}).then(function() {
				ws.end();

				return nodefn.call(
					fs.readFile, 'json2PgSql_1.sql', {encoding: 'utf8'}
				).then(function(data) {
					data.should.be.ok;
					var defer = when.defer();
					fs.unlink('json2PgSql_1.sql', defer.resolve);
					return defer.promise;
				});
			});
		});

	});
});
