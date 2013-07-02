var should = require('should'),
    xls = require('../../../src/convert/xls/xls.js'),
    defines = require('../../../src/defines.js'),
    fs = require('fs');

describe('xls', function() {

    var options,
        xlsTwoSheets = __dirname + '/files/xlsTwoSheets.xls',
        xlsSimple = __dirname + '/files/xlsSimple.xls',
        xlsInvalid = __dirname + '/files/xlsInvalid.xls';

    describe('#xlsToPgSql()', function() {
        beforeEach(function() {
            options = { tablename: 'trevor.test' };
        });

        it('should convert an XLS file into PGSQL (one sheet)', function(done) {
            var ws = fs.createWriteStream('out_1.sql');
            xls.xlsToPgSql(xlsSimple, ws, options, function doneCb() {
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
            xls.xlsToPgSql(xlsTwoSheets, ws, options, function doneCb() {
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