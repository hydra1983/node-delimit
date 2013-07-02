set client_encoding to UTF8;
set standard_conforming_strings to on;
create table trevor.metamodel_Retiree (
	Heatmap text,
	in_DB text,
	In_column text,
	Variable numeric,
	Bandwidth_linear numeric,
	Bandwidth_time text,
	Weight_Variable text,
	Demographic text,
	Weight_H_Relevance text,
	Weight_S_Relevance text
);
copy trevor.metamodel_Retiree (Heatmap, in_DB, In_column, Variable, Bandwidth_linear, Bandwidth_time, Weight_Variable, Demographic, Weight_H_Relevance, Weight_S_Relevance) from stdin;
Core	\N	\N	\N	\N	\N	\N	\N	\N	\N
Art Galleries	\N	sic	8.41	10.0	\N	\N	\N	\N	\N
Theaters - Performing Art Centers	\N	naics	711110.0	10.0	\N	\N	\N	\N	\N
Nature Centers	\N	sic	842202.0	10.0	\N	\N	\N	\N	\N
Arboretums	\N	sic	842203.0	10.0	\N	\N	\N	\N	\N
Government Arboreta - Botanical - Zoological Garden	\N	sic	842204.0	10.0	\N	\N	\N	\N	\N
Botanical Gardens	\N	sic	842207.0	10.0	\N	\N	\N	\N	\N
Gardens 	\N	sic	842211.0	10.0	\N	\N	\N	\N	\N
Museums	\N	naics	712110.0	10.0	\N	\N	\N	\N	\N
Movie Theaters	\N	naics	512131.0	2.0	\N	\N	\N	\N	\N
Parks	park	\N	\N	0.5	\N	\N	\N	\N	\N
Public Golf Courses	\N	sic	799201.0	10.0	\N	\N	\N	\N	\N
Specialty Foods	\N	\N	\N	\N	\N	\N	\N	\N	\N
Libraries	libraries	\N	\N	2.0	\N	\N	\N	\N	\N
Congestion	\N	\N	\N	\N	\N	\N	\N	\N	\N
Events	\N	\N	\N	10.0	\N	\N	\N	\N	\N
Medical Services	\N	\N	\N	5.0	\N	\N	\N	\N	\N
Community Centers	\N	\N	\N	2.0	\N	\N	\N	\N	\N
Country Clubs	\N	\N	\N	7.5	\N	\N	\N	\N	\N
Department Stores (except Discount Department Stores)	\N	\N	452111.0	5.0	\N	\N	\N	\N	\N
All Other Home Furnishings Stores 	\N	\N	442299.0	5.0	\N	\N	\N	\N	\N
Retiree Restaurants	\N	\N	\N	\N	\N	\N	\N	\N	\N
Retiree Health	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.
vacuum analyze trevor.metamodel_Retiree;