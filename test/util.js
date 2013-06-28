var should = require('should');
var util = require('../src/util.js');
var DataType = require('../src/DataType.js');

describe('util', function() {

	describe('#isStringInteger()', function() {
		it('should correctly identify integers', function() {
			util.isStringInteger("1").should.be.true;
			util.isStringInteger("01").should.be.true;
		});
		it('should fail to find integers', function() {
			util.isStringInteger("hello").should.be.false;
		});
		it('should fail to find integers (leading zero flag)', function() {
			util.isStringInteger("01", true).should.be.false;
		});
	});

	describe('#isStringNumeric()', function() {
		it('should correctly identify numerics', function() {
			util.isStringNumeric(".0").should.be.true;
			util.isStringNumeric("0.0").should.be.true;
			util.isStringNumeric("1.0").should.be.true;
		});
		it('should fail to find numerics', function() {
			util.isStringNumeric("hello").should.be.false;
			util.isStringNumeric("1").should.be.false;
		});
	});

	describe('#isStringNumber()', function() {
		it('should correctly identify numbers (ints + decimals)', function() {
			util.isStringNumber(".0").should.be.true;
			util.isStringNumber("0").should.be.true;
			util.isStringNumber("11").should.be.true;
			util.isStringNumber("1.0").should.be.true;
		});
		it('should fail to find numerics', function() {
			util.isStringNumber("hello").should.be.false;
			util.isStringNumber("true").should.be.false;
		});
	});

	describe('#isStringBoolean()', function() {
		it('should correctly identify booleans (defaults)', function() {
			util.isStringBoolean("1").should.be.true;
			util.isStringBoolean("0").should.be.true;
			util.isStringBoolean("true").should.be.true;
			util.isStringBoolean("TRUE").should.be.true;
			util.isStringBoolean("false").should.be.true;
			util.isStringBoolean("FALSE").should.be.true;
			util.isStringBoolean("t").should.be.true;
			util.isStringBoolean("T").should.be.true;
			util.isStringBoolean("f").should.be.true;
			util.isStringBoolean("F").should.be.true;
			util.isStringBoolean("yes").should.be.true;
			util.isStringBoolean("YES").should.be.true;
			util.isStringBoolean("no").should.be.true;
			util.isStringBoolean("NO").should.be.true;
			util.isStringBoolean("y").should.be.true;
			util.isStringBoolean("Y").should.be.true;
			util.isStringBoolean("n").should.be.true;
			util.isStringBoolean("N").should.be.true;
		});
		it('should fail to find booleans', function() {
			util.isStringBoolean("hello").should.be.false;
			util.isStringBoolean("2").should.be.false;
		});
	});

	describe('#isStringEmpty()', function() {
		it('should detect empty strings', function() {
			util.isStringEmpty('   ').should.be.true;
			util.isStringEmpty('').should.be.true;
			util.isStringEmpty("\n").should.be.true;
			util.isStringEmpty(" \n ").should.be.true;
		});
		it('should fail to detect empty strings', function() {
			util.isStringEmpty("   hello   ").should.be.false;
		});
	});

	describe('#getNewDataType', function() {
		it('should return type INTEGER (empty)', function() {
			util.getNewDataType(undefined, '100').should.eql(DataType.INTEGER);
			util.getNewDataType(DataType.UNKNOWN, '100').should.eql(DataType.INTEGER);
		});
		it('should return type NUMERIC (empty)', function() {
			util.getNewDataType(undefined, '10.0').should.eql(DataType.NUMERIC);
			util.getNewDataType(DataType.UNKNOWN, '10.0').should.eql(DataType.NUMERIC);
		});
		it('should return type BOOLEAN (empty)', function() {
			util.getNewDataType(undefined, 'true').should.eql(DataType.BOOLEAN);
			util.getNewDataType(DataType.UNKNOWN, 'false').should.eql(DataType.BOOLEAN);
		});
		it('should return type TEXT (empty)', function() {
			util.getNewDataType(undefined, 'hello').should.eql(DataType.TEXT);
			util.getNewDataType(DataType.UNKNOWN, 'test').should.eql(DataType.TEXT);
		});

		it('should keep BOOLEAN type', function() {
			util.getNewDataType(DataType.BOOLEAN, 'false').should.eql(DataType.BOOLEAN);
		});
		it('should keep BOOLEAN type (empty string)', function() {
			util.getNewDataType(DataType.BOOLEAN, '').should.eql(DataType.BOOLEAN);
			util.getNewDataType(DataType.BOOLEAN, '\n').should.eql(DataType.BOOLEAN);
		});
		it('should convert BOOLEAN to INTEGER', function() {
			util.getNewDataType(DataType.BOOLEAN, '100').should.eql(DataType.INTEGER);
		});
		it('should convert BOOLEAN to TEXT', function() {
			util.getNewDataType(DataType.BOOLEAN, 'hello').should.eql(DataType.TEXT);
		});

		it('should keep INTEGER type', function() {
			util.getNewDataType(DataType.INTEGER, '100').should.eql(DataType.INTEGER);
			// shouldn't care about boolean types of "0" and "1"
			util.getNewDataType(DataType.INTEGER, '1').should.eql(DataType.INTEGER);
			util.getNewDataType(DataType.INTEGER, '0').should.eql(DataType.INTEGER);
		});
		it('should keep INTEGER type (empty string)', function() {
			util.getNewDataType(DataType.INTEGER, '').should.eql(DataType.INTEGER);
			util.getNewDataType(DataType.INTEGER, '\n').should.eql(DataType.INTEGER);
		});
		it('should convert INTEGER to NUMERIC', function() {
			util.getNewDataType(DataType.INTEGER, '10.0').should.eql(DataType.NUMERIC);
		});
		it('should convert INTEGER to TEXT', function() {
			util.getNewDataType(DataType.INTEGER, 'hello').should.eql(DataType.TEXT);
		});

		it('should keep NUMERIC type', function() {
			util.getNewDataType(DataType.NUMERIC, '5.5').should.eql(DataType.NUMERIC);
			// Keep numeric even though we ran into an integer
			util.getNewDataType(DataType.NUMERIC, '5').should.eql(DataType.NUMERIC);
		});
		it('should keep NUMERIC type (empty string)', function() {
			util.getNewDataType(DataType.NUMERIC, '').should.eql(DataType.NUMERIC);
			util.getNewDataType(DataType.NUMERIC, '\n').should.eql(DataType.NUMERIC);
		});
		it('should convert NUMERIC to TEXT', function() {
			util.getNewDataType(DataType.NUMERIC, 'hello').should.eql(DataType.TEXT);
		});

		it('should keep TEXT type', function() {
			util.getNewDataType(DataType.TEXT, 'hello').should.eql(DataType.TEXT);
			// Keep text even though we've encountered an integer
			util.getNewDataType(DataType.TEXT, '1').should.eql(DataType.TEXT);
			// Keep text even though we've encountered a numeric
			util.getNewDataType(DataType.TEXT, '1.1').should.eql(DataType.TEXT);
		});
		it('should keep TEXT type (empty string)', function() {
			util.getNewDataType(DataType.TEXT, '').should.eql(DataType.TEXT);
			util.getNewDataType(DataType.TEXT, '\n').should.eql(DataType.TEXT);
		});

		it('should keep UNKNWON type', function() {
			util.getNewDataType(undefined, ' ').should.eql(DataType.UNKNOWN);
			util.getNewDataType(undefined, '\n').should.eql(DataType.UNKNOWN);
			util.getNewDataType(DataType.UNKNOWN, ' ').should.eql(DataType.UNKNOWN);
		});
	});

	describe('#getNewDataTypes()', function() {
		it('should get the new data types', function() {
			var dataTypes = [];
			util.getNewDataTypes(dataTypes, ['true', '5', '1.1', 'hello'])
				.should.eql([
					DataType.BOOLEAN, DataType.INTEGER, DataType.NUMERIC, DataType.TEXT
				]);

			dataTypes = [DataType.BOOLEAN, DataType.INTEGER, DataType.NUMERIC, DataType.TEXT];
			util.getNewDataTypes(dataTypes, ['hello', 'there', 'fellow', 'testers'])
				.should.eql([
					DataType.TEXT, DataType.TEXT, DataType.TEXT, DataType.TEXT
				]);
		});
	});

});