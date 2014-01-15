# delimit

Convert delimited files (csv, tsv, xls, etc) into other formats.

## Example converting a CSV file to PGSQL

Given the following CSV file:

    ID,FirstName,LastName,Code,Position1,Position2,LikesCats,CatsOwned,SomethingElse
    1,Trevor,Senior,00000,89.999,179.999,true,0,1.1
    2,John,Smith,00000000,89.999,179.999,false,0,2.2
    4,Nolan,Johnson,000000000,89.999,179.999,0,1,5.5
    5,Gregg,Fuller,12345,89.999,179.999,1,0,4.4
    8,Wilson,Thomas,123456789,89.999,179.999,yes,100,13.37

Issuing the following command:

    ./delimit csv pgsql <fileName>

We end up with the following result:

```sql
set client_encoding to UTF8;
set standard_conforming_strings to on;
create table default_name (
        ID integer,
        FirstName text,
        LastName text,
        Code text,
        lat numeric,
        lng numeric,
        LikesCats boolean,
        CatsOwned integer,
        SomethingElse numeric,
        primary key (ID)
);
copy default_name (ID, FirstName, LastName, Code, lat, lng, LikesCats, CatsOwned, SomethingElse) from stdin;
1       Trevor  Senior  00000   89.999  179.999 true    0       1.1
2       John    Smith   00000000      89.999  179.999 false   0       2.2
4       Nolan   Johnson 000000000       89.999  179.999 0       1       5.5
5       Gregg   Fuller  12345   89.999  179.999 1       0       4.4
8       Wilson  Thomas  123456789       89.999  179.999 yes     100     13.37
\.
vacuum analyze default_name;
```

## Install

    npm install --save delimit

Optional: Use `-g` to access the delimit cli script.

You also need to have Python 2 in your path along with the [xlrd](https://pypi.python.org/pypi/xlrd) package to handle excel spreadsheets.

## As a NodeJS module

### Basic Usage

```javascript
#!/usr/bin/env node
"use strict";

var delimit = require('../index.js');

delimit.convertStream('csv', 'pgsql', __dirname + '/files/csvSimple.csv')
.then(function(pgsqlStream) {
    pgsqlStream.pipe(process.stdout);
});
```

### Exposed Functions

#### **`delimit.convertStream(convertFrom, convertTo, filePath [, options])`**

Converts one file format into another. The input data can be in the form of a file path or a stream. This function will return a stream that that contains the converted output.

*Supported `convertFrom` values:*

    'csv', 'tsv', 'json', 'xls'

*Supported `convertTo` values:*

    'tsv', 'pgsql'

*`options` (pass in any of these as object values)*

    - name (string) (default: 'default_name')
        What should we name our dataset?

    - appendString (string)
        What String should we append to the end of our dataset name?

    - prependString (string)
        What String should we prepend to the beginning of our dataset name?

    - headerRow (int)
        What row contains header information?

    - ignoreEmptyHeaders (bool)
        Should we ignore columns in data with empty headers?

    - forceTypes (object)
        Force a type for a given column? (comma separated)

        { column_name:"boolean", another_column: "text", ... }

    - ignoreTypes (array)
        Ignore a specific type? For example, this would be useful if you
        wanted to make a column of zero's and one's appear as an integer
        type vs. a boolean type:

        [ 'boolean', ... ]

    - useHeaders (array)
        Specify your own headers to use vs. the default ones in the
        delimited file. E.g.

        [ 'header_1', 'header_2', ...]

    - maintainHeaders (bool) (default: false)
        Maintain the original header names? This will make it so it
        preserves the header names instead of automatically changing
        header names based on the type discovered.

        Basically do not switch to zip, lat, lng, etc.

    - dataOnly (bool) (default: false) [PSQL ONLY]
        Only output data SQL (no create statement)

    - createOnly (bool) (default: false) [PSQL ONLY]
        Only output create table SQL (no data)

    - insertStatements (bool) (default: false) [PSQL ONLY]
        Use insert statements instead of dump format?

## CLI

For usage information

    ./delimit -h

## Tests

mocha-as-promised must be installed.
