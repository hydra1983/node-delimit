var should = require('should');
var file = require('../src/file.js');
var loaders = require('../src/loaders.js');
var transformers = require('../src/transformers.js');
var defines = require('../src/defines.js');

describe('file', function() {

    var options,
        tsvSimple, tsvSimple1100, tsvMissingHeaders, tsvEmptyRow,
        xlsTwoSheets, xlsSimple, xlsInvalid,
        tsvLoader, datasetTransformer;

    beforeEach(function() {
        options = {};

        tsvSimple = __dirname + '/convert/tsv/files/tsvSimple.tsv';
        tsvSimple1100 = __dirname + '/convert/tsv/files/tsvSimple1100.tsv';
        tsvMissingHeaders = __dirname + '/convert/tsv/files/tsvMissingHeaders.tsv';
        tsvTwoSheets = __dirname + '/convert/tsv/files/tsvTwoSheets.tsv';
        tsvEmptyRow = __dirname + '/convert/tsv/files/tsvEmptyRow.tsv';
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

    describe('#fileToRows()', function() {
        it('should take in a tsv file path, and spit back the rows it contains', function(done) {
            options = {
                headerRow: 0,
                forceType: false
            };
            var headerCount = 0, dataRowCount = 0;
            file.fileToRows(tsvSimple, tsvLoader, options,
                function headerRowCallback(dataRow) {
                    should.exist(dataRow);
                    dataRow.should.be.instanceOf(Array);
                    dataRow.length.should.equal(8);
                    ++headerCount;
                },
                function dataRowCallback(dataRow) {
                    should.exist(dataRow);
                    dataRow.should.be.instanceOf(Array);
                    dataRow.length.should.equal(8);
                    ++dataRowCount;
                },
                function doneCallback() {
                    headerCount.should.equal(1);
                    dataRowCount.should.equal(4);
                    done();
                }
            );
        });

        it('should find no header rows', function(done) {
            options = {
                headerRow: -1,
                forceType: false
            };
            var headerCount = 0, dataRowCount = 0;
            file.fileToRows(tsvSimple, tsvLoader, options,
                function headerRowCallback(dataRow) { ++headerCount; },
                function dataRowCallback(dataRow) { ++dataRowCount; },
                function doneCallback() {
                    headerCount.should.equal(0);
                    dataRowCount.should.equal(5);
                    done();
                }
            );
        });

        it('should skip once it finds the header (forceType is defined)', function(done) {
            options = {
                headerRow: 0,
                forceType: defines.TEXT
            };
            var headerCount = 0, dataRowCount = 0;
            file.fileToRows(tsvSimple, tsvLoader, options,
                function headerRowCallback(dataRow) { ++headerCount; },
                function dataRowCallback(dataRow) { ++dataRowCount; },
                function doneCallback() {
                    headerCount.should.equal(1);
                    dataRowCount.should.equal(0);
                    done();
                }
            );
        });
    });

    describe('#getFileAttributes()', function() {
        it('should get the proper headers & data types back', function(done) {
            options = {
                headerRow: 0
            };
            file.getFileAttributes(tsvSimple, tsvLoader, datasetTransformer, options,
                function doneHook(headers, dataTypes, ignoreColumns) {
                    headers.should.eql([
                        'Simple_Text', 'Simple_Int', 'Simple_Numeric',
                        'Simple_Boolean', 'Simple_LAT', 'Simple_Lng',
                        'Simple_Primary', 'Simple_Zip'
                    ]);
                    dataTypes.should.eql([
                        defines.TEXT, defines.INTEGER, defines.NUMERIC,
                        defines.BOOLEAN, defines.LAT, defines.LONG,
                        defines.PRIMARY_INTEGER, defines.ZIP
                    ]);
                    ignoreColumns.length.should.equal(0);
                    done();
                });
        });
        it('should force a particular data type', function(done) {
            options = {
                headerRow: 0,
                forceType: defines.TEXT
            };
            file.getFileAttributes(tsvSimple, tsvLoader, datasetTransformer, options,
                function doneHook(headers, dataTypes, ignoreColumns) {
                    headers.should.eql([
                        'Simple_Text', 'Simple_Int', 'Simple_Numeric',
                        'Simple_Boolean', 'Simple_LAT', 'Simple_Lng',
                        'Simple_Primary', 'Simple_Zip'
                    ]);
                    dataTypes.should.eql([
                        defines.TEXT, defines.TEXT, defines.TEXT,
                        defines.TEXT, defines.TEXT, defines.TEXT,
                        defines.TEXT, defines.TEXT
                    ]);
                    ignoreColumns.length.should.equal(0);
                    done();
                });
        });
        it('should ignore empty headers', function(done) {
            options = {
                headerRow: 0,
                ignoreEmptyHeaders: true
            };
            file.getFileAttributes(tsvMissingHeaders, tsvLoader, datasetTransformer, options,
                function doneHook(headers, dataTypes, ignoreColumns) {
                    headers.should.eql([ 'test_1', 'test_3' ]);
                    dataTypes.should.eql([ defines.TEXT, defines.NUMERIC ]);
                    ignoreColumns.length.should.equal(1);
                    ignoreColumns.should.eql([
                        1
                    ]);
                    done();
                });
        });
        it('should not ignore empty headers', function(done) {
            options = {
                headerRow: 0
            };
            file.getFileAttributes(tsvMissingHeaders, tsvLoader, datasetTransformer, options,
                function doneHook(headers, dataTypes, ignoreColumns) {
                    headers.should.eql([ 'test_1', 'column_2', 'test_3' ]);
                    dataTypes.should.eql([
                        defines.TEXT, defines.PRIMARY_INTEGER, defines.NUMERIC
                    ]);
                    ignoreColumns.length.should.equal(0);
                    done();
                });
        });
    });

    describe('#getFileData()', function() {
        it('should loop through the dataset entirely and not skip anything', function(done) {
            options = {
                headerRow: 0
            };
            var dataRowCount = 0;

            file.getFileData(tsvSimple, tsvLoader, datasetTransformer, options,
                false,
                function dataRowCallback(dataRow) { ++dataRowCount; },
                function doneCallback() {
                    dataRowCount.should.equal(4);
                    done();
                });
        });
        it('should skip empty data rows', function(done) {
            options = {
                headerRow: 0
            };
            var dataRowCount = 0;

            file.getFileData(tsvEmptyRow, tsvLoader, datasetTransformer, options,
                false,
                function dataRowCallback(dataRow) { ++dataRowCount; },
                function doneCallback() {
                    dataRowCount.should.equal(2);
                    done();
                });
        });
        it('should skip over ignored headers', function(done) {
            options = { headerRow: 0 };
            var dataRowCount = 0;

            file.getFileData(tsvSimple, tsvLoader, datasetTransformer, options,
                [0, 1, 2, 3, 4, 5, 6],
                function dataRowCallback(dataRow) {
                    should.exist(dataRow);
                    dataRow.length.should.equal(1);
                    ++dataRowCount;
                },
                function doneCallback() {
                    dataRowCount.should.equal(4);
                    done();
                });
        });
    });

});