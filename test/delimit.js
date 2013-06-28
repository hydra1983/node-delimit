var fs = require('fs');
var should = require('should');
var delimit = require('../src/delimit.js');

describe('delimit', function() {

    var readStreams = [];
    var filePaths = [];

    before(function(done) {
        filePaths = [ __dirname + '/files/simple.tsv' ];
        for(var i = 0, len = filePaths.length; i < len; ++i) {
            readStreams.push(fs.createReadStream(filePaths[i]));
        }
        done();
    });

    describe('#mapReadStreams', function() {
        it('should perform a fn on each readStream', function(done) {
            delimit.mapReadStreams(readStreams, function(readStream) {
                should.exist(readStream);
                done();
            });
        });
        it('should throw an error (no readStreams specified)', function() {
            (function() {
                delimit.mapReadStreams(undefined, function() {});
            }).should.throwError('You must specify readStreams to mapReadStreams');
        });
        it('should throw an error (no callback function)', function() {
            (function() {
                delimit.mapReadStreams(['A "readStream"']);
            }).should.throwError('You must provide a callback to mapReadStreams');
        });
        it('should throw an error (no readStreams in array)', function() {
            (function() {
                delimit.mapReadStreams([], function() {});
            }).should.throwError('There were not any readStreams provided in the array');
        });
    });

    describe('#mapFilePaths', function() {
        it('should perform a fn on each filePath', function(done) {
            delimit.mapFilePaths(filePaths, function(filePath) {
                should.exist(filePath);
                done();
            });
        });
        it('should throw an error (no filePaths specified)', function() {
            (function() {
                delimit.mapFilePaths(undefined, function() {});
            }).should.throwError('You must specify filePaths to mapFilePaths');
        });
        it('should throw an error (no callback function)', function() {
            (function() {
                delimit.mapFilePaths(['A "filePath"']);
            }).should.throwError('You must provide a callback to mapFilePaths');
        });
        it('should throw an error (no filePaths in array)', function() {
            (function() {
                delimit.mapFilePaths([], function() {});
            }).should.throwError('There were not any filePaths provided in the array');
        });
    });

    describe('#tsvToDataRow()', function() {
        it('should convert a tsv string into a 1D array', function() {
            delimit.tsvToDataRow("test").should.eql(['test']);
            delimit.tsvToDataRow("test\tstring").should.eql(['test', 'string']);
            delimit.tsvToDataRow("\t").should.eql(['', '']);
        });
    });

    describe('#tsvToRows()', function() {
        it('should take in a tsv file path, and spit back the rows it contains', function(done) {
            var filePath = filePaths[0];
            delimit.tsvToRows(filePath,
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
                delimit.tsvToRows(undefined, function() {});
            }).should.throwError('You must specify a filePath to tsvToRows');
        });
        it('should throw an error (no rowCallback function)', function() {
            (function() {
                delimit.tsvToRows('fakeFilePath', undefined, function() {});
            }).should.throwError('You must provide a rowCallback to tsvToRows');
        });
        it('should throw an error (no doneCallback function)', function() {
            (function() {
                delimit.tsvToRows('fakeFilePath', function() {});
            }).should.throwError('You must provide a doneCallback to tsvToRows');
        });
    });

    describe('#tsvToDataHandler()', function() {

    });

});