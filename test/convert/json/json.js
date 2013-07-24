#!/usr/bin/env node

var should  = require('should'),
	json = require('../../../src/convert/json/json.js'),
    DataSet = require('../../../src/DataSet.js'),
    fs = require('fs'),
    defines = require('../../../src/defines.js');

var
	jsonSimple = __dirname + '/files/jsonSimple.json',
	jsonMulti = __dirname + '/files/jsonMulti.json';

describe('json', function() {
	describe('#jsonToDataSet()', function() {
		it('should convert a json string into a DataSet', function(done) {
			json.readJson(jsonSimple, function(jsonObj) {
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
				done();
			});
		});
	});

	describe('#jsonToDataSets()', function() {
		it('should convert a json string into an array of DataSets', function(done) {
			json.readJson(jsonMulti, function(jsonObj) {
				var datasets = json.jsonToDataSets(jsonObj, undefined);

				datasets.should.be.instanceOf(Array);
				datasets.length.should.equal(2);

				datasets[0].should.be.instanceOf(DataSet);
				datasets[0].getHeaders().should.eql(['one','two','three']);
				datasets[0].getDataTypes().should.eql([defines.INTEGER, defines.TEXT, defines.NUMERIC]);
				datasets[0].getData().should.eql([[1,'one',1.1],[2,'two',2.2]]);

				datasets[1].should.be.instanceOf(DataSet);
				datasets[1].getHeaders().should.eql(['one','two','three']);
				datasets[1].getDataTypes().should.eql([defines.INTEGER, defines.TEXT, defines.NUMERIC]);
				datasets[1].getData().should.eql([[1,'one',1.1],[2,'two',2.2]]);

				done();
			});
		});
	});

	describe('#jsonToPgSql()', function() {
		it('should convert a json string into PgSql', function(done) {
			var ws = fs.createWriteStream('json2PgSql_0.sql');
			var options = {};
			json.readJson(jsonSimple, function(jsonObj) {
				json.jsonToPgSql(jsonObj, ws, options, function doneCb() {
				    ws.end();

				    fs.readFile('json2PgSql_0.sql', {encoding: 'UTF8'}, function(error, data) {
				        if(error) { throw error; }
				        data.should.be.ok;
				        fs.unlink('json2PgSql_0.sql', function() { done(); });
				    });

				});
			});
		});
		it('should convert a json string into PgSql (multiple creates)', function(done) {
			var ws = fs.createWriteStream('json2PgSql_0.sql');
			var options = {};
			json.readJson(jsonMulti, function(jsonObj) {
				json.jsonToPgSql(jsonObj, ws, options, function doneCb() {
				    ws.end();

				    fs.readFile('json2PgSql_0.sql', {encoding: 'UTF8'}, function(error, data) {
				        if(error) { throw error; }
				        data.should.be.ok;
				        fs.unlink('json2PgSql_0.sql', function() { done(); });
				    });

				});
			});
		});
	});
});