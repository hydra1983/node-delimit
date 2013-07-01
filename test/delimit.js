var should = require('should'),
    delimit = require('../src/delimit.js'),
    defines = require('../src/defines.js');

describe('delimit', function() {

    var simpleTsv;
    var simple1100Lines;

    before(function() {
        simpleTsv = __dirname + '/files/simple.tsv';
        simple1100Lines = __dirname + '/files/simple1100Lines.tsv';
    });

    describe('#tsvToDataSet()', function() {
        it('should convert a TSV file into a DataSet (simple)', function(done) {
            delimit.tsvToDataSet(simpleTsv, 0, function datasetCb(dataset) {
                should.exist(dataset);
                dataset.getHeaders().should.eql([
                   'Simple_Text', 'Simple_Int',
                   'Simple_Numeric', 'Simple_Boolean'
                ]);
                dataset.getDataTypes().should.eql([
                   defines.TEXT, defines.INTEGER,
                   defines.NUMERIC, defines.BOOLEAN
                ]);
                dataset.getData().should.eql([
                    ['Hello', 1, 1.1, true],
                    ['World', 2, 2.2, false]
                ]);
                done();
            });
        });
        it('should convert a TSV file into a DataSet (simple1100Lines)', function(done) {
            delimit.tsvToDataSet(simple1100Lines, 0, function datasetCb(dataset) {
                should.exist(dataset);
                dataset.getHeaders().should.eql([
                   'Simple_Text', 'Simple_Int',
                   'Simple_Numeric', 'Simple_Boolean'
                ]);
                dataset.getDataTypes().should.eql([
                   defines.TEXT, defines.INTEGER,
                   defines.NUMERIC, defines.BOOLEAN
                ]);
                dataset.getData().length.should.eql(1099);
                done();
            });
        });
    });

    describe.skip('#tsvToPgSql()', function() {

    });
});