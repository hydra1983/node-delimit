var should = require('should'),
    pgsql = require('../src/pgsql.js'),
    transformers = require('../src/transformers'),
    defines = require('../src/defines.js');

describe('pgsql', function() {

    var tablename;
    var headers;
    var dataTypes;
    var data;

    var pgSqlTransformer = transformers.getPgSqlTransformer();

    beforeEach(function() {
        tablename = 'trevor.test';
        headers = ["column_1"];
        dataTypes = [defines.INTEGER];
        data = [
            [1],
            [2],
            [3]
        ];
    });

    describe('#getHeaderSql()', function() {
        it('should return some strings that appear before the SQL', function() {
            var tablename = 'trevor.test';
            should.exists(pgsql.getHeaderSql(tablename));
        });
    });
    describe('#getFooterSql()', function() {
        it('should return some string that appears after the SQL', function() {
            var tablename = 'trevor.test';
            var shouldBe = "vacuum analyze " + tablename + ';\n';
            pgsql.getFooterSql(tablename).should.equal(shouldBe);
        });
    });
    describe('#getCreateTableSql()', function() {
        it('should create table for type numeric', function() {
            dataTypes = [defines.NUMERIC];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 numeric\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create table for type integer', function() {
            dataTypes = [defines.INTEGER];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create table for type big integer', function() {
            dataTypes = [defines.BIGINTEGER];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 bigint\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create table for type text', function() {
            dataTypes = [defines.TEXT];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 text\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create table for multiple types', function() {
            headers = ["column_1", "column_2", "column_3"];
            dataTypes = [defines.TEXT, defines.INTEGER, defines.NUMERIC];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 text,\n" +
                "\tcolumn_2 integer,\n" +
                "\tcolumn_3 numeric\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should add the primary key (one)', function() {
            var headers, dataTypes, data, dataset;
            headers = ["column_1"];
            dataTypes = [defines.PRIMARY_INTEGER];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer,\n" +
                "\tprimary key (column_1)\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should add the primary key (multiple)', function() {
            var headers, dataTypes, data, dataset;
            headers = ["column_1", "column_2", "column_3"];
            dataTypes = [
                defines.PRIMARY_INTEGER, defines.TEXT, defines.PRIMARY_INTEGER];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer,\n" +
                "\tcolumn_2 text,\n" +
                "\tcolumn_3 integer,\n" +
                "\tprimary key (column_1, column_3)\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
    });

    describe('#getCopyHeaderSql()', function() {
        it('should create the insert dump statement (simple case)', function() {
            var shouldBe = "copy trevor.test (column_1) from stdin;\n";
            pgsql.getCopyHeaderSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create the insert dump statement (adjusted names)', function() {
            dataTypes = [ defines.LAT, defines.LONG, defines.ZIP ];
            headers = ["one", "two", "three"];
            var shouldBe = "copy trevor.test (lat, lng, zip) from stdin;\n";
            pgsql.getCopyHeaderSql(tablename, headers, dataTypes, pgSqlTransformer)
                .should.equal(shouldBe);
        });
    });

    describe('#getCopyDataRowSql()', function() {
        it('should create the insert dump statement (simple case)', function() {
            var dataRow = data[0];
            var shouldBe = "1\n";
            pgsql.getCopyDataRowSql(dataRow, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create the insert dump statement (complex case)', function() {
            var dataRow = ['1', '2', '3', '4', 'hello'];
            var shouldBe = "1\t2\t3\t4\thello\n";
            pgsql.getCopyDataRowSql(dataRow, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should correctly escape newlines', function() {
            var dataRow = ['1\n', '\n2\n'];
            var shouldBe = "1\\n\t\\n2\\n\n";
            pgsql.getCopyDataRowSql(dataRow, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should escape arbitrary backslashes', function() {
            var dataRow = [ 'hello\\I am stubborn'];
            var shouldBe = "hello\\\\I am stubborn\n";
            pgsql.getCopyDataRowSql(dataRow, pgSqlTransformer)
                .should.equal(shouldBe);
        })
    });

    describe('#getInsertDataRowSql()', function() {
        it('should create the correct insert statement (simple case)', function() {
            var dataRow = data[0];
            var shouldBe = "insert into trevor.test (column_1) values (E'1');\n";
            pgsql.getInsertDataRowSql(tablename, headers, dataRow, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create the correct insert statement (multiples)', function() {
            var dataRow = [ 1, 2, 3 ];
            var headers = [ 'c1', 'c2', 'c3' ];

            var shouldBe = "insert into trevor.test (c1, c2, c3) values (E'1', E'2', E'3');\n";
            pgsql.getInsertDataRowSql(tablename, headers, dataRow, pgSqlTransformer)
                .should.equal(shouldBe);
        });
        it('should create the correct insert statement (escape single quotes)', function() {
            var dataRow = [ "Trevor's", "''double" ];
            var headers = [ 'c1', 'c2' ];

            var shouldBe = "insert into trevor.test (c1, c2) values (E'Trevor''s', E'''''double');\n";
            pgsql.getInsertDataRowSql(tablename, headers, dataRow, pgSqlTransformer)
                .should.equal(shouldBe);
        });
    })

    describe('#getCopyFooterSql()', function() {
        it('should create the insert dump statement (simple case)', function() {
            var shouldBe = "\\.\n";
            pgsql.getCopyFooterSql().should.equal(shouldBe);
        });
    });

});