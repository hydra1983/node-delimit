var fs = require('fs');
var should = require('should');
var delimit = require('../src/delimit.js');

describe('delimit', function() {

    var readStreams;

    before(function(done) {
        readStreams = [];
        readStreams.push(
            fs.createReadStream(__dirname + '/files/simple.tsv'));
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

    describe('#tsvReadStream2Js()', function() {

        it('should take a tsv readStream & convert into a DataSet', function(done) {
            var readStream = readStreams[0];
            delimit.tsvReadStream2Js(readStream, function(error, dataset) {
                should.not.exist(error);
                should.exist(dataset);
                done();
            });
        });

        it('should throw an error (no readStream specified)', function() {
            (function() {
                delimit.tsvReadStream2Js(undefined, function() {});
            }).should.throwError('You must specify readStream to tsvReadStream2Js');
        });
        it('should throw an error (no callback function)', function() {
            (function() {
                delimit.tsvReadStream2Js({'fake': 'readString'});
            }).should.throwError('You must provide a callback to tsvReadStream2Js');
        });
    });
});