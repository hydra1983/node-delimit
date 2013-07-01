var should = require('should');
var file = require('../src/file.js');
var loaders = require('../src/loaders.js');
var transformers = require('../src/transformers.js');
var defines = require('../src/defines.js');

describe('file', function() {

    var simpleTsv;
    var filePaths = [];
    var tsvLoader;
    var datasetTransformer;

    before(function() {
        simpleTsv = __dirname + '/files/simple.tsv';
        filePaths = [ simpleTsv ];
        tsvLoader = loaders.getTsvLoader();
        datasetTransformer = transformers.getDataSetTransformer();
    });

    describe('#mapFilePaths', function() {
        it('should perform a fn on each filePath', function(done) {
            file.mapFilePaths(filePaths, function(filePath) {
                should.exist(filePath);
                done();
            });
        });
        it('should throw an error (no filePaths specified)', function() {
            (function() {
                file.mapFilePaths(undefined, function() {});
            }).should.throwError('You must specify filePaths to mapFilePaths');
        });
        it('should throw an error (no callback function)', function() {
            (function() {
                file.mapFilePaths(['A "filePath"']);
            }).should.throwError('You must provide a callback to mapFilePaths');
        });
        it('should throw an error (no filePaths in array)', function() {
            (function() {
                file.mapFilePaths([], function() {});
            }).should.throwError('There were not any filePaths provided in the array');
        });
    });

    describe('#fileToDataRows()', function() {
        it('should take in a tsv file path, and spit back the rows it contains', function(done) {
            file.fileToDataRows(simpleTsv, tsvLoader,
                function rowCallback(singleRow) {
                    should.exist(singleRow);
                    singleRow.should.be.instanceOf(Array);
                    singleRow.length.should.equal(4);
                },
                function doneCallback() {
                    done();
                }
            );
        });
        it('should throw an error (no filePath specified)', function() {
            (function() {
                file.fileToDataRows(undefined, tsvLoader, function() {});
            }).should.throwError('You must specify a filePath to fileToDataRows');
        });
        it('should throw an error (no rowCallback function)', function() {
            (function() {
                file.fileToDataRows('fakeFilePath', tsvLoader, undefined, function() {});
            }).should.throwError('You must provide a rowCallback to fileToDataRows');
        });
        it('should throw an error (no doneCallback function)', function() {
            (function() {
                file.fileToDataRows('fakeFilePath', tsvLoader, function() {});
            }).should.throwError('You must provide a doneCallback to fileToDataRows');
        });
        it('should throw an error (no loader)', function() {
            (function() {
                file.fileToDataRows('fakeFilePath', undefined);
            }).should.throwError('You must provide a loader');
        });
    });

    describe('#fileToHooks()', function() {
        it('should get the proper headers & data types back', function(done) {
            file.fileToHooks(simpleTsv, 0, tsvLoader, datasetTransformer,
                function rowHook(dataRow) {},
                function doneHook(headers, dataTypes) {
                    headers.should.eql([
                        'Simple_Text', 'Simple_Int',
                        'Simple_Numeric', 'Simple_Boolean'
                    ]);
                    dataTypes.should.eql([
                        defines.TEXT, defines.INTEGER,
                        defines.NUMERIC, defines.BOOLEAN
                    ]);
                    done();
                });
        });
    });

});