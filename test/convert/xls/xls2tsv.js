var fs = require('fs'),
    should = require('should'),
    xls2tsv = require('../../../src/convert/xls/xls2tsv.js');

describe('xls2tsv', function() {

    var tempDir = '',
        xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls',
        xlsSimple = __dirname + '/files/xlsSimple.xls',
        xlsInvalid = __dirname + '/files/xlsInvalid.xls';

    before(function(done) {
        xls2tsv.xls2tsv(xlsSimple, function xls2tsvCbk(error, _tempDir) {

            tempDir = _tempDir;

            xls2tsv.getTsvFilePaths(tempDir, function(error, _filePaths) {
                filePaths = _filePaths;
                done();
            });
        });
    });

    describe('#xls2tsv()', function() {
        it('should create tsv files from xls files and return the directory they are located in with the correct number of files (one sheet)', function(done) {
            xls2tsv.xls2tsv(xlsSimple, function xls2tsvCbk(error, tempDir) {
                should.not.exist(error);
                tempDir.should.be.a('string');
                tempDir.should.not.be.empty;
                // check for one file in this directory (xls with one sheet)
                fs.readdir(tempDir, function readdirCbk(error, files) {
                    if(error) { throw error; }
                    files.length.should.equal(1);
                    done();
                });
            });
        });
        it('should create tsv files from xls files and return the directory they are located in with the correct number of files (two sheets)', function(done) {
            xls2tsv.xls2tsv(xlsTwoSheets, function xls2tsvCbk(error, tempDir) {
                should.not.exist(error);
                tempDir.should.be.a('string');
                tempDir.should.not.be.empty;
                // check for one file in this directory (xls with one sheet)
                fs.readdir(tempDir, function readdirCbk(error, files) {
                    if(error) { throw error; }
                    files.length.should.equal(2);
                    done();
                });
            });
        });
        it('should throw an error if the file does not exist', function(done) {
            xls2tsv.xls2tsv('bogusFile.png', function(error, tempDir) {
                should.exist(error);
                error.message.should.equal('File bogusFile.png does not exist');
                done();
            });
        });
        it('should throw an error if there was a problem with pandas', function(done) {
            xls2tsv.xls2tsv(xlsInvalid, function(error, tempDir) {
                should.exist(error);
                error.message.should.equal(
                    'There was a problem parsing the file ' + xlsInvalid);
                done();
            });
        });
    });

    describe('#getTsvFilePaths()', function() {
        it('should get back a file path for one file', function(done) {
            xls2tsv.getTsvFilePaths(tempDir, function(error, filePaths) {
                should.not.exist(error);
                should.exist(filePaths);
                filePaths.length.should.equal(1);
                done();
            });
        });
        it('should throw an error (dir does not exist)', function(done) {
            xls2tsv.getTsvFilePaths('bogusDir', function(error, filePaths) {
                should.exist(error);
                error.message.should.equal('Directory bogusDir does not exist');
                done();
            });
        });
        it('should throw an error (no directory specified)', function() {
            (function() {
                xls2tsv.getTsvFilePaths(undefined, function() {});
            }).should.throwError('You must provide a valid directory path to getTsvFilePaths');
        });
        it('should throw an error (no callback function)', function() {
            (function() {
                xls2tsv.getTsvFilePaths('someDirectory');
            }).should.throwError('You must provide a callback to getTsvFilePaths');
        });
    });

    describe('#process()', function() {
        it('should return an object containing information about the newly created TSV files (one sheet / file)', function (done) {
            xls2tsv.process(xlsSimple, function processCb(error, info) {

                should.not.exist(error);
                should.exist(info);

                info.should.have.property('tempDir');
                info.should.have.property('files');

                info.tempDir.should.be.ok;
                info.files.length.should.equal(1);
                info.files[0].sheetName.should.eql("Sheet1");
                info.files[0].path.should.ok;

                done();
            });
        });

        it('should return an object containing information about the newly created TSV files (two sheets / files)', function (done) {
            xls2tsv.process(xlsTwoSheets, function processCb(error, info) {

                should.not.exist(error);
                should.exist(info);

                info.should.have.property('tempDir');
                info.should.have.property('files');

                info.tempDir.should.be.ok;
                info.files[0].path.should.be.ok;
                info.files[1].path.should.be.ok;
                info.files[0].sheetName.should.be.ok;
                info.files[1].sheetName.should.be.ok;

                done();
            });
        });
    });
});