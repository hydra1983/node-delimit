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

        tsvSimple = __dirname + '/files/tsvSimple.tsv';
        tsvSimple1100 = __dirname + '/files/tsvSimple1100.tsv';
        tsvMissingHeaders = __dirname + '/files/tsvMissingHeaders.tsv';
        tsvTwoSheets = __dirname + '/files/tsvTwoSheets.tsv';
        tsvEmptyRow = __dirname + '/files/tsvEmptyRow.tsv';
        xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls';
        xlsSimple = __dirname + '/files/xlsSimple.xls';
        xlsInvalid = __dirname + '/files/xlsInvalid.xls';

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

    describe('#fileToDataRows()', function() {
        it('should take in a tsv file path, and spit back the rows it contains', function(done) {
            options = { ignoreEmptyHeaders: true };
            file.fileToDataRows(tsvSimple, tsvLoader, options,
                function rowCallback(singleRow) {
                    should.exist(singleRow);
                    singleRow.should.be.instanceOf(Array);
                    singleRow.length.should.equal(8);
                },
                function doneCallback() {
                    done();
                }
            );
        });
        it('should take in a tsv file path, and spit back the rows it contains ignoring columns that done contain names', function(done) {
            options = { ignoreEmptyHeaders: false };
            file.fileToDataRows(tsvSimple, tsvLoader, options,
                function rowCallback(singleRow) {
                    should.exist(singleRow);
                    singleRow.should.be.instanceOf(Array);
                    singleRow.length.should.equal(8);
                },
                function doneCallback() {
                    done();
                }
            );
        });

    });

    describe('#getFileAttributes()', function() {
        it('should get the proper headers & data types back', function(done) {
            options = { headerRow: 0 };
            file.getFileAttributes(tsvSimple, tsvLoader, datasetTransformer, options,
                function doneHook(headers, dataTypes) {
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
                    done();
                });
        });
        it('should force a particular data type (String)', function(done) {
            options = { headerRow: 0, forceType: 'TEXT' };
            file.getFileAttributes(tsvSimple, tsvLoader, datasetTransformer, options,
                function doneHook(headers, dataTypes) {
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
                    done();
                });
        });
    });

    describe('#getFileData()', function() {
        it('should loop through the dataset entirely and not skip anything', function(done) {
            options = { headerRow: 0 };
            var rowHits = 0;

            file.getFileData(tsvSimple, tsvLoader, datasetTransformer, options,
                function dataRowHook(dataRow) {
                    dataRow.length.should.equal(8);
                    ++rowHits;
                },
                function doneHook() {
                    rowHits.should.eql(4);
                    done();
                });
        });
        it('should skip empty data rows', function(done) {
            options = { headerRow: 0 };
            var rowHits = 0;

            file.getFileData(tsvEmptyRow, tsvLoader, datasetTransformer, options,
                function dataRowHook(dataRow) {
                    dataRow.length.should.equal(2);
                    ++rowHits;
                },
                function doneHook() {
                    rowHits.should.eql(2);
                    done();
                });
        });
        it('should NOT skip empty data rows', function(done) {
            options = { headerRow: 0, skipEmptyRows: false };
            var rowHits = 0;

            file.getFileData(tsvEmptyRow, tsvLoader, datasetTransformer, options,
                function dataRowHook(dataRow) {
                    dataRow.length.should.equal(2);
                    ++rowHits;
                },
                function doneHook() {
                    rowHits.should.eql(4);
                    done();
                });
        });
        it('should skip over specified columns', function(done) {
            options = {  headerRow: 0, ignoreColumns: [0, 1, 2, 3, 4, 5] };
            var rowHits = 0;

            file.getFileData(tsvSimple, tsvLoader, datasetTransformer, options,
                function dataRowHook(dataRow) {
                    dataRow.length.should.equal(2);
                    ++rowHits;
                },
                function doneHook() {
                    rowHits.should.eql(4);
                    done();
                });
        });
    });

});