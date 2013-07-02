var should = require('should'),
    delimit = require('../src/delimit.js'),
    defines = require('../src/defines.js'),
    fs = require('fs');

describe('delimit', function() {

    var options,
        tsvSimple, tsvSimple1100, tsvMissingHeaders, tsvEmptyRow,
        xlsTwoSheets, xlsSimple, xlsInvalid;

    before(function() {
        tsvSimple = __dirname + '/files/tsvSimple.tsv';
        tsvSimple1100 = __dirname + '/files/tsvSimple1100.tsv';
        tsvMissingHeaders = __dirname + '/files/tsvMissingHeaders.tsv';
        tsvTwoSheets = __dirname + '/files/tsvTwoSheets.tsv';
        tsvEmptyRow = __dirname + '/files/tsvEmptyRow.tsv';
        xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls';
        xlsSimple = __dirname + '/files/xlsSimple.xls';
        xlsInvalid = __dirname + '/files/xlsInvalid.xls';
    });

    describe('#tsvToDataSet()', function() {
        beforeEach(function() {
            options = {
                tablename: 'trevor.test',
                headerRow: 0
            };
        });

        it('should convert a TSV file into a DataSet (simple)', function(done) {
            delimit.tsvToDataSet(tsvSimple, options, function datasetCb(dataset) {
                should.exist(dataset);

                should.exist(dataset.getHeaders());
                dataset.getHeaders().should.eql([
                   'Simple_Text', 'Simple_Int', 'Simple_Numeric',
                   'Simple_Boolean', 'Simple_LAT', 'Simple_Lng',
                   'Simple_Primary', 'Simple_Zip'
                ]);

                should.exist(dataset.getDataTypes());
                dataset.getDataTypes().should.eql([
                   defines.TEXT, defines.INTEGER, defines.NUMERIC,
                   defines.BOOLEAN, defines.LAT, defines.LONG,
                   defines.PRIMARY_INTEGER, defines.ZIP
                ]);

                should.exist(dataset.getData());
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
            delimit.tsvToDataSet(tsvSimple1100, options, function datasetCb(dataset) {
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
        it('should convert a TSV file into a DataSet (skip empty header names)', function(done) {
            options.ignoreEmptyHeaders = true;
            delimit.tsvToDataSet(tsvMissingHeaders, options, function datasetCb(dataset) {
                should.exist(dataset);
                dataset.getHeaders().should.eql([
                   'test_1', 'test_3'
                ]);
                dataset.getDataTypes().should.eql([
                   defines.TEXT, defines.NUMERIC
                ]);
                dataset.getData().length.should.eql(3);
                dataset.getData().should.eql([
                    ['one', 4.4],
                    ['two', 5.5],
                    ['three', 6.6]
                ]);
                done();
            });
        });
        it('should convert a TSV file into a DataSet (allow & replace empty header names)', function(done) {
            delimit.tsvToDataSet(tsvMissingHeaders, options, function datasetCb(dataset) {
                should.exist(dataset);
                dataset.getHeaders().should.eql([
                   'test_1', 'column_2', 'test_3'
                ]);
                dataset.getDataTypes().should.eql([
                   defines.TEXT, defines.PRIMARY_INTEGER, defines.NUMERIC
                ]);
                dataset.getData().length.should.eql(3);
                dataset.getData().should.eql([
                    ['one', 1, 4.4],
                    ['two', 2, 5.5],
                    ['three', 3, 6.6]
                ]);
                done();
            });
        });
        it('should convert a TSV file into a DataSet (force type text)', function(done) {
            options.forceType = defines.TEXT;
            delimit.tsvToDataSet(tsvMissingHeaders, options, function datasetCb(dataset) {
                should.exist(dataset);

                dataset.getHeaders().should.eql([
                   'test_1', 'column_2', 'test_3'
                ]);

                dataset.getDataTypes().should.eql([
                   defines.TEXT, defines.TEXT, defines.TEXT
                ]);

                should.exist(dataset.getData());
                dataset.getData().should.eql([
                    ['one', '1', '4.4'],
                    ['two', '2', '5.5'],
                    ['three', '3', '6.6']
                ]);
                done();
            });
        });
    });

    describe('#tsvToPgSql()', function() {
        beforeEach(function() {
            options = {
                tablename: 'trevor.test',
                headerRow: 0
            };
        });

        it('should convert a TSV file into PGSQL (simple)', function(done) {
            var ws = fs.createWriteStream('out_0.sql');
            delimit.tsvToPgSql(tsvSimple, ws, options, function doneCb() {
                ws.end();

                fs.readFile('out_0.sql', {encoding: 'UTF8'}, function(error, data) {
                    if(error) { throw error; }
                    data.should.be.ok;
                    fs.unlink('out_0.sql', function() { done(); });
                });

            });
        });

        it('should convert a TSV file into a PGSQL (skip empty header names)', function(done) {
            options.ignoreEmptyHeaders = true;
            var ws = fs.createWriteStream('out_0.sql');
            delimit.tsvToPgSql(tsvMissingHeaders, ws, options, function doneCb() {
                ws.end();

                fs.readFile('out_0.sql', {encoding: 'UTF8'}, function(error, data) {
                    if(error) { throw error; }
                    data.should.be.ok;
                    data.indexOf("one\t4.4\n" +
                                 "two\t5.5\n" +
                                 "three\t6.6\n").should.not.equal(-1);
                    fs.unlink('out_0.sql', function() { done(); });
                });

            });
        });
    });

    describe('#xlsToPgSql()', function() {
        beforeEach(function() {
            options = { tablename: 'trevor.test' };
        });

        it('should convert an XLS file into PGSQL (one sheet)', function(done) {
            var ws = fs.createWriteStream('out_1.sql');
            delimit.xlsToPgSql(xlsSimple, ws, options, function doneCb() {
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
            delimit.xlsToPgSql(xlsTwoSheets, ws, options, function doneCb() {
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