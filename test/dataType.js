"use strict";

var should = require('should')
, dataType = require('../src/dataType.js')
, transformers = require('../src/transformers.js')
, defines = require('../src/defines.js');

describe('dataType', function() {

	var datasetTransformer;

	before(function() {
		datasetTransformer = transformers.getDataSetTransformer();
	});

	describe('#isStringInteger()', function() {
		it('should correctly identify integers', function() {
			dataType.isStringInteger(datasetTransformer, '1').should.be.true;
			dataType.isStringInteger(datasetTransformer, '01').should.be.true;
			dataType.isStringInteger(datasetTransformer, '-1').should.be.true;
			dataType.isStringInteger(datasetTransformer, '-9').should.be.true;
			// Handle cases where excel appends .0 to the end of integers
			dataType.isStringInteger(datasetTransformer, '1.0').should.be.true;
			dataType.isStringInteger(datasetTransformer, '-1.0').should.be.true;
		});
		it('should fail to find integers', function() {
			dataType.isStringInteger(datasetTransformer, 'hello').should.be.false;
			dataType.isStringInteger(datasetTransformer, '2010-10-10').should.be.false;
		});
		it('should fail to find integers (leading zero flag)', function() {
			dataType.isStringInteger(datasetTransformer, '01', true).should.be.false;
		});
		it('should fail to find integers (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.INTEGER]
			});
			dataType.isStringInteger(testTransformer, '1').should.be.false;
		});
		it('should handle e notation', function() {
			dataType.isStringInteger(datasetTransformer, '1.5e1').should.be.true;
		});
	});

	describe('#isStringBigInteger()', function() {
		it('should detect that integers greater than +2147483647 are big', function() {
			dataType.isStringBigInteger(datasetTransformer, '2147483647').should.be.false;
			dataType.isStringBigInteger(datasetTransformer, '2147483648').should.be.true;
		});
		it('should detect that integers less than -2147483648 are big', function() {
			dataType.isStringBigInteger(datasetTransformer, '-2147483648').should.be.false;
			dataType.isStringBigInteger(datasetTransformer, '-2147483649').should.be.true;
		});
		it('should fail to find big integers (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.BIGINTEGER]
			});
			dataType.isStringInteger(testTransformer, '1').should.be.true;
			dataType.isStringBigInteger(testTransformer, '2147483648').should.be.false;
		});
		it('should fail to find big integers', function() {
			dataType.isStringBigInteger(datasetTransformer, '2010-10-10').should.be.false;
		});
		it('should handle e notation', function() {
			dataType.isStringBigInteger(datasetTransformer, '214748364.8e1').should.be.true;
		});
	});

	describe('#isStringNumeric()', function() {
		it('should correctly identify numerics', function() {
			dataType.isStringNumeric(datasetTransformer, '.0').should.be.true;
			dataType.isStringNumeric(datasetTransformer, '0.0').should.be.true;
			dataType.isStringNumeric(datasetTransformer, '1.0').should.be.true;
			dataType.isStringNumeric(datasetTransformer, '-1.0').should.be.true;
		});
		it('should fail to find numerics', function() {
			dataType.isStringNumeric(datasetTransformer, 'hello').should.be.false;
			dataType.isStringNumeric(datasetTransformer, '1').should.be.false;
			dataType.isStringNumeric(datasetTransformer, '2010-10-10').should.be.false;
		});
		it('should fail to find numeric (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.NUMERIC]
			});
			dataType.isStringNumeric(testTransformer, '1.7').should.be.false;
		});
		it('should handle e notation', function() {
			dataType.isStringNumeric(datasetTransformer, '1.55555e1').should.be.true;
		});
	});

	describe('#isStringNumber()', function() {
		it('should correctly identify numbers (ints + decimals)', function() {
			dataType.isStringNumber(datasetTransformer, '.0').should.be.true;
			dataType.isStringNumber(datasetTransformer, '0').should.be.true;
			dataType.isStringNumber(datasetTransformer, '11').should.be.true;
			dataType.isStringNumber(datasetTransformer, '1.0').should.be.true;
		});
		it('should fail to find numbers', function() {
			dataType.isStringNumber(datasetTransformer, 'hello').should.be.false;
			dataType.isStringNumber(datasetTransformer, 'true').should.be.false;
			dataType.isStringNumber(datasetTransformer, '2010-10-10').should.be.false;
		});
		it('should fail to find numbers (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.NUMERIC]
			});
			dataType.isStringNumber(testTransformer, '1.7').should.be.false;
			dataType.isStringNumber(testTransformer, '1').should.be.true;
		});
		it('should handle e notation', function() {
			dataType.isStringNumber(datasetTransformer, '1e1').should.be.true;
		});
	});

	describe('#isStringBoolean()', function() {
		it('should correctly identify booleans (DATASET defaults)', function() {
			dataType.isStringBoolean(datasetTransformer, '1').should.be.true;
			dataType.isStringBoolean(datasetTransformer, '0').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'true').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'TRUE').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'false').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'FALSE').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 't').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'T').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'f').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'F').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'yes').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'YES').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'no').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'NO').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'y').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'Y').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'n').should.be.true;
			dataType.isStringBoolean(datasetTransformer, 'N').should.be.true;
		});
		it('should fail to find booleans', function() {
			dataType.isStringBoolean(datasetTransformer, 'hello').should.be.false;
			dataType.isStringBoolean(datasetTransformer, '2').should.be.false;
			dataType.isStringBoolean(datasetTransformer, '4').should.be.false;
		});
		it('should fail to find boolean (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.BOOLEAN]
			});
			dataType.isStringBoolean(testTransformer, 'true').should.be.false;
		});
	});

	describe('#isStringEmpty()', function() {
		it('should detect empty strings', function() {
			dataType.isStringEmpty(datasetTransformer, '   ').should.be.true;
			dataType.isStringEmpty(datasetTransformer, '').should.be.true;
			dataType.isStringEmpty(datasetTransformer, '\n').should.be.true;
			dataType.isStringEmpty(datasetTransformer, ' \n ').should.be.true;
		});
		it('should fail to detect empty strings', function() {
			dataType.isStringEmpty(datasetTransformer, '   hello   ')
				.should.be.false;
		});
		it('should detect weird Google Doc strings', function() {
			dataType.isStringEmpty(datasetTransformer, '#REF!:emptyRange')
				.should.be.true;
		});
	});

	describe('#isStringZip()', function() {
		it('should detect zip codes', function() {
			dataType.isStringZip(datasetTransformer, '00000').should.be.true;
			dataType.isStringZip(datasetTransformer, '00000-0000').should.be.true;
			dataType.isStringZip(datasetTransformer, '000000000').should.be.true;
			dataType.isStringZip(datasetTransformer, '12345').should.be.true;
			dataType.isStringZip(datasetTransformer, '12345-6789').should.be.true;
			dataType.isStringZip(datasetTransformer, '123456789').should.be.true;
		});
		it('should fail to detect zip codes', function() {
			dataType.isStringZip(datasetTransformer, '1234567890').should.be.false;
			dataType.isStringZip(datasetTransformer, '1234').should.be.false;
			dataType.isStringZip(datasetTransformer, ' not a zip code ').should.be.false;
			dataType.isStringZip(datasetTransformer, '').should.be.false;
		});
		it('should fail to find zip (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.ZIP]
			});
			dataType.isStringZip(testTransformer, '12345').should.be.false;
		});
	});

	describe('#isStringLat()', function() {
		it('should detect latitudes', function() {
			dataType.isStringLat(datasetTransformer, '0.0').should.be.true;
			dataType.isStringLat(datasetTransformer, '90.0').should.be.true;
			dataType.isStringLat(datasetTransformer, '-90.0').should.be.true;
			dataType.isStringLat(datasetTransformer, '89.99').should.be.true;
		});
		it('should fail to detect latitudes', function() {
			dataType.isStringLat(datasetTransformer, '85').should.be.false; // missing decimal
			dataType.isStringLat(datasetTransformer, '90.1').should.be.false;
			dataType.isStringLat(datasetTransformer, '-90.1').should.be.false;
			dataType.isStringLat(datasetTransformer, '').should.be.false;
			dataType.isStringLat(datasetTransformer, 'hello').should.be.false;
		});
		it('should fail to find latitudes (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.LAT]
			});
			dataType.isStringLat(testTransformer, '90.0').should.be.false;
		});
	});

	describe('#isStringLong()', function() {
		it('should detect longitudes', function() {
			dataType.isStringLong(datasetTransformer, '0.0').should.be.true;
			dataType.isStringLong(datasetTransformer, '90.0').should.be.true;
			dataType.isStringLong(datasetTransformer, '-90.0').should.be.true;
			dataType.isStringLong(datasetTransformer, '180.0').should.be.true;
			dataType.isStringLong(datasetTransformer, '-180.0').should.be.true;
			dataType.isStringLong(datasetTransformer, '-179.9999').should.be.true;
		});
		it('should fail to detect longitudes', function() {
			dataType.isStringLong(datasetTransformer, '85').should.be.false; // missing decimal
			dataType.isStringLong(datasetTransformer, '180.1').should.be.false;
			dataType.isStringLong(datasetTransformer, '-180.1').should.be.false;
			dataType.isStringLong(datasetTransformer, '').should.be.false;
			dataType.isStringLong(datasetTransformer, 'hello').should.be.false;
		});
		it('should fail to find longitudes (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.LONG]
			});
			dataType.isStringLong(testTransformer, '90.0').should.be.false;
		});
	});

	describe('#isStringPrimaryInteger', function() {
		it('should be a primary integer', function() {
			dataType.isStringPrimaryInteger(datasetTransformer, '1').should.be.true;
			dataType.isStringPrimaryInteger(datasetTransformer, '2', '1').should.be.true;
			dataType.isStringPrimaryInteger(datasetTransformer, '500', '100').should.be.true;
			dataType.isStringPrimaryInteger(datasetTransformer, '-500', '-1000').should.be.true;
		});
		it('should not be a primary integer', function() {
			dataType.isStringPrimaryInteger(datasetTransformer, '2147483648').should.be.false;
			dataType.isStringPrimaryInteger(datasetTransformer, '1', '300').should.be.false;
			dataType.isStringPrimaryInteger(datasetTransformer, 'hello', '300').should.be.false;
			dataType.isStringPrimaryInteger(datasetTransformer, 'hello').should.be.false;
		});
		it('should fail to find primary integer (ignore types)', function() {
			var testTransformer = transformers.getDataSetTransformer({
				ignoreTypes: [defines.PRIMARY_INTEGER]
			});
			dataType.isStringPrimaryInteger(testTransformer, '500').should.be.false;
		});
	});

	describe('#getNewDataType', function() {
		it('should return type PRIMARY_INT (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '1')
				.should.eql(defines.PRIMARY_INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '1')
				.should.eql(defines.PRIMARY_INTEGER);
		});
		it('should return type LAT (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '89.99')
				.should.eql(defines.LAT);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '-89.99')
				.should.eql(defines.LAT);
		});
		it('should return type LONG (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '179.99')
				.should.eql(defines.LONG);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '-179.99')
				.should.eql(defines.LONG);
		});
		// Can't test this anymore due to adding in PRIMARY_INT
		// PRIMARY_INT always assumes that any starting integer is primary
		it.skip('should return type ZIP (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '12345')
				.should.eql(defines.ZIP);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '000000000')
				.should.eql(defines.ZIP);
			dataType.getNewDataType(datasetTransformer, undefined, '12345-6789')
				.should.eql(defines.ZIP);
		});
		it('should return type BIGINTEGER (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '2147483648')
				.should.eql(defines.BIGINTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '2147483648')
				.should.eql(defines.BIGINTEGER);
			dataType.getNewDataType(datasetTransformer, undefined, '-2147483649')
				.should.eql(defines.BIGINTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '-2147483649')
				.should.eql(defines.BIGINTEGER);
		});
		// Can't test this anymore due to adding in PRIMARY_INT
		// PRIMARY_INT always assumes that any starting integer is primary
		it.skip('should return type INTEGER (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '100')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '100')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '2147483647')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '2147483647')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '-2147483648')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '-2147483648')
				.should.eql(defines.INTEGER);
		});
		it('should return type NUMERIC (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, '1000.1')
				.should.eql(defines.NUMERIC);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, '1000.2')
				.should.eql(defines.NUMERIC);
		});
		it('should return type BOOLEAN (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, 'true')
				.should.eql(defines.BOOLEAN);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, 'false')
				.should.eql(defines.BOOLEAN);
		});
		it('should return type TEXT (empty)', function() {
			dataType.getNewDataType(datasetTransformer, undefined, 'hello')
				.should.eql(defines.TEXT);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, 'test')
				.should.eql(defines.TEXT);
		});

		it('should keep BOOLEAN type', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, 'false')
				.should.eql(defines.BOOLEAN);
		});
		it('should keep BOOLEAN type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, '')
				.should.eql(defines.BOOLEAN);
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, '\n')
				.should.eql(defines.BOOLEAN);
		});
		it('should convert BOOLEAN to INTEGER', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, '100')
				.should.eql(defines.INTEGER);
		});
		it('should convert BOOLEAN to BIGINTEGER', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, '2147483648')
				.should.eql(defines.BIGINTEGER);
		});
		it('should convert BOOLEAN to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.BOOLEAN, 'hello')
				.should.eql(defines.TEXT);
		});

		it('should keep INTEGER type', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '100')
				.should.eql(defines.INTEGER);
			// shouldn't care about boolean types of "0" and "1"
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '1')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '0')
				.should.eql(defines.INTEGER);
		});
		it('should keep INTEGER type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '\n')
				.should.eql(defines.INTEGER);
		});
		it('should convert INTEGER to BIGINTEGER', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '2147483648')
				.should.eql(defines.BIGINTEGER);
		});
		it('should convert INTEGER to NUMERIC', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '1550.1')
				.should.eql(defines.NUMERIC);
		});
		it('should convert INTEGER to LAT', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '85.1')
				.should.eql(defines.LAT);
		});
		it('should convert INTEGER to LONG', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, '179.1')
				.should.eql(defines.LONG);
		});
		it('should convert INTEGER to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.INTEGER, 'hello')
				.should.eql(defines.TEXT);
		});

		it('should keep BIGINTEGER type', function() {
			dataType.getNewDataType(datasetTransformer, defines.BIGINTEGER, '2147483648')
				.should.eql(defines.BIGINTEGER);
			dataType.getNewDataType(datasetTransformer, defines.BIGINTEGER, '100')
				.should.eql(defines.BIGINTEGER);
			dataType.getNewDataType(datasetTransformer, defines.BIGINTEGER, '1')
				.should.eql(defines.BIGINTEGER);
		});
		it('should keep BIGINTEGER type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.BIGINTEGER, '')
				.should.eql(defines.BIGINTEGER);
			dataType.getNewDataType(datasetTransformer, defines.BIGINTEGER, '\n')
				.should.eql(defines.BIGINTEGER);
		});
		it('should convert BIGINTEGER to NUMERIC', function() {
			dataType.getNewDataType(datasetTransformer, defines.BIGINTEGER, '10.1')
				.should.eql(defines.NUMERIC);
		});
		it('should convert BIGINTEGER to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.BIGINTEGER, 'hello')
				.should.eql(defines.TEXT);
		});

		it('should keep NUMERIC type', function() {
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '5.5')
				.should.eql(defines.NUMERIC);
			// Keep numeric even though we ran into an integer
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '5')
				.should.eql(defines.NUMERIC);
		});
		it('should keep NUMERIC type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '')
				.should.eql(defines.NUMERIC);
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, '\n')
				.should.eql(defines.NUMERIC);
		});
		it('should convert NUMERIC to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.NUMERIC, 'hello')
				.should.eql(defines.TEXT);
		});

		it('should keep TEXT type', function() {
			dataType.getNewDataType(datasetTransformer, defines.TEXT, 'hello')
				.should.eql(defines.TEXT);
			// Keep text even though we've encountered an integer
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '1')
				.should.eql(defines.TEXT);
			// Keep text even though we've encountered a numeric
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '1.1')
				.should.eql(defines.TEXT);
		});
		it('should keep TEXT type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '')
				.should.eql(defines.TEXT);
			dataType.getNewDataType(datasetTransformer, defines.TEXT, '\n')
				.should.eql(defines.TEXT);
		});

		it('should keep ZIP type', function() {
			dataType.getNewDataType(datasetTransformer, defines.ZIP, '12345')
				.should.eql(defines.ZIP);
		});
		it('should keep ZIP type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.ZIP, '')
				.should.eql(defines.ZIP);
			dataType.getNewDataType(datasetTransformer, defines.ZIP, '\n')
				.should.eql(defines.ZIP);
		});
		it('should convert ZIP to INTEGER', function() {
			dataType.getNewDataType(datasetTransformer, defines.ZIP, '100')
				.should.eql(defines.INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.ZIP, '001')
				.should.eql(defines.INTEGER);
		});
		it('should convert ZIP to BIGINTEGER', function() {
			dataType.getNewDataType(datasetTransformer, defines.ZIP, '2147483648')
				.should.eql(defines.BIGINTEGER);
		});
		it('should convert ZIP to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.ZIP, 'hello')
				.should.eql(defines.TEXT);
		});

		it('should keep LAT type', function() {
			dataType.getNewDataType(datasetTransformer, defines.LAT, '89.99')
				.should.eql(defines.LAT);
		});
		it('should keep LAT type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.LAT, '')
				.should.eql(defines.LAT);
			dataType.getNewDataType(datasetTransformer, defines.LAT, '\n')
				.should.eql(defines.LAT);
		});
		it('should keep LAT type (numeric -> integer within lat range)', function() {
			dataType.getNewDataType(datasetTransformer, defines.LAT, '75')
				.should.eql(defines.LAT);
			dataType.getNewDataType(datasetTransformer, defines.LAT, '-75')
				.should.eql(defines.LAT);
		});
		it('should convert LAT to LONG', function() {
			dataType.getNewDataType(datasetTransformer, defines.LAT, '150.00')
				.should.eql(defines.LONG);
		});
		it('should convert LAT to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.LAT, 'hello')
				.should.eql(defines.TEXT);
		});

		it('should keep LONG type', function() {
			dataType.getNewDataType(datasetTransformer, defines.LONG, '179.99')
				.should.eql(defines.LONG);
		});
		it('should keep LONG type (empty string)', function() {
			dataType.getNewDataType(datasetTransformer, defines.LONG, '')
				.should.eql(defines.LONG);
			dataType.getNewDataType(datasetTransformer, defines.LONG, '\n')
				.should.eql(defines.LONG);
		});
		it('should keep LONG type (numeric -> integer within lat range)', function() {
			dataType.getNewDataType(datasetTransformer, defines.LONG, '150')
				.should.eql(defines.LONG);
			dataType.getNewDataType(datasetTransformer, defines.LONG, '-150')
				.should.eql(defines.LONG);
		});
		it('should convert LONG to TEXT', function() {
			dataType.getNewDataType(datasetTransformer, defines.LONG, 'hello')
				.should.eql(defines.TEXT);
		});

		it('should keep PRIMARY_INTEGER type (incrementing)', function() {
			dataType.getNewDataType(datasetTransformer, defines.PRIMARY_INTEGER, '2', '1')
				.should.eql(defines.PRIMARY_INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.PRIMARY_INTEGER, '500', '100')
				.should.eql(defines.PRIMARY_INTEGER);
		});
		it('should convert PRIMARY_INTEGER to INTEGER', function() {
			dataType.getNewDataType(datasetTransformer, defines.PRIMARY_INTEGER, '5', '2')
				.should.eql(defines.PRIMARY_INTEGER);
			dataType.getNewDataType(datasetTransformer, defines.PRIMARY_INTEGER, '100', '500')
				.should.eql(defines.INTEGER);
		});

		it('should keep UNKNWON type', function() {
			dataType.getNewDataType(datasetTransformer, undefined, ' ')
				.should.eql(defines.UNKNOWN);
			dataType.getNewDataType(datasetTransformer, undefined, '\n')
				.should.eql(defines.UNKNOWN);
			dataType.getNewDataType(datasetTransformer, defines.UNKNOWN, ' ')
				.should.eql(defines.UNKNOWN);
		});
	});

	describe('#getNewDataTypes()', function() {
		it('should get the new data types', function() {
			var dataTypes = [
				defines.BOOLEAN, defines.INTEGER,
				defines.NUMERIC, defines.TEXT,
				defines.LAT, defines.LONG,
				defines.ZIP
			];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, [
				'true', '5',
				'35.0', 'hello',
				'89.99', '179.99',
				'12345'
			]).should.eql(dataTypes);
		});
		it('should get NUMERIC instead of LAT', function() {
			var dataTypes = [];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, [
				'5.5'
			]).should.eql([
				defines.NUMERIC
			]);
		});
		it('should get NUMERIC instead of LONG', function() {
			var dataTypes = [];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, [
				'155.5'
			]).should.eql([
				defines.NUMERIC
			]);
		});
		it('should get LAT/LONG pair', function() {
			var dataTypes = [];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, [
				'5.5', '155.5'
			]).should.eql([
				defines.LAT, defines.LONG
			]);
		});
		it('should get LAT/LONG pair', function() {
			var dataTypes = [];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, [
				'5.5', '5.5'
			]).should.eql([
				defines.LAT, defines.LONG
			]);
		});
		it('should convert other types into text', function() {
			var dataTypes = [
				defines.BOOLEAN, defines.INTEGER,
				defines.NUMERIC, defines.TEXT
			];
			dataType.getNewDataTypes(datasetTransformer, dataTypes, [
				'hello', 'there', 'fellow', 'testers'
			]).should.eql([
				defines.TEXT, defines.TEXT, defines.TEXT, defines.TEXT
			]);
		});
	});

	describe('#getAdjustedDataRow()', function() {
		it('should change values based on the output type (BOOLEAN)', function() {
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.BOOLEAN], ['false']).should.eql([false]);
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.BOOLEAN, defines.BOOLEAN,
				 defines.BOOLEAN, defines.BOOLEAN],
				['TRUE', 'true', 'yes', 'n'])
			.should.eql([true, true, true, false]);
		});
		it('should change values based on the output type (INTEGER)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.INTEGER, defines.INTEGER],
				['1', '2'])
			.should.eql([1, 2]);
		});
		it('should change values based on the output type (NUMERIC)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.NUMERIC, defines.NUMERIC],
				['1.5', '2.5'])
			.should.eql([1.5, 2.5]);
		});
		it('should change values based on the output type (TEXT)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.TEXT, defines.TEXT],
				['hello', 'world'])
			.should.eql(['hello', 'world']);
		});
		it('should change values based on the output type (UNKNWON)', function() {
			dataType.getAdjustedDataRow(
				datasetTransformer,
				[defines.UNKNOWN, defines.UNKNOWN],
				['', '\n'])
			.should.eql([null, null]);
		});

		it('should properly insert NULL values in when missing data', function() {
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.BOOLEAN, defines.BOOLEAN, defines.BOOLEAN],
				['', ' ', '\n'])
			.should.eql([null, null, null]);
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.INTEGER, defines.INTEGER, defines.INTEGER],
				['', ' ', '\n'])
			.should.eql([null, null, null]);
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.NUMERIC, defines.NUMERIC, defines.NUMERIC],
				['', ' ', '\n'])
			.should.eql([null, null, null]);
			dataType.getAdjustedDataRow(datasetTransformer,
				[defines.TEXT, defines.TEXT, defines.TEXT],
				['', ' ', '\n'])
			.should.eql([null, null, null]);
		});
	});

});
