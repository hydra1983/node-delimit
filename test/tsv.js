var should = require('should'),
    tsv = require('../src/tsv.js'),
    DataType = require('../src/DataType.js');

describe('tsv', function() {

    var filePaths = [];

    before(function(done) {
        filePaths = [ __dirname + '/files/simple.tsv' ];
        done();
    });

    describe('#toDataRow()', function() {
        it('should convert a tsv string into a 1D array', function() {
            tsv.toDataRow("test").should.eql(['test']);
            tsv.toDataRow("test\tstring").should.eql(['test', 'string']);
            tsv.toDataRow("\t").should.eql(['', '']);
        });
    });

    describe('#fileToDataRows()', function() {
        it('should take in a tsv file path, and spit back the rows it contains', function(done) {
            var filePath = filePaths[0];
            tsv.fileToDataRows(filePath,
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
                tsv.fileToDataRows(undefined, function() {});
            }).should.throwError('You must specify a filePath to fileToDataRows');
        });
        it('should throw an error (no rowCallback function)', function() {
            (function() {
                tsv.fileToDataRows('fakeFilePath', undefined, function() {});
            }).should.throwError('You must provide a rowCallback to fileToDataRows');
        });
        it('should throw an error (no doneCallback function)', function() {
            (function() {
                tsv.fileToDataRows('fakeFilePath', function() {});
            }).should.throwError('You must provide a doneCallback to fileToDataRows');
        });
    });

    describe('#fileToHooks()', function() {
        it('should get the proper headers & data types back', function(done) {
            var filePath = filePaths[0];
            tsv.fileToHooks(filePath, 0,
                function rowHook(dataRow) {},
                function doneHook(headers, dataTypes) {
                    headers.should.eql([
                        'Simple_Text', 'Simple_Int',
                        'Simple_Numeric', 'Simple_Boolean'
                    ]);
                    dataTypes.should.eql([
                        DataType.TEXT, DataType.INTEGER,
                        DataType.NUMERIC, DataType.BOOLEAN
                    ]);
                    done();
                });
        });
    });
});