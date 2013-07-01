var should = require('should'),
	dataType = require('../src/dataType.js'),
	transformers = require('../src/transformers.js'),
	defines = require('../src/defines.js');

describe('dataType', function() {

	var datasetTransformer;

	before(function() {
		datasetTransformer = transformers.getDataSetTransformer();
	});

	describe('#isStringInteger()', function() {
		it('should correctly identify integers', function() {
			dataType.isStringInteger("1").should.be.true;
			dataType.isStringInteger("01").should.be.true;
		});
		it('should fail to find integers', function() {
			dataType.isStringInteger("hello").should.be.false;
		});
		it('should fail to find integers (leading zero flag)', function() {
			dataType.isStringInteger("01", true).should.be.false;
		});
	});

	describe('#isStringNumeric()', function() {
		it('should correctly identify numerics', function() {
			dataType.isStringNumeric(".0").should.be.true;
			dataType.isStringNumeric("0.0").should.be.true;
			dataType.isStringNumeric("1.0").should.be.true;
		});
		it('should fail to find numerics', function() {
			dataType.isStringNumeric("hello").should.be.false;
			dataType.isStringNumeric("1").should.be.false;
		});
	});

	describe('#isStringNumber()', function() {
		it('should correctly identify numbers (ints + decimals)', function() {
			dataType.isStringNumber(".0").should.be.true;
			dataType.isStringNumber("0").should.be.true;
			dataType.isStringNumber("11").should.be.true;
			dataType.isStringNumber("1.0").should.be.true;
		});
		it('should fail to find numerics', function() {
			dataType.isStringNumber("hello").should.be.false;
			dataType.isStringNumber("true").should.be.false;
		});
	});

	describe('#isStringBoolean()', function() {
		it('should correctly identify booleans (DATASET defaults)', function() {
			dataType.isStringBoolean(datasetTransformer, "1").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "0").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "true").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "TRUE").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "false").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "FALSE").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "t").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "T").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "f").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "F").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "yes").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "YES").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "no").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "NO").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "y").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "Y").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "n").should.be.true;
			dataType.isStringBoolean(datasetTransformer, "N").should.be.true;
		});
		it('should fail to find booleans', function() {
			dataType.isStringBoolean(datasetTransformer, "hello").should.be.false;
			dataType.isStringBoolean(datasetTransformer, "2").should.be.false;
		});
	});

	describe('#isStringEmpty()', function() {
		it('should detect empty strings', function() {
			dataType.isStringEmpty('   ').should.be.true;
			dataType.isStringEmpty('').should.be.true;
			dataType.isStringEmpty("\n").should.be.true;
			dataType.isStringEmpty(" \n ").should.be.true;
		});
		it('should fail to detect empty strings', function() {
			dataType.isStringEmpty("   hello   ").should.be.false;
		});
	});

	describe('#getNewDataType', function() {
		it('should return type INTEGER (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '100').should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '100').should.eql(defines.INTEGER);
		});
		it('should return type NUMERIC (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '10.0').should.eql(defines.NUMERIC);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '10.0').should.eql(defines.NUMERIC);
		});
		it('should return type BOOLEAN (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, 'true').should.eql(defines.BOOLEAN);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, 'false').should.eql(defines.BOOLEAN);
		});
		it('should return type TEXT (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, 'hello').should.eql(defines.TEXT);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, 'test').should.eql(defines.TEXT);
		});

		it('should keep BOOLEAN type', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, 'false').should.eql(defines.BOOLEAN);
		});
		it('should keep BOOLEAN type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, '').should.eql(defines.BOOLEAN);
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, '\n').should.eql(defines.BOOLEAN);
		});
		it('should convert BOOLEAN to INTEGER', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, '100').should.eql(defines.INTEGER);
		});
		it('should convert BOOLEAN to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, 'hello').should.eql(defines.TEXT);
		});

		it('should keep INTEGER type', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '100').should.eql(defines.INTEGER);
			// shouldn't care about boolean types of "0" and "1"
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '1').should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '0').should.eql(defines.INTEGER);
		});
		it('should keep INTEGER type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '').should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '\n').should.eql(defines.INTEGER);
		});
		it('should convert INTEGER to NUMERIC', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '10.0').should.eql(defines.NUMERIC);
		});
		it('should convert INTEGER to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, 'hello').should.eql(defines.TEXT);
		});

		it('should keep NUMERIC type', function() {
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '5.5').should.eql(defines.NUMERIC);
			// Keep numeric even though we ran into an integer
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '5').should.eql(defines.NUMERIC);
		});
		it('should keep NUMERIC type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '').should.eql(defines.NUMERIC);
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '\n').should.eql(defines.NUMERIC);
		});
		it('should convert NUMERIC to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, 'hello').should.eql(defines.TEXT);
		});

		it('should keep TEXT type', function() {
			dataType.getNewDataType(datasetTransformer, defines.TEXT, 'hello').should.eql(defines.TEXT);
			// Keep text even though we've encountered an integer
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '1').should.eql(defines.TEXT);
			// Keep text even though we've encountered a numeric
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '1.1').should.eql(defines.TEXT);
		});
		it('should keep TEXT type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '').should.eql(defines.TEXT);
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '\n').should.eql(defines.TEXT);
		});

		it('should keep UNKNWON type', function() {
			dataType.getNewDataType(datasetTransformer, undefined, ' ').should.eql(defines.UNKNOWN);
			dataType.getNewDataType(datasetTransformer, undefined, '\n').should.eql(defines.UNKNOWN);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, ' ').should.eql(defines.UNKNOWN);
		});
	});

	describe('#getNewDataTypes()', function() {
		it('should get the new data types', function() {
			var dataTypes = [];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, ['true', '5', '1.1', 'hello'])
				.should.eql([
					defines.BOOLEAN, defines.INTEGER, defines.NUMERIC, defines.TEXT
				]);

			dataTypes = [defines.BOOLEAN, defines.INTEGER, defines.NUMERIC, defines.TEXT];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, ['hello', 'there', 'fellow', 'testers'])
				.should.eql([
					defines.TEXT, defines.TEXT, defines.TEXT, defines.TEXT
				]);
		});
	});

	describe('#getAdjustedDataRow()', function() {
		it('should change values based on the output type (BOOLEAN)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.BOOLEAN, defines.BOOLEAN,
				 defines.BOOLEAN, defines.BOOLEAN ],
				['TRUE', 'true', 'yes', 'n'])
			.should.eql([ true, true, true, false ]);
		});
		it('should change values based on the output type (INTEGER)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.INTEGER, defines.INTEGER],
				['1', '2'])
			.should.eql([ 1, 2 ]);
		});
		it('should change values based on the output type (NUMERIC)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.NUMERIC, defines.NUMERIC],
				['1.5', '2.5'])
			.should.eql([ 1.5, 2.5 ]);
		});
		it('should change values based on the output type (TEXT)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.TEXT, defines.TEXT],
				['hello', 'world'])
			.should.eql([ 'hello', 'world' ]);
		});
		it('should change values based on the output type (UNKNWON)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.UNKNOWN, defines.UNKNOWN],
				['', '\n'])
			.should.eql([ null, null ]);
		});

		it('should properly insert NULL values in when missing data', function() {
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.BOOLEAN, defines.BOOLEAN, defines.BOOLEAN],
				['', ' ', '\n'])
			.should.eql([ null, null, null ]);
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.INTEGER, defines.INTEGER, defines.INTEGER],
				['', ' ', '\n'])
			.should.eql([ null, null, null ]);
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.NUMERIC, defines.NUMERIC, defines.NUMERIC],
				['', ' ', '\n'])
			.should.eql([ null, null, null ]);
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.TEXT, defines.TEXT, defines.TEXT],
				['', ' ', '\n'])
			.should.eql([ null, null, null ]);
		})
	});

});