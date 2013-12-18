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
	, tsvContinue, tsvDecimalInt

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
		tsvDecimalInt = __dirname + '/convert/tsv/files/tsvDecimalInt.tsv';

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

		it('should find no header rows', function() {
			options = {
				headerRow: -1
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

		it('should use the provided headers', function() {
			options = {
				headerRow: -1,
				useHeaders: ['one', 'two', 'three', 'four', 'five'],
			};

			var headerRow, headerCount = 0, dataRowCount = 0;

			return file.toRows(tsvMissingHeaders, tsvLoader, options
			, function headerRowCallback(dataRow) {
				headerRow = dataRow;
				++headerCount;
			}
			, function dataRowCallback(dataRow) {
				++dataRowCount;
			})
			.then(function() {
				headerCount.should.equal(1);
				dataRowCount.should.equal(4);
				headerRow.should.eql(['one', 'two', 'three', 'four', 'five']);
			});
		});

		it('should provided headers and ignore current header', function() {
			options = {
				useHeaders: ['one', 'two', 'three', 'four', 'five'],
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

		it('should be able to continue / join lines', function() {

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

		it('get the proper headers & data types back (decimal integers)', function() {
			options = {
				headerRow: 0
			};
			return file.getAttributes(
				tsvDecimalInt, tsvLoader, datasetTransformer, options
			).then(function(fileAttributes) {
				fileAttributes.headers.should.eql(['int', 'text']);
				fileAttributes.dataTypes.should.eql([
					defines.INTEGER, defines.TEXT
				]);
				fileAttributes.ignoreColumns.length.should.equal(0);
			});
		});

		it('should force a particular data type', function() {
			options = {
				headerRow: 0,
				forceTypes: {
					'Simple_Int': defines.TEXT
				}
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
					defines.TEXT, defines.TEXT, defines.NUMERIC,
					defines.BOOLEAN, defines.LAT, defines.LONG,
					defines.PRIMARY_INTEGER, defines.ZIP
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

	describe('#removeIndexes()', function() {
		it('should remove the indexes provided from the array (first section)', function() {
			file.removeIndexes([0, 1, 2], ['0', '1', '2', '3'])
				.should.eql(['3']);
		});
		it('should remove the indexes provided from the array (end section)', function() {
			file.removeIndexes([1, 2, 3], ['0', '1', '2', '3'])
				.should.eql(['0']);
		});
		it('should remove the indexes provided from the array (mid section)', function() {
			file.removeIndexes([1, 2], ['0', '1', '2', '3'])
				.should.eql(['0', '3']);
		});
		it('should remove the indexes provided from the array (mixed)', function() {
			file.removeIndexes([1, 0, 3], ['0', '1', '2', '3'])
				.should.eql(['2']);
		});
		it('should not remove any indexes', function() {
			file.removeIndexes([], ['0', '1', '2', '3'])
				.should.eql(['0', '1', '2', '3']);
			(function() {
				file.removeIndexes(undefined, ['0', '1', '2', '3'])
					.should.eql(['0', '1', '2', '3']);
			}).should.throw;
		});
	});

});
