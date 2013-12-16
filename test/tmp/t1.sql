set client_encoding to UTF8;
set standard_conforming_strings to on;
create table NaN (
	column_1 text,
	column_2 text,
	column_3 text,
	column_4 text
);
copy NaN (column_1, column_2, column_3, column_4) from stdin;
Simple_Text	Simple_Int	Simple_Numeric	Simple_Boolean
Hello	1.0	1.1	1
World	2.0	2.2	0
\.
vacuum analyze NaN;
