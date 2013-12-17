"use strict";

var DataSet = require('../src/DataSet.js')
, defines = require('../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();

describe.only('DataSet', function() {

	var dataset;

	beforeEach(function() {
		var headers = ["Integer", "Numeric", "Text", "Boolean"];
		var dataTypes =
			[defines.INTEGER, defines.NUMERIC, defines.TEXT, defines.BOOLEAN];
		var data = [
			[9001, 5.5, "Hello World", true],
			[5555555, 9.1, "foo bar", false]
		];
		var primary = 0;
		var name = "My Dataset";

		dataset = new DataSet(headers, dataTypes, data, primary, name);
	});

	describe('#INIT', function() {

		it('should create a new instance of DataSet', function() {
			dataset = new DataSet(undefined, undefined, undefined);
			dataset.should.be.instanceOf(DataSet);
		});

		it('should not create a new instance of DataSet (invalid parameters)', function() {
			(function() {
				new DataSet('not array', [], []);
			}).should.throw('headers should be an instance of an array');
			(function() {
				new DataSet([], 'not array', []);
			}).should.throw('dataTypes should be an instance of an array');
			(function() {
				new DataSet([], [], 'not array');
			}).should.throw('data should be an instance of an array');
			(function() {
				new DataSet([], [], ['not', 'a', '2D array']);
			}).should.throw('data should be an array of arrays');
		});

		it('should get the proper data range', function() {
			dataset = new DataSet([], [], []);
			dataset.getDataRange().should.equal(0);

			dataset = new DataSet(['header'], [defines.INTEGER], undefined);
			dataset.getDataRange().should.equal(1);

			dataset = new DataSet(undefined, [defines.INTEGER], [['some data']]);
			dataset.getDataRange().should.equal(1);

			dataset = new DataSet(['header'], undefined, [['some data']]);
			dataset.getDataRange().should.equal(1);
		});

		it('should error due to different data ranges', function() {
			(function() {
				dataset = new DataSet(['header'], [defines.INTEGER, defines.TEXT], []);
			}).should.throw('The data provided has mis-matched ranges');
		});

		it('should store values properly', function() {
			dataset.getHeaders().should.eql(
				["Integer", "Numeric", "Text", "Boolean"]);
			dataset.getDataTypes().should.eql(
				[defines.INTEGER, defines.NUMERIC, defines.TEXT, defines.BOOLEAN]);
			dataset.getData().should.eql([
				[9001, 5.5, "Hello World", true],
				[5555555, 9.1, "foo bar", false]
			]);

			dataset.getPrimaryColumn().should.equal(0);
		});

	});

	describe('#setName()', function() {

		it('should set the name!', function() {
			dataset.setName("events");
			dataset.getName().should.equal("events");
		});

	});

	describe('#getName()', function() {

		it('should get the name!', function() {
			dataset.getName().should.equal("My Dataset");
		});

	});

	describe('#setPrimaryColumn()', function() {

		it('should fail to change the primary column (out of range)', function() {
			(function() {
				dataset.setPrimaryColumn(4);
			}).should.throw('Invalid primary column. It falls outside of the dataset range');
		});

		it('should change the primary column just fine', function() {
			dataset.setPrimaryColumn(1);
			dataset.getPrimaryColumn().should.equal(1);
		});

	});

	describe('#setHeaders()', function() {

		it('should fail to change the headers (out of range)', function () {
			(function() {
				dataset.setHeaders(['0', '1', '2', '3', '4']);
			}).should.throw('Invalid header length. It does not match the data range');

			(function() {
				dataset.setHeaders(['0']);
			}).should.throw('Invalid header length. It does not match the data range');
		});

		it('should change the headers just fine', function() {
			dataset.setHeaders(['0', '1', '2', '3']);
			dataset.getHeaders().should.eql(['0', '1', '2', '3']);
		});

		it('should change the data range (because it is the first thing in this DataSet)', function() {
			dataset = new DataSet();
			dataset.getDataRange().should.equal(-1);
			dataset.setHeaders(['0', '1', '2', '3']);
			dataset.getDataRange().should.equal(4);
		});

	});

	describe('#setDataTypes()', function() {

		it('should fail to change the dataTypes (out of range)', function () {
			(function() {
				dataset.setDataTypes([
					defines.TEXT,
					defines.TEXT,
					defines.TEXT,
					defines.TEXT,
					defines.TEXT
				]);
			}).should.throw('Invalid dataTypes length. It does not match the data range');

			(function() {
				dataset.setDataTypes([defines.TEXT]);
			}).should.throw('Invalid dataTypes length. It does not match the data range');
		});

		it('should change the dataTypes just fine', function() {
			dataset.setDataTypes([
				defines.TEXT,
				defines.TEXT,
				defines.TEXT,
				defines.TEXT
			]);
			dataset.getDataTypes().should.eql([
				defines.TEXT,
				defines.TEXT,
				defines.TEXT,
				defines.TEXT
			]);
		});

		it('should change the data range (because it is the first thing in this DataSet)', function() {
			dataset = new DataSet();
			dataset.getDataRange().should.equal(-1);
			dataset.setDataTypes([
				defines.TEXT,
				defines.TEXT,
				defines.TEXT,
				defines.TEXT
			]);
			dataset.getDataRange().should.equal(4);
		});

	});

	describe('#setData()', function() {

		it('should fail to change the data (out of range)', function () {
			(function() {
				dataset.setData([
					['0', '1', '2', '3', '4']
				]);
			}).should.throw('Invalid data width. It does not match the data range');
			(function() {
				dataset.setData([
					['0']
				]);
			}).should.throw('Invalid data width. It does not match the data range');
			(function() {
				dataset.setData();
			}).should.throw('Invalid data width. It does not match the data range');
		});

		it('should change the data just fine', function() {
			dataset.setData([
				['0', '1', '2', '3']
			]);
			dataset.getData().should.eql([
				['0', '1', '2', '3']
			]);
		});

		it('should change the data range (because it is the first thing in this DataSet)', function() {
			dataset = new DataSet();
			dataset.getDataRange().should.equal(-1);
			dataset.setData([
				['0', '1', '2', '3']
			]);
			dataset.getDataRange().should.equal(4);
		});

	});

	describe('#setSingleHeader()', function() {

		it('should change a value of a DataSet header', function() {
			dataset.setSingleHeader(0, "New");
			dataset.getHeaders()[0].should.equal("New");
		});

		it('should not change the value of a DataSet header (out of range)', function() {
			(function() {
				dataset.setSingleHeader(100, "New");
			}).should.throw('Can not change header, column index out of range');

			(function() {
				dataset.setSingleHeader(-1, "New");
			}).should.throw('Can not change header, column index out of range');
		});

		it('should not change the value, does not exist', function() {
			dataset = new DataSet();
			(function() {
				dataset.setSingleHeader(1, "New");
			}).should.throw('Headers are not defined yet! Unable to modify');
		});

	});

	describe('#setSingleDataType', function() {

		it('should change a value of a DataSet data type', function() {
			dataset.setSingleDataType(0, defines.TEXT);
			dataset.getDataTypes()[0].should.equal(defines.TEXT);
		});

		it('should not change the value of a DataSet data type (out of range)', function() {
			(function() {
				dataset.setSingleDataType(100, defines.TEXT);
			}).should.throw('Can not change data type, column index out of range');

			(function() {
				dataset.setSingleDataType(-1, defines.TEXT);
			}).should.throw('Can not change data type, column index out of range');
		});

		it('should not change the value, does not exist', function() {
			dataset = new DataSet();
			(function() {
				dataset.setSingleDataType(1, "New");
			}).should.throw('DataTypes are not defined yet! Unable to modify');
		});

	});

	describe('#addDataRow()', function() {

		it('should add a data row to the DataSet', function() {
			dataset.getData().length.should.equal(2);
			dataset.addDataRow([ "value", "value", 0, 0 ]);
			dataset.getData().length.should.equal(3);
			dataset.getData()[2].should.eql([
				"value", "value", 0, 0
			]);
		});

		it('should adjust the data range in an empty DataSet', function() {
			dataset = new DataSet();
			dataset.getDataRange().should.equal(-1);

			dataset.addDataRow([ "value", "value", 0, 0 ]);
			dataset.getData().length.should.equal(1);
			dataset.getData()[0].should.eql([
				"value", "value", 0, 0
			]);
			//
			dataset.getDataRange().should.equal(4);
		});

		it('should handle cases where the dataset is undefined (range has already been set)', function() {
			dataset = new DataSet();
			dataset.getDataRange().should.equal(-1);
			dataset.setHeaders(['testHeader']);
			dataset.getDataRange().should.equal(1);

			dataset.addDataRow([1]);

			dataset.getData().should.eql([
				[1]
			]);
		});

		it('should throw an error (invalid type)', function() {
			(function() {
				dataset.addDataRow(undefined);
			}).should.throw('dataRow is undefined or is not an array');
			(function() {
				dataset.addDataRow('hello');
			}).should.throw('dataRow is undefined or is not an array');
		});

		it('should throw an error (not enough data in array)', function() {
			(function() {
				dataset.addDataRow([]);
			}).should.throw('You must provide at least one element');
		});

		it('should throw an error (data width does not match)', function() {
			(function() {
				dataset.addDataRow([ 1, 2, 3, 4, 5 ]);
			}).should.throw('Can not add this data row - width does not match the data range');
		});

	});

	describe('#testColumnByIndex', function() {

		it('should throw an error stating that there is not a callback', function() {
			(function() {
				dataset.testColumnByIndex(0);
			}).should.throw('This function requires a callback function to operate on items in a column and return true or false accordingly');
		});

		it('should throw an error stating that the match precision is not within the correct range (0-1)', function() {
			(function() {
				dataset.testColumnByIndex(0, function(){}, 1.1);
			}).should.throw('Match precision is not within allowed range of 0-1');

			(function() {
				dataset.testColumnByIndex(0, function(){}, -0.1);
			}).should.throw('Match precision is not within allowed range of 0-1');
		});

		it('should run a function successfully on a column', function() {
			var headers, dataTypes, data, dataset;
			headers = [0];
			dataTypes = [defines.INTEGER];
			data = [
				[ 100 ],
				[ 200 ],
				[ 300 ]
			];
			dataset = new DataSet(headers, dataTypes, data);

			dataset.testColumnByIndex(0, function(item_in_column) {
				if (item_in_column > 0) {
					return true;
				} else {
					return false;
				}
			}).should.be.true;
		});

		it('should fail to run a function successfully on a column', function() {
			var headers, dataTypes, data, dataset;
			headers = [0];
			dataTypes = [defines.INTEGER];
			data = [
				[ -100 ],
				[ -200 ],
				[ -300 ]
			];
			dataset = new DataSet(headers, dataTypes, data);

			dataset.testColumnByIndex(0, function(item_in_column) {
				if (item_in_column > 0) {
					return true;
				} else {
					return false;
				}
			}).should.not.be.true;
		});

		it('should run a function successfully on a column (majority matched function criteria)', function() {
			var headers, dataTypes, data, dataset;
			headers = [0];
			dataTypes = [defines.INTEGER];
			data = [
				[ 100 ],
				[ 100 ],
				[ -500 ],
				[ -500 ]
			];
			dataset = new DataSet(headers, dataTypes, data);

			dataset.testColumnByIndex(0, function(item_in_column) {
				if (item_in_column > 0) {
					return true;
				} else {
					return false;
				}
			}, 0.5).should.be.true;
		});

		it('should fail to run a function successfully on a column (majority failed to match function criteria)', function() {
			var headers, dataTypes, data, dataset;
			headers = [0];
			dataTypes = [defines.INTEGER];
			data = [
				[ 100 ],
				[ -500 ],
				[ -500 ],
				[ -500 ]
			];
			dataset = new DataSet(headers, dataTypes, data);

			dataset.testColumnByIndex(0, function(item_in_column) {
				if (item_in_column > 0) {
					return true;
				} else {
					return false;
				}
			}, 0.5).should.not.be.true;
		});

	});

	describe('#getColumnByIndex()', function() {

		it('should return array of a columns contents (by column index)', function() {
			var headers = ["Column 1", "Column 2", "Column 3"];
			var dataTypes = [defines.TEXT, defines.NUMERIC, defines.INTEGER];
			var data = [
				["Sample Data", 5.5, 96],
				["More Data!!", 6.6, 12]
			];
			dataset = new DataSet(headers, dataTypes, data);

			dataset.getColumnByIndex(0).should.eql(["Sample Data", "More Data!!"]);
			dataset.getColumnByIndex(1).should.eql([5.5, 6.6]);
			dataset.getColumnByIndex(2).should.eql([96, 12]);
		});

	});

	describe('#getColumnByName()', function() {

		it('should return array of a columns contents (by column name)', function() {
			var headers = ["Column 1", "Column 2", "Column 3"];
			var dataTypes = [defines.TEXT, defines.NUMERIC, defines.INTEGER];
			var data = [
				["Sample Data", 5.5, 96],
				["More Data!!", 6.6, 12]
			];
			dataset = new DataSet(headers, dataTypes, data);

			var dataset = new DataSet(headers, dataTypes, data);
			dataset.getColumnByName("Column 1").should.eql(["Sample Data", "More Data!!"]);
			dataset.getColumnByName("Column 2").should.eql([5.5, 6.6]);
			dataset.getColumnByName("Column 3").should.eql([96, 12]);
		});

	});

});
