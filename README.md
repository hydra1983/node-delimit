# delimit

Convert delimited files from one format into another with optional type recognition.

## Example converting a CSV file to PGSQL

Given the following CSV file:

    ID,FirstName,LastName,Code,Position1,Position2,LikesCats,CatsOwned,SomethingElse
    1,Trevor,Senior,00000,89.999,179.999,true,0,1.1
    2,John,Smith,0000-00000,89.999,179.999,false,0,2.2
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
2       John    Smith   0000-00000      89.999  179.999 false   0       2.2
4       Nolan   Johnson 000000000       89.999  179.999 0       1       5.5
5       Gregg   Fuller  12345   89.999  179.999 1       0       4.4
8       Wilson  Thomas  123456789       89.999  179.999 yes     100     13.37
\.
vacuum analyze default_name;
```

## NodeJS module



## CLI

    Usage: ./delimit [-flags] <convertFrom> <convertTo> <inputFile>

    Convert From Valid Values:
      - csv, tsv, xls, xlsx, json

    Convert To Valid Values:
      - pgsql

    If specifying column types for a flag, the following values are valid:

      - boolean
      - integer
      - biginteger
      - text
      - numeric
      - zip
      - lat
      - long
      - primary_integer

    # Example:

    Given the CSV file with contents

        First Name,Last Name
        Trevor,Senior
        James,Nolan
        Henry,Smith

    This will convert the CSV file into Postgres SQL

        ./delimit pg myfile.csv



    Options:
      --name, -n                What should we name our dataset?

      --appendString, -a        What String should we append to the end of our dataset name?

      --prependString, -p       What String should we prepend to the beginning of our dataset name?

      --headerRow, -H           [DELIMITED FILES ONLY] What row contains header information?

      --ignoreEmptyHeaders, -E  Should we ignore columns in data with empty headers?

      --forceTypes, -f          Force a type for a given column? (comma separated)
    e.g. 'column_name:boolean,another_column:text'
      --ignoreTypes, -t         Ignore a specific type?
     e.g. make a column of 0's and 1's type int instead of boolean
      --useHeaders, -u          Have we specified out own headers?

      --maintainHeaders, -A     Maintain the original header names?
    (e.g. do not switch to zip, lat, lng, etc)
      --dataOnly, -A            [PSQL ONLY] Only output data SQL (no create statement)

      --createOnly, -A          [PSQL ONLY] Only output create table SQL (no data)

      --insertStatements, -A    [PSQL ONLY] Use insert statements instead of dump format?

# TODO

 - Add more convertTo types. A lot of them are already complete and just need exposing and test cases.
   - TSV
   - JSON
   - XML
   - XLS

 - Add more convertFrom types:
   - XML
