var should = require('should'),
    delimit = require('../src/delimit.js'),
    defines = require('../src/defines.js'),
    fs = require('fs');

describe('delimit', function() {

    describe('#tsvToDataSet()', function() {

        var simpleTsv;
        var simple1100Lines;
        var options;

        before(function() {
            options = {
                tablename: 'trevor.test',
                headerRow: 0
            };
            simpleTsv = __dirname + '/files/simple.tsv';
            simple1100Lines = __dirname + '/files/simple1100Lines.tsv';
        });

        it('should convert a TSV file into a DataSet (simple)', function(done) {
            delimit.tsvToDataSet(simpleTsv, options, function datasetCb(dataset) {
                should.exist(dataset);
                dataset.getHeaders().should.eql([
                   'Simple_Text', 'Simple_Int', 'Simple_Numeric',
                   'Simple_Boolean', 'Simple_LAT', 'Simple_Lng',
                   'Simple_Primary', 'Simple_Zip'
                ]);
                dataset.getDataTypes().should.eql([
                   defines.TEXT, defines.INTEGER, defines.NUMERIC,
                   defines.BOOLEAN, defines.LAT, defines.LONG,
                   defines.PRIMARY_INTEGER, defines.ZIP
                ]);
                dataset.getData().should.eql([
                    ['Hello', 5, 1.1, true, 89.9, 23.56, 1, '12345'],
                    ['World', 4, 2.2, false, 55.5, 45.5, 2, '00000'],
                    ['Foo', 3, 3.3, true, 23.2, 179.9, 3, '12345-6789'],
                    ['Bar', 2, 4.4, false, 45.44, 67.22, 4, '00000-0000']
                ]);
                done();
            });
        });
        it('should convert a TSV file into a DataSet (simple1100Lines)', function(done) {
            delimit.tsvToDataSet(simple1100Lines, options, function datasetCb(dataset) {
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

    describe('#tsvToPgSql()', function() {

        var simpleTsv;
        var simple1100Lines;
        var options;

        before(function() {
            options = {
                tablename: 'trevor.test',
                headerRow: 0
            };
            simpleTsv = __dirname + '/files/simple.tsv';
            simple1100Lines = __dirname + '/files/simple1100Lines.tsv';
        });

        it('should convert a TSV file into PGSQL (simple)', function(done) {
            var ws = fs.createWriteStream('out_0.sql');
            delimit.tsvToPgSql(simpleTsv, ws, options, function doneCb() {
                ws.end();

                fs.readFile('out_0.sql', {encoding: 'UTF8'}, function(error, data) {
                    if(error) { throw error; }
                    data.should.be.ok;
                    fs.unlink('out_0.sql', function() { done(); });
                });

            });
        });
    });

    describe('#xlsToPgSql()', function() {

        var simpleXls,
            twosheets,
            options;

        before(function() {
            options = {
                tablename: 'trevor.test'
            };
            simpleXls = __dirname + '/files/simple.xls';
            twosheets = __dirname + '/files/twosheets.xls';
        });

        it('should convert an XLS file into PGSQL (one sheet)', function(done) {
            var ws = fs.createWriteStream('out_1.sql');
            delimit.xlsToPgSql(simpleXls, ws, options, function doneCb() {
                ws.end();
                fs.readFile('out_1.sql', {encoding: 'UTF8'}, function(error, data) {
                    if(error) { throw error; }
                    data.should.be.ok;
                    fs.unlink('out_1.sql', function() {
                        done();
                    });
                });
            });
        });

        it('should convert an XLS file into PGSQL (two sheets)', function(done) {
            var ws = fs.createWriteStream('out_2.sql');
            delimit.xlsToPgSql(twosheets, ws, options, function doneCb() {
                ws.end();
                fs.readFile('out_2.sql', {encoding: 'UTF8'}, function(error, data) {
                    if(error) { throw error; }
                    data.should.be.ok;
                    fs.unlink('out_2.sql', function() { done(); });
                });
            });
        });
    });
});