"use strict";

var when = require('when')
, file = require('../src/file.js')
, loaders = require('../src/loaders.js')
, transformers = require('../src/transformers.js')
, defines = require('../src/defines.js')
, chai = require('chai')
, chaiAsPromised = require('chai-as-promised');

chai.Should();
chai.use(chaiAsPromised);
require("mocha-as-promised")();


describe('file', function() {

	var options

	, tsvSimple, tsvSimple1100, tsvMissingHeaders, tsvTwoSheets, tsvEmptyRow
	, tsvContinue

	, xlsTwoSheets, xlsSimple, xlsInvalid

	, tsvLoader, datasetTransformer;

	beforeEach(function() {
		options = {};

		tsvSimple = __dirname + '/convert/tsv/files/tsvSimple.tsv';
		tsvSimple1100 = __dirname + '/convert/tsv/files/tsvSimple1100.tsv';
		tsvMissingHeaders = __dirname + '/convert/tsv/files/tsvMissingHeaders.tsv';
		tsvTwoSheets = __dirname + '/convert/tsv/files/tsvTwoSheets.tsv';
		tsvEmptyRow = __dirname + '/convert/tsv/files/tsvEmptyRow.tsv';
		tsvContinue = __dirname + '/convert/tsv/files/tsvContinue.tsv';

		xlsTwoSheets = __dirname + '/convert/xls/files/xlsTwoSheets.xls';
		xlsSimple = __dirname + '/convert/xls/files/xlsSimple.xls';
		xlsInvalid = __dirname + '/convert/xls/files/xlsInvalid.xls';

		tsvLoader = loaders.getTsvLoader();
		datasetTransformer = transformers.getDataSetTransformer();
	});

	describe('#isDataRowEmpty()', function() {

		it('should detect that the data row is empty', function() {
			var dataRow = [' ', '#REF!:emptyRange', '', '   #REF!:emptyRange '];
			file.isDataRowEmpty(datasetTransformer, dataRow).should.be.true;
		});

		it('should not detect that the data row is empty', function() {
			var dataRow = ['   ', '', '', 'not empty after all!'];
			file.isDataRowEmpty(datasetTransformer, dataRow).should.be.false;
		});

	});

	describe('#toRows()', function() {

		it('take a tsv file path and get the rows it contains', function() {

			return when.reject(new Error('foobar'));

			options = {
				headerRow: 0,
				forceType: false
			};
			var headerCount = 0, dataRowCount = 0;
			return file.toRows(tsvSimple, tsvLoader, options
			, function headerRowCallback(dataRow) {
				dataRow.should.be.instanceOf(Array);
				dataRow.length.should.equal(8);
				++headerCount;
			}
			, function dataRowCallback(dataRow) {
				dataRow.should.be.instanceOf(Array);
				dataRow.length.should.equal(8);
				++dataRowCount;
			}).then(function() {
				headerCount.should.equal(1);
				dataRowCount.should.equal(4);
			});
		});

		it('should find no header rows', function(done) {
			options = {
				headerRow: -1,
				forceType: false
			};
			var headerCount = 0, dataRowCount = 0;
			return file.toRows(tsvSimple, tsvLoader, options
			, function headerRowCallback(dataRow) { ++headerCount; }
			, function dataRowCallback(dataRow) { ++dataRowCount; }
			).then(function() {
				headerCount.should.equal(0);
				dataRowCount.should.equal(5);
			});
		});

		it('should use the provided headers', function(done) {
			options = {
				headerRow: -1,
				useHeaders: ['one', 'two', 'three', 'four', 'five'],
				forceType: false
			};

			var headerRow, headerCount = 0, dataRowCount = 0;

			return file.toRows(tsvMissingHeaders, tsvLoader, options
			, function headerRowCallback(dataRow) {
				headerRow = dataRow; ++headerCount;
			}
			, function dataRowCallback(dataRow) { ++dataRowCount; })
			.then(function() {
				headerCount.should.equal(1);
				dataRowCount.should.equal(4);
				headerRow.should.eql(['one', 'two', 'three', 'four', 'five']);
			});
		});

		it('should provided headers and ignore current header', function(done) {
			options = {
				headerRow: 0,
				useHeaders: ['one', 'two', 'three', 'four', 'five'],
				forceType: false
			};

			var headerRow, headerCount = 0, dataRowCount = 0;

			return file.toRows(tsvSimple, tsvLoader, options,
				function headerRowCallback(dataRow) {
					headerRow = dataRow;
					++headerCount;
				},
				function dataRowCallback(dataRow) {
					++dataRowCount;
				}
			).then(function() {
				headerCount.should.equal(1);
				dataRowCount.should.equal(4);
				headerRow.should.eql(['one', 'two', 'three', 'four', 'five']);
			});
		});

		it('should be able to continue / join lines', function(done) {

			options = { headerRow: 0, forceType: false };

			var headerRow, data = [], headerCount = 0;

			return file.toRows(tsvContinue, tsvLoader, options,
				function headerRowCallback(dataRow) {
					headerRow = dataRow;
					++headerCount;
				},
				function dataRowCallback(dataRow) {
					data.push(dataRow);
				}
			).then(function() {
				headerCount.should.equal(1);
				data.should.eql([
					[ 'Dave Bob James' ],
					[ 'Madison Sally\nSmith' ],
					[ 'One\nTwo\nThree' ],
					[ 'One\n\nTwo\nThree' ],
					[ '\nOne' ],
					[ 'One\n' ],
					[ '\n' ],
					[ '\n\n\n' ]
				]);
			});
		});

	});

	describe('#getAttributes()', function() {

		it('get the proper headers & data types back', function() {
			options = {
				headerRow: 0
			};
			return file.getAttributes(
				tsvSimple, tsvLoader, datasetTransformer, options
			).then(function(fileAttributes) {
				fileAttributes.headers.should.eql([
					'Simple_Text', 'Simple_Int', 'Simple_Numeric',
					'Simple_Boolean', 'Simple_LAT', 'Simple_Lng',
					'Simple_Primary', 'Simple_Zip'
				]);
				fileAttributes.dataTypes.should.eql([
					defines.TEXT, defines.INTEGER, defines.NUMERIC,
					defines.BOOLEAN, defines.LAT, defines.LONG,
					defines.PRIMARY_INTEGER, defines.ZIP
				]);
				fileAttributes.ignoreColumns.length.should.equal(0);
			});
		});

		it('should force a particular data type', function() {
			options = {
				headerRow: 0,
				forceType: defines.TEXT
			};
			return file.getAttributes(
				tsvSimple, tsvLoader, datasetTransformer, options
			).then(function(fileAttributes) {
				fileAttributes.headers.should.eql([
					'Simple_Text', 'Simple_Int', 'Simple_Numeric',
					'Simple_Boolean', 'Simple_LAT', 'Simple_Lng',
					'Simple_Primary', 'Simple_Zip'
				]);
				fileAttributes.dataTypes.should.eql([
					defines.TEXT, defines.TEXT, defines.TEXT,
					defines.TEXT, defines.TEXT, defines.TEXT,
					defines.TEXT, defines.TEXT
				]);
				fileAttributes.ignoreColumns.length.should.equal(0);
			});
		});

		it('should ignore empty headers', function(done) {
			options = {
				headerRow: 0,
				ignoreEmptyHeaders: true
			};
			return file.getAttributes(
				tsvMissingHeaders, tsvLoader, datasetTransformer, options
			).then(function(fileAttributes) {
				fileAttributes.headers.should.eql([ 'test_1', 'test_3' ]);
				fileAttributes.dataTypes.should.eql([
					defines.TEXT, defines.NUMERIC
				]);
				fileAttributes.ignoreColumns.length.should.equal(1);
				fileAttributes.ignoreColumns.should.eql([ 1 ]);
			});
		});

		it('should not ignore empty headers', function(done) {
			options = {
				headerRow: 0
			};
			return file.getAttributes(
				tsvMissingHeaders, tsvLoader, datasetTransformer, options
			).then(function(fileAttributes) {
				fileAttributes.headers.should.eql([
					'test_1', 'column_2', 'test_3'
				]);
				fileAttributes.dataTypes.should.eql([
					defines.TEXT, defines.PRIMARY_INTEGER, defines.NUMERIC
				]);
				fileAttributes.ignoreColumns.length.should.equal(0);
			});
		});

	});

	describe('#getData()', function() {

		it('should loop through the dataset entirely and not skip anything', function(done) {
			options = {
				headerRow: 0
			};
			var dataRowCount = 0;

			return file.getData(
				tsvSimple, tsvLoader, datasetTransformer, options, false,
				function dataRowCallback(dataRow) { ++dataRowCount; }
			).then(function() {
				dataRowCount.should.equal(4);
			});
		});

		it('should skip empty data rows', function(done) {
			options = {
				headerRow: 0
			};
			var dataRowCount = 0;

			return file.getData(
				tsvEmptyRow, tsvLoader, datasetTransformer, options, false,
				function dataRowCallback(dataRow) { ++dataRowCount; }
			).then(function() {
				dataRowCount.should.equal(2);
			});
		});

		it('should skip over ignored headers', function(done) {
			options = { headerRow: 0 };
			var dataRowCount = 0;

			return file.getData(
				tsvSimple, tsvLoader, datasetTransformer, options,
				[0, 1, 2, 3, 4, 5, 6],
				function dataRowCallback(dataRow) {
					dataRow.length.should.equal(1);
					++dataRowCount;
				}
			).then(function() {
				dataRowCount.should.equal(4);
			});
		});

	});

});
