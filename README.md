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

## Install

    npm install --save delimit

Optional: Use `-g` to access the delimit cli script.

## NodeJS module



## CLI

For usage information

    ./delimit -h

