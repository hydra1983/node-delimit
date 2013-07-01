var should = require('should'),
    loaders = require('../src/loaders.js');

describe('loaders', function() {

    describe('#getTsvLoader()', function() {
        it('should convert a tsv string into a 1D array', function() {
            var tsvLoader = loaders.getTsvLoader();
            tsvLoader.toDataRow("test").should.eql(['test']);
            tsvLoader.toDataRow("test\tstring").should.eql(['test', 'string']);
            tsvLoader.toDataRow("\t").should.eql(['', '']);
        });
    });
});