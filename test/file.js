var should = require('should');
var file = require('../src/file.js');

describe('file', function() {

    var filePaths = [];

    before(function(done) {
        filePaths = [ __dirname + '/files/simple.tsv' ];
        done();
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

});