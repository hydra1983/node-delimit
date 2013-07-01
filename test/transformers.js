var should = require('should'),
    transformers = require('../src/transformers.js');

describe('transformers', function() {
    describe('#normalizeString()', function() {
        it('should remove all surrounding whitespace', function() {
            transformers.normalizeString("         column_name      ")
                .should.equal("column_name");
        });
        it('should replace all spaces with underscores', function() {
            transformers.normalizeString("column name")
                .should.equal("column_name");
        });
        it('should remove all characters that are not [A-Za-z09_]', function() {
            transformers.normalizeString("!#!#!#column_name@@@@@@####")
                .should.equal("column_name");
        });
    });

    describe('#normalizeHeader()', function() {
        it('should replace all header names starting with a number', function() {
            var headers = "88";
            transformers.normalizeHeader(headers).should.eql("column_88");
        });
    });
});