set client_encoding to UTF8;
set standard_conforming_strings to on;
create table trevor.test_Japanese (
	Heatmap text,
	in_DB text,
	In_column text,
	Variable text,
	Bandwidth_linear integer,
	Bandwidth_time text,
	Weight_Variable text,
	Demographic text,
	Weight_H_Relevance text,
	Weight_S_Relevance text
);
copy trevor.test_Japanese (Heatmap, in_DB, In_column, Variable, Bandwidth_linear, Bandwidth_time, Weight_Variable, Demographic, Weight_H_Relevance, Weight_S_Relevance) from stdin;
\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Japaneese	restaurants	menu_type	2.3.03. Japanese	2	\N	\N	\N	\N	\N
Sushi	restaurants	menu_type	2.3.04. Sushi	2	\N	\N	\N	\N	\N
\.
vacuum analyze trevor.test_Japanese;