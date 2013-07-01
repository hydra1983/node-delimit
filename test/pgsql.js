var should = require('should'),
    pgsql = require('../src/pgsql.js');
    defines = require('../src/defines.js');

describe('pgsql', function() {

    var tablename;
    var headers;
    var dataTypes;
    var data;

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
            var shouldBe = "vacuum analyze " + tablename + ';';
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

            pgsql.getCreateTableSql(tablename, headers, dataTypes)
                .should.equal(shouldBe);
        });
        it('should create table for type integer', function() {
            dataTypes = [defines.INTEGER];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes)
                .should.equal(shouldBe);
        });
        it('should create table for type big integer', function() {
            dataTypes = [defines.BIGINTEGER];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 bigint\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes)
                .should.equal(shouldBe);
        });
        it('should create table for type text', function() {
            dataTypes = [defines.TEXT];

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 text\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, headers, dataTypes)
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

            pgsql.getCreateTableSql(tablename, headers, dataTypes)
                .should.equal(shouldBe);
        });
        it.skip('should find the primary key (simple case)', function() {
            var tablename = 'trevor.test';
            var headers, dataTypes, data, dataset;
            headers = ["column_1"];
            dataTypes = ["integer"];
            data = {
                0: [1],
                1: [2],
                2: [3]
            };
            dataset = new utilClass.DataSet(headers, dataTypes, data);
            dataset = new datasetModifier.modifyPrimaryColumn(dataset);

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer primary key\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, dataset).should.equal(shouldBe);
        });
        it.skip('should find the primary key (complex case)', function() {
            var tablename = 'trevor.test';
            var headers, dataTypes, data, dataset;
            headers = ["column_1", "column_2"];
            dataTypes = ["integer", "integer"];
            data = {
                0: [4, 1],
                1: [5, 2],
                2: [7, 3]
            };
            dataset = new utilClass.DataSet(headers, dataTypes, data);
            dataset = new datasetModifier.modifyPrimaryColumn(dataset);

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer,\n" +
                "\tcolumn_2 integer primary key\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, dataset).should.equal(shouldBe);
        });
        it.skip('should find the primary key (another complex case)', function() {
            var tablename = 'trevor.test';
            var headers, dataTypes, data, dataset;
            headers = ["column_1", "column_2", "column_3"];
            dataTypes = ["integer", "integer", "integer"];
            data = {
                0: [4, 1, 3],
                1: [5, 2, 2],
                2: [7, 3, 1]
            };
            dataset = new utilClass.DataSet(headers, dataTypes, data);
            dataset = new datasetModifier.modifyPrimaryColumn(dataset);

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer,\n" +
                "\tcolumn_2 integer primary key,\n" +
                "\tcolumn_3 integer\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, dataset).should.equal(shouldBe);
        });
        it.skip('should find the primary key (another complex case)', function() {
            var tablename = 'trevor.test';
            var headers, dataTypes, data, dataset;
            headers = ["column_1", "column_2", "column_3"];
            dataTypes = ["integer", "integer", "integer"];
            data = {
                0: [-5, -1000, -999],
                1: [0, -990, -998],
                2: [10, -980, -997]
            };
            dataset = new utilClass.DataSet(headers, dataTypes, data);
            dataset = new datasetModifier.modifyPrimaryColumn(dataset);

            var shouldBe =
            "create table trevor.test (\n" +
                "\tcolumn_1 integer,\n" +
                "\tcolumn_2 integer,\n" +
                "\tcolumn_3 integer primary key\n" +
            ");\n";

            pgsql.getCreateTableSql(tablename, dataset).should.equal(shouldBe);
        });
    });

    describe('#getCopyHeaderSql()', function() {
        it('should create the insert dump statement (simple case)', function() {
            var shouldBe = "copy trevor.test (column_1) from stdin;\n";
            pgsql.getCopyHeaderSql(tablename, headers).should.equal(shouldBe);
        });
    });

    describe('#getCopyDataRowSql()', function() {
        it('should create the insert dump statement (simple case)', function() {
            var dataRow = data[0];
            var shouldBe = "1\n";
            pgsql.getCopyDataRowSql(dataRow).should.equal(shouldBe);
        });
        it('should create the insert dump statement (complex case)', function() {
            var dataRow = ['1', '2', '3', '4', 'hello'];
            var shouldBe = "1\t2\t3\t4\thello\n";
            pgsql.getCopyDataRowSql(dataRow).should.equal(shouldBe);
        });
    });

    describe('#getCopyFooterSql()', function() {
        it('should create the insert dump statement (simple case)', function() {
            var shouldBe = "\\.\n";
            pgsql.getCopyFooterSql().should.equal(shouldBe);
        });
    });

});