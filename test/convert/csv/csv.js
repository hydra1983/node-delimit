var should = require('should'),
    csv = require('../../../src/convert/csv/csv.js'),
    defines = require('../../../src/defines.js'),
    fs = require('fs');

describe('csv', function() {

    var csvSimple = __dirname + '/files/csvSimple.csv';

    beforeEach(function() {
        options = {
            tablename: 'trevor.test',
            headerRow: 0
        };
    });

    it('should convert a CSV file into PGSQL (simple)', function(done) {
        var ws = fs.createWriteStream('out_csv_0.sql');
        csv.csvToPgSql(csvSimple, ws, options, function doneCb() {
            ws.end();

            fs.readFile('out_csv_0.sql', {encoding: 'UTF8'}, function(error, data) {
                if(error) { throw error; }
                data.should.be.ok;
                fs.unlink('out_csv_0.sql', function() { done(); });
            });
        });
    });

});