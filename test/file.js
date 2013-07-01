var should = require('should');
var file = require('../src/file.js');
var loaders = require('../src/loaders.js');
var transformers = require('../src/transformers.js');
var defines = require('../src/defines.js');

describe('file', function() {

    var simpleTsv;
    var emptyRow;
    var filePaths = [];
    var tsvLoader;
    var datasetTransformer;

    before(function() {
        simpleTsv = __dirname + '/files/simple.tsv';
        emptyRow = __dirname + '/files/emptyRow.tsv';
        filePaths = [ simpleTsv ];
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
            var options = {
                ignoreEmptyHeaders: true
            };
            file.fileToDataRows(simpleTsv, tsvLoader, options,
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
            var options = {
                ignoreEmptyHeaders: false
            };
            file.fileToDataRows(simpleTsv, tsvLoader, options,
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
            var options = {
                    headerRow: 0
                };
            file.getFileAttributes(simpleTsv, tsvLoader, datasetTransformer, options,
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
    });

    describe('#getFileData()', function() {
        it('should loop through the dataset entirely and not skip anything', function(done) {
            var rowHits = 0,
                options = {
                    headerRow: 0
                };
            file.getFileData(simpleTsv, tsvLoader, datasetTransformer, options,
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
            var rowHits = 0,
                options = {
                    headerRow: 0
                };
            file.getFileData(emptyRow, tsvLoader, datasetTransformer, options,
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
            var rowHits = 0,
                options = {
                    headerRow: 0,
                    skipEmptyRows: false
                };
            file.getFileData(emptyRow, tsvLoader, datasetTransformer, options,
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
            var rowHits = 0,
                options = {
                    headerRow: 0,
                    ignoreColumns: [0, 1, 2, 3, 4, 5]
                };
            file.getFileData(simpleTsv, tsvLoader, datasetTransformer, options,
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