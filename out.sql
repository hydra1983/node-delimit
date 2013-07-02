set client_encoding to UTF8;
set standard_conforming_strings to on;
create table msa (
	Name text,
	Address text,
	Street_1 text,
	Street_2 text,
	Zip integer,
	lat numeric,
	lng numeric,
	Class text,
	State text,
	County text,
	City text,
	Playground text,
	Pools integer,
	Tennis integer,
	Baseball integer,
	Basketball text,
	Playing integer,
	Acreage numeric,
	Dog integer,
	Ice text,
	Notes text
);
copy msa (Name, Address, Street_1, Street_2, Zip, lat, lng, Class, State, County, City, Playground, Pools, Tennis, Baseball, Basketball, Playing, Acreage, Dog, Ice, Notes) from stdin;
Pope Park	\N	Pope St	Addy Dr	2743	\N	\N	Urban	MA	Bristol	Acushnet	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Dighton Community Playground	979 Somerset Ave	\N	\N	2715	\N	\N	Urban	MA	Bristol	Dighton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Lane Field	\N	Main St	Water St	2715	\N	\N	Urban	MA	Bristol	Dighton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
No. Dighton Playground and Ball Field	\N	Prospect St	School St	2764	\N	\N	Urban	MA	Bristol	Dighton	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Osprey landing	\N	Boat Ramp Rd	Park Ave	2715	\N	\N	Urban	MA	Bristol	Dighton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
School Lane Playground	\N	School Ln	Palmer St	2715	\N	\N	Urban	MA	Bristol	Dighton	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Tennis and Basketball courts	1551 Somerset Ave	\N	\N	2715	\N	\N	Urban	MA	Bristol	Dighton	\N	\N	1	\N	1.0	\N	\N	\N	\N	\N
Tri- Centennial Park	\N	Water St	Pleasant St	2715	\N	\N	Urban	MA	Bristol	Dighton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Edwin A Keach Park	49 Chestnut St	\N	\N	2356	\N	\N	Urban	MA	Bristol	Easton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Tories Place Park	\N	\N	\N	\N	42.064308	-71.101536	Urban	MA	Bristol	Easton	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Unionville Field	184 Washington St	\N	\N	2356	\N	\N	Urban	MA	Bristol	Easton	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Anthony Field	\N	\N	\N	\N	41.649	-70.9079	Urban	MA	Bristol	Fairhaven	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Cushman Park	\N	Green St	Christian St	2719	\N	\N	Urban	MA	Bristol	Fairhaven	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Livesey Park	\N	Glenhaven Ave	Parker St	2719	\N	\N	Urban	MA	Bristol	Fairhaven	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Macomber Pimental Field	\N	\N	\N	\N	41.62085249	-70.86676323	Urban	MA	Bristol	Fairhaven	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Pease Park	\N	Middle St	Pease St	2719	\N	\N	Urban	MA	Bristol	Fairhaven	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Willow Park	\N	South St	Chesnut St	2719	\N	\N	Urban	MA	Bristol	Fairhaven	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
ABBOTT COURT PLAYGROUND	\N	Birch St	King St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	1	1.0	1	4.0	\N	\N	\N
AETNA STREET PLAYGROUND	\N	\N	\N	\N	41.68113685	-71.1615064	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	1.0	\N	1.0	\N	\N	Coordinates
BANK STREET TOT LOT	\N	Bank St	OGrady St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
BICENTENNIAL PARK	\N	Davol St	Bottom President Ave	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	4	\N	\N	\N	5.0	\N	\N	\N
BRITLAND PARK	\N	Pleasant St	Fifteenth St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	2	\N	3.0	1	16.0	\N	\N	\N
COLUMBUS PARK	\N	Bedford St	Stinziano St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	1	1.0	\N	1.0	\N	\N	\N
DAVIS PLAYGROUND	703 Meridian St	\N	\N	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	1	1.0	\N	3.0	\N	\N	In the rear
DESMARAIS PLAYGROUND	\N	McGowan St	County St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	\N	\N	\N	1.0	\N	\N	\N
DUMONT FIELD	\N	County St	Brogan Blvd	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	2	\N	\N	3.0	\N	\N	\N
FATHER KELLY PARK	\N	SMain St	Globe St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	1	\N	\N	5.0	\N	\N	\N
FATHER TRAVASSOS PARK	\N	Everett St	Alden St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	2.0	1	5.0	\N	\N	\N
GRIFFIN PLAYGROUND	\N	Fourth St	Fifth St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	\N	2.0	\N	1.0	\N	\N	\N
JOSE SILVA PARK	\N	Locust St	N Quarry St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	\N	\N	2.0	\N	\N	\N
KENNEDY PARK	\N	SMain St	Middle St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	1	1	1	1.0	1	54.0	\N	\N	\N
LAFAYETTE PARK	\N	Eastern Ave	County St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	1	1	1	1.0	1	11.0	\N	\N	\N
MAPLEWOOD PARK	\N	Stafford Rd	Albert St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	1	1	1.0	\N	13.0	\N	\N	\N
MASSASOIT TOT LOT	\N	Quequechan St	Wamsutta St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
NORTH PARK	\N	N Main St	Hood St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	1	1.0	1	25.0	\N	\N	\N
PULASKI PLAYGROUND	\N	Warren St	Jackson St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	1	1	\N	\N	3.0	\N	\N	\N
RUGGLES PARK	\N	Pine St	Seabury St	\N	\N	\N	Urban	MA	Bristol	Fall River	1.0	\N	\N	1	1.0	\N	9.0	\N	\N	\N
SMALL SCHOOL BASEBALL FIELD	\N	\N	\N	\N	41.7019942	-71.13861219	Urban	MA	Bristol	Fall River	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
THOMAS CHEW FIELD	\N	Globe St	Slade St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	1	1.0	\N	4.0	\N	\N	\N
TURNER PLAYGROUND	\N	Danforth St	Locust St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	2.0	\N	2.0	\N	\N	\N
Bandstand Park	\N	South Main St	Elm St	2702	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Central Park	\N	Memorial Dr	Bullock Rd	2717	\N	\N	Urban	MA	Bristol	Freetown	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Hathaway Park	\N	\N	\N	\N	41.793992	-71.072482	Urban	MA	Bristol	Freetown	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Memorial Park	\N	Memorial Dr	Chace Rd	2717	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Porter's Shore	\N	Gramp Deane Rd	Jeffrey Ln	2702	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	\N	\N	\N	10.0	\N	\N	\N
Rezendes Baseball Complex	13 Narrows Rd	\N	\N	2702	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Town Beach	99 Long Pond Rd	\N	\N	2717	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Fultons Pond	\N	West St	Rumford Ave	2048	\N	\N	Urban	MA	Bristol	Mansfield	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hutchinson Fields	\N	Pratt St	Granada Cir	2048	\N	\N	Urban	MA	Bristol	Mansfield	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Kingman Pond	\N	Dean St	Spring St	2048	\N	\N	Urban	MA	Bristol	Mansfield	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Memorial Park	111 Hope St	\N	\N	2048	\N	\N	Urban	MA	Bristol	Mansfield	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Plymouth St Fields	5 Plymouth St	\N	\N	2048	\N	\N	Urban	MA	Bristol	Mansfield	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
South Common	\N	Union St	West St	2048	\N	\N	Urban	MA	Bristol	Mansfield	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Burchill Fields	38 Plain St	\N	\N	2766	\N	\N	Urban	MA	Bristol	Norton	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Everett Leonard Park	6 Parker St	\N	\N	2766	\N	\N	Urban	MA	Bristol	Norton	1.0	1	\N	1	1.0	1	\N	\N	\N	\N
Lyons Field	\N	Dean	Harvey St	2766	\N	\N	Urban	MA	Bristol	Norton	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Trecentennial Park and Community Playground	217 West Main St	\N	\N	2766	\N	\N	Urban	MA	Bristol	Norton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Borden Colony Athletic Complex	2215 King Philip St	\N	\N	2767	\N	\N	Urban	MA	Bristol	Raynham	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Johnson Pond	\N	N Main St	Kenny Rd	2767	\N	\N	Urban	MA	Bristol	Raynham	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
L.B. Merrill School	687 Pleasant St	\N	\N	2767	\N	\N	Urban	MA	Bristol	Raynham	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
LaLiberte Elementary School	777 Pleasant St	\N	\N	2767	\N	\N	Urban	MA	Bristol	Raynham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Raynham Middle School	420 Titicut Rd	\N	\N	2767	\N	\N	Urban	MA	Bristol	Raynham	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Village Waterfront Park	\N	\N	\N	\N	41.769941	-71.124748	Urban	MA	Bristol	Somerset	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Swansea Project Playground	\N	Milford Rd	School St	2777	\N	\N	Urban	MA	Bristol	Swansea	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Amesbury Town Park and Skate Park	140 Friend St	\N	\N	1913	\N	\N	Urban	MA	Essex	Amesbury	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Batchelder Park	\N	\N	\N	\N	42.866434	-70.939751	Urban	MA	Essex	Amesbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Collins St Field	\N	Collins St	Collins Ave	1913	\N	\N	Urban	MA	Essex	Amesbury	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Deer Island	1 Deer Island st	\N	\N	1913	\N	\N	Urban	MA	Essex	Amesbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lake Gardner Beach	\N	\N	\N	\N	42.86045	-70.937616	Urban	MA	Essex	Amesbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Woodsom Farm	222 Lions Mouth Rd	\N	\N	1913	\N	\N	Urban	MA	Essex	Amesbury	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Pomps Pond	\N	\N	\N	\N	42.636599	-71.149609	Urban	MA	Essex	Andover	1.0	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Recreation Park	9 Woburn St	\N	\N	1810	\N	\N	Urban	MA	Essex	Andover	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
The Park	\N	Bartlet St	Chestnut St	1810	\N	\N	Urban	MA	Essex	Andover	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ahearn Park	\N	Fayette St	S Hardy St	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Ayers Ryal Side Elementary School	40 Woodland Ave	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	1.0	1	9.7	\N	\N	\N
Balch Park	\N	Cabot St	Balch St	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Bessie Baker Park	373R Cabot St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Beverly Common	\N	Essex St	Dane St	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Beverly Dog Park	\N	LP Henderson Rd	San Fonzo Dr	1915	\N	\N	Dog	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	1	\N	\N
Beverly High School	100 Sohier Rd	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Birch Plains Park	\N	Cabot St	LP Henderson Rd	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Brackenberry Beach	\N	\N	\N	\N	42.550772	-70.851656	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Briscoe Middle School	7 Sohier Rd	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	1.0	1	6.5	\N	\N	\N
Cahill Park and Centerville Playground	17 Hull St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	1	1	\N	1	12.48	\N	\N	\N
Colgate Park	\N	Colgate Rd	Radcliffe Rd	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cooney Field	105 Essex St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Cove Elementary School	2 Eisenhower Ave	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	1	9.0	\N	\N	\N
David S. Lynch Memorial Park	\N	Ober St	Oceanside Dr	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Dix Park	\N	Haskell St	Goodwin Rd	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Femino Park	\N	Lindsey Ave	Stewart Ave	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Gillis Park	98 Porter St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Hannah Elementary School	41 Brimbal Ave	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	1	1.0	\N	\N	\N
Harry Ball Field	406 Essex St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Hellard-Hubis Park	\N	McKay St	Sturtevant St	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Herlihy Park	15 Livingstone Ave	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Holcroft Park	\N	Gage St	Mill St	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Independence Park	\N	Lothrop St	Wilson Ave	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Innocenti Park	\N	McPherson Dr	River St	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Kimball-Haskell Park	\N	Cross St	Ray St	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Longfellow Tot Lot	52 Middlebury Ln	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	1	\N	1.0	\N	\N	\N	\N	\N
Lyons Park	111 Lothrop St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
McArthur Park	34 Simon St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
McKeown Elementary School	70 Balch St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	\N	1	6.5	\N	\N	\N
Norman Gilbert Park	Stone St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
North Beverly Elementary School	48 Putnam St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	1.0	1	5.89	\N	\N	\N
Oak Heights	\N	Old Town Rd	Deer Haven Rd	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Obear Park	145 Livingstone Ave	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Odell Park	158 Rantoul St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Rice's Beach	\N	\N	\N	\N	42.54702	-70.858088	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Sally Milligan Park	86 Cross Ln	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sam Carratu Park	154 Park St	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Sandy Point	\N	\N	\N	\N	42.54042	-70.877995	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Vittori Park	\N	Cabot St	Conant St	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Wardell Square	\N	Brimbal Ave	Colon St	1915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wentworth Tot Lot	10 Wentworth Dr	\N	\N	1915	\N	\N	Urban	MA	Essex	Beverly	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Woodbury Beach	\N	\N	\N	\N	42.546961	-70.862795	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Christopher Cargill Fields	26 Middleton Rd	\N	\N	1921	\N	\N	Urban	MA	Essex	Boxford	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Eric Luther Boy Scout Park and Robert M Ackerman Playground	\N	Dana Rd	Cahoon Rd	1921	\N	\N	Urban	MA	Essex	Boxford	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Johnson and Chadwick Fields	19 Spofford Rd	\N	\N	1921	\N	\N	Urban	MA	Essex	Boxford	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Keith R. Koster Park	15 Stiles Pond Rd 	\N	\N	1921	\N	\N	Urban	MA	Essex	Boxford	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Morse Field	188 Washington St	\N	\N	1921	\N	\N	Urban	MA	Essex	Boxford	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Spofford Pond School	31 Spofford Rd	\N	\N	1921	\N	\N	Urban	MA	Essex	Boxford	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Bradstreet Park	21 Bradstreet Ave	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Choate Farm	401 Locust St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Danvers High School	60 Cabot Rd	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Endicott Park	57 Forest St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Folly Hill Park	12 Upland Rd	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Gates Field	15 Stone St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Great Oak School	76 Pickering St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Highlands School	190 Hobart St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
John George Park	35 River St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Lawrence Street Park	46 Lawrence St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Plains Park	55 Conant St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Preston Street Park	31 Preston St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Putnamville Park	11 Wenham Rd	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Rand Circle Park	12 Rand Cir	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Riverside School	95 Liberty St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Sandy Beach	44 River St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Smith School	2 Orrantia Cir	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Southwick Park	15 Tipert St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tapley Park	139 Pine St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Thorpe School	30 Avon Rd	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Williams School/Art Association	105 Elliot St	\N	\N	1923	\N	\N	Urban	MA	Essex	Danvers	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Centennial Grove/Field of Dreams	46 Centennial Grove Rd	\N	\N	1929	\N	\N	Urban	MA	Essex	Essex	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Essex Elementary School	12 Story St	\N	\N	1932	\N	\N	Urban	MA	Essex	Essex	1.0	\N	\N	\N	1.0	\N	10.0	\N	\N	\N
Memorial Park	24 Martin St	\N	\N	1933	\N	\N	Urban	MA	Essex	Essex	1.0	\N	1	1	1.0	\N	16.0	\N	\N	\N
American Legion Park	\N	Milton Way	Pentucket Ave	1833	\N	\N	Urban	MA	Essex	Georgetown	1.0	\N	1	1	1.0	1	9.0	\N	\N	\N
Harry Murch Park	\N	Library St	E Main St	1835	\N	\N	Urban	MA	Essex	Georgetown	\N	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Joseph Soucy Memorial Playground / Penn Brook School	68 Elm St	\N	\N	1833	\N	\N	Urban	MA	Essex	Georgetown	1.0	\N	\N	1	1.0	1	48.0	\N	\N	\N
Wellfields	\N	\N	\N	\N	42.721385	-71.020582	Urban	MA	Essex	Georgetown	\N	\N	\N	\N	\N	1	100.8	\N	\N	Coordinates
Apple Street Playground	1 Apple St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	1	2.9	\N	\N	\N
Babson Playground	\N	Poplar St	Russell Ave	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	\N	0.2	\N	\N	\N
Bayview Playground	891 Washington St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	\N	0.8	\N	\N	\N
Beeman School Playground	138 Cherry St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	1	1.0	\N	2.2	\N	\N	\N
Ben Smith Playground	East Main St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	\N	0.4	\N	\N	\N
Burke Playground	620 Western Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	1	\N	1	6.6	\N	\N	\N
Burnham's Field	75 Pleasant St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	1	1.0	\N	6.7	\N	\N	\N
Ciaramitaro/Gemellaro Playground	25 Fort Square	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
East Gloucester Elementary School Field and Parsons Playground	9 Davis St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	1	2.66	\N	\N	\N
Elizabeth Road Playground and Para Research Field	11 Abbott Rd	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	1	2.21	\N	\N	\N
Ellery House Field	247 Washington St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	2.9	\N	\N	\N
Fuller School Fields	4 School House Rd	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	\N	1	13.4	\N	\N	\N
Ganine H. Doucette Playground / Green St Park	6 Green St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	1	1.0	\N	5.8	\N	\N	\N
Gloucester High School Fields and Courts	32 Leslie O Johnson Rd	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	1	\N	\N	1	21.2	\N	\N	\N
Gordon Thomas Park	5 EAST MAIN ST	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Governors Hill Park / Lookout Park	20 Commonwealth Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	1.13	\N	\N	\N
Keith Trefry Park / Rocky Neck Park	Rocky Neck Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	2.1	\N	\N	\N
Kettle Cove Field	644 Western Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	5.2	\N	\N	\N
Knowlton Park / Viera Park	32 Fuller St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	0.3	\N	\N	\N
Magnolia Park	\N	Magnolia Ave	Raymond St	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Magnolia Woods Recreational Area	472 Western Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	259.5	\N	\N	\N
Middleton Playground	\N	Friend St	Friend Ct	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	1.0	\N	0.6	\N	\N	\N
Newell Stadium	26 Centennial Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	8.2	\N	\N	\N
O'Maley School Fields and Skatepark	32 Cherry St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	1.0	1	30.1	\N	\N	\N
Plum Cove Recreation Area and Sepalla Field	1007 Washington St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	\N	\N	55.85	\N	\N	\N
Plum Cove School	15 Hickory St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	\N	16.3	\N	\N	\N
Ravenswood	481 Western Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	598.7	\N	\N	\N
Rebecca's Playground	\N	Washington St	Morgan Ave	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
St. Peters Park / Gilbert's Landing	2 Commercial St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	1.0	\N	\N	\N
Stacy Boulevard	\N	Western Ave	 Middle St	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	1.0	\N	\N	\N
Stage Fort Park	24 Hough Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	1	1	\N	1	61.0	\N	\N	\N
Surf Park	6 Magnolia Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	0.64	\N	\N	\N
Swinsons Field/Farm	\N	\N	\N	\N	42.605002	-70.648769	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
The Oval Playground / Palazola Playground	92 CENTENNIAL Ave	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	1	\N	\N	2.71	\N	\N	\N
Veterans Memorial School and Mattos Field	11 Webster St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	\N	\N	1	6.3	\N	\N	\N
West Parish School and Science Park	10 Concord St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	1.0	\N	\N	1	1.0	\N	20.1	\N	\N	\N
Wilson's Field	353 Washington St	\N	\N	1930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	\N	\N	16.8	\N	\N	\N
Elm Park	\N	Elm Park	Gardner St	1834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	\N	1.2	\N	\N	\N
Perry Park	\N	Main St	King St	1834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	\N	2.4	\N	\N	\N
Pines Recreation Area	222 Main St	\N	\N	1834	\N	\N	Urban	MA	Essex	Groveland	1.0	\N	\N	1	1.0	1	21.0	\N	\N	\N
Shanahan Field	423 Main St	\N	\N	1834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	1	9.3	\N	\N	\N
South Groveland Fire Station	181 Main St	\N	\N	1834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Veasey Memorial Park	201 Washington St	\N	\N	1834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	\N	47.5	\N	\N	\N
Washington Park	89 Center St	\N	\N	1834	\N	\N	Urban	MA	Essex	Groveland	1.0	\N	\N	1	1.0	\N	11.3	\N	\N	\N
Cutler School	237 Asbury St	\N	\N	1982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Donovan Field	\N	\N	\N	\N	42.63013	-70.823557	Urban	MA	Essex	Hamilton	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Fairhaven Field	\N	Linden St	Marjorie St	1982	\N	\N	Urban	MA	Essex	Hamilton	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Hailton-Wenham Regional High School	775 Bay Rd	\N	\N	1982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Middle School	787 Bay Rd	\N	\N	1982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Patton Park	340 Bay Rd	\N	\N	1982	\N	\N	Urban	MA	Essex	Hamilton	1.0	1	1	1	1.0	1	\N	\N	\N	\N
Pingree School	537 Highland St	\N	\N	1982	\N	\N	Urban	MA	Essex	Hamilton	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Winthrop School	325 Bay Rd	\N	\N	1982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Riverside Park	\N	Lincoln Ave	Nettleton Ave	1830	\N	\N	Urban	MA	Essex	Heverhill	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Wainnekini Park	\N	Kenoza Ave	Shore Dr	1830	\N	\N	Urban	MA	Essex	Heverhill	1.0	\N	1	\N	\N	\N	\N	\N	\N	\N
Bialek Park	\N	Linebrook Rd	Maple Ave	1938	\N	\N	Urban	MA	Essex	Ipswich	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Doyon School	216 Linebrook Rd	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Father Rye Playground	29 Kimball St	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Giles Firman Playground	\N	\N	\N	\N	42.673047	-70.836075	Urban	MA	Essex	Ipswich	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Great Neck Park / Pavillion Beach	128 Little Neck Rd	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Green Street Town Hall	25 Green St	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Howe St Playground	11 Howe St	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Middle School and High School Fields	130 High St	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	1	1	\N	1	\N	\N	\N	\N
Miles Lane Ball Fields	65 Mile Ln	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Nichols Field	60 Labor in Vain Rd	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	15.0	\N	\N	\N
Pocket Park	County St	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
Saw Mill Point Pocket Park	County St	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
Strawberry Hill	56 Jeffreys Neck Rd	\N	\N	1938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	91.0	\N	\N	\N
Bourgoin Square Park	\N	West St	Wendell St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Campagnone Common	\N	Common St	Lawrence St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Costello Park	\N	Crawford St	Abbott St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Den Rock Park	\N	\N	\N	\N	42.68074775	-71.13997697	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Donovan Park	\N	Andover St	Beacon St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Dr. Nina Scarito Park	\N	\N	\N	\N	42.714029	-71.15372513	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Durant Square	\N	Berkeley St	East Haverhill St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Frank W. Rowell Park	\N	Auburn St	Cedar St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gagnon Park	\N	Providence St	Shawmut St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Hayden Schofield Playstead	\N	Lawrence St	Myrtle St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Highland Park	\N	Park St	Broadway	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Howard Playstead	\N	Lawrence St	Hampshire St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Immigrant Place	\N	Chesnut St	Short St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Jeremiah J. Cronin Park	\N	Alder St	Poplar St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Manchester Street Park	77 Manchester St	\N	\N	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	\N	1	5.0	\N	\N	\N
McDermott Park	\N	Bailey St	Parker St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Misserville Park	\N	Allen St	Summer St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Mount Vernon Park	\N	Crestshire Dr	Barnard Rd	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
N. Common Neighborhood Reviviendo	\N	Newbury St	Summer St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
O'Connell South Common	\N	South Union St	Market St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
O'Neill Park	\N	Lawrence St	Oak St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Plainsman Park	\N	White St	Chestnut St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Reservoir Park	\N	Reservoir St	Ames St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
Shawsheen Park	\N	\N	\N	\N	42.69468938	-71.1447617	Urban	MA	Essex	Lawrence	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Stockton Park	\N	Route 114	Union St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Storrow Park	\N	High St	Pleasant St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Sullivan Park	\N	Route 114	North Parish Rd	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Van Doorne Park	\N	Doyle St	School St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
William Kennedy Community Park	\N	Holly St	Daisy St	\N	\N	\N	Urban	MA	Essex	Lawrence	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Ames Playground	\N	Strawberry Ave	Chester Pl	1904	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Barry Park	\N	Waterford St	Batchelders Ct	1905	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Bennett Street Playground	\N	Bennett St	Elmwood Ave)	1905	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Breed Park	\N	OﾒCallaghan Way	Breed Jr High	1905	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	1	1.0	\N	\N	\N	\N	\N
Camp Kiwanis	\N	\N	\N	\N	42.476457	-70.9877	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Clark Street Playground	\N	Pacific St	Boylston St	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Cook Street Playground	\N	Cook St	Eade St	1902	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	\N	1.0	\N	\N	\N	\N	\N
Elm Street Playground	\N	\N	\N	\N	42.461289	-70.9632	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Filene Playground	630 Western Ave	\N	\N	1905	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Flax Pond Playground	37 Towns Ct	\N	\N	1904	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Floating Bridge Park	\N	Western Ave	Eastern Ave	1904	\N	\N	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Frasier Field	76 Locust St	\N	\N	1904	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	1	\N	1	\N	\N	\N	\N
Frey Playground	\N	Walnut St	Tranfaglia Rd	1905	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
G.E.A.A. Field	671 Summer St	\N	\N	1905	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Gallagher Playground	\N	Ontario St	Tapley St	1904	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Goldfish Pond/Lafayette Park	31 Lafayette Park	\N	\N	1902	\N	\N	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gowdy Park	\N	Maple Valley Rd	Tuscan Rd	1904	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Henry Avenue Playground	\N	Henry Ave	Nichols Ave	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
High Rock Park	30 Circuit Ave	\N	\N	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Hood Park	\N	Winnepurkit Ave	Holyoke St	1905	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Keaney Park	\N	Memorial Park Ave	Adams St	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Kiley Playground	81 Burrill Ave	\N	\N	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Lynn Commons	\N	\N	\N	\N	42.463225	-70.9596	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Lynn Woods Playground	\N	\N	\N	\N	42.477035	-70.9862	Urban	MA	Essex	Lynn	\N	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Magnolia Ave. Playground	\N	Magnolia Ave	Meadow Ct	1904	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Neptune Blvd. Park	\N	Bennet St	Commercial St	1902	\N	\N	Urban	MA	Essex	Lynn	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Northern Ave. Playground	\N	Northern Ave	Blanchard St	1904	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
River St. Playground	\N	River St	Cooper St	1905	\N	\N	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sagamore St. Playground	\N	Sagamore St	Newhall St	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sheridan Street Playground	26 Sheridan St	\N	\N	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Smith Street Playground	\N	Smith St	School St	1902	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Warren Street Playground	\N	Warren St	George St	1905	\N	\N	Urban	MA	Essex	Lynn	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Williams Ave. Playground	81 Williams Ave	\N	\N	1902	\N	\N	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Freeman Park	\N	Main St	Summer St	1940	\N	\N	Urban	MA	Essex	Lynnfield	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Glen Meadow Park	\N	\N	\N	\N	42.523696	-71.02644	Urban	MA	Essex	Lynnfield	1.0	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
Huckleberry Hill School	5 Knoll Rd	\N	\N	1940	\N	\N	Urban	MA	Essex	Lynnfield	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Jordan/Pioneer Park	\N	Wildwood Dr	Pillings Pond Rd	1940	\N	\N	Urban	MA	Essex	Lynnfield	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Lynnfield High School	257 Essex St	\N	\N	1940	\N	\N	Urban	MA	Essex	Lynnfield	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Lynnfield Middle School	505 Main St	\N	\N	1940	\N	\N	Urban	MA	Essex	Lynnfield	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Lynnfield South School	525 Salem St	\N	\N	1940	\N	\N	Urban	MA	Essex	Lynnfield	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lynnfield Town Common	\N	Main St	Summer St	1940	\N	\N	Urban	MA	Essex	Lynnfield	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Newhall Park at Suntaug	7 Oak St	\N	\N	1940	\N	\N	Urban	MA	Essex	Lynnfield	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
Pine Hill Lot	\N	\N	\N	\N	42.54613958	-71.03613441	Urban	MA	Essex	Lynnfield	1.0	\N	\N	\N	\N	\N	9.5	\N	\N	Coordinates
Summer Street School	262 Summer St	\N	\N	1940	\N	\N	Urban	MA	Essex	Lynnfield	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Black Beach	\N	\N	\N	\N	42.579121	-70.73196	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Coach Field Playground	\N	Norwood Ave	Brook St	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	1.0	\N	1	\N	\N	1	\N	\N	\N	\N
Hinckley Park	\N	Pleasant St	School St	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Masconomo Park	\N	Tappan St	Beach St	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Reed Park & Pier	\N	\N	\N	\N	42.573314	-70.770322	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Singing Beach	119 Beach St	\N	\N	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Surf Park	Raymond St	\N	\N	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
Sweeney Park	113 Summer St	\N	\N	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Tuckﾒs Point	17 Tucks Point Rd	\N	\N	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
West Manchester Beach	\N	\N	\N	\N	42.565262	-70.786623	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
White Beach	\N	Ocean St	Crow Island	1944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Castle Rock Park	377 Ocean Ave	\N	\N	1945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	1.2	\N	\N	\N
Chandler Hovey Park / Lighthouse Point	\N	Follet St	Lighthouse Ln	1945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	3.74	\N	\N	\N
Crocker Park	1 Front St	\N	\N	1945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	2.82	\N	\N	\N
Fort Sewall	\N	Fort Sewall Ln	Front St	1945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fountain Park	\N	\N	\N	\N	42.510666	-70.845157	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Gatchell Playground	60 Lafayette St	\N	\N	1945	\N	\N	Urban	MA	Essex	Marblehead	1.0	\N	\N	1	1.0	1	8.33	\N	\N	\N
Gerry Playground	\N	Stramski Way	West Shore Dr	1945	\N	\N	Urban	MA	Essex	Marblehead	1.0	\N	\N	\N	\N	\N	6.85	\N	\N	\N
Hammond Park	\N	Commercial St	Cliff St	1945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hobbs Playground	\N	Clifton Ave	Brook Rd	1945	\N	\N	Urban	MA	Essex	Marblehead	1.0	\N	\N	1	\N	\N	1.14	\N	\N	\N
Memorial Park	\N	Essex St	Pleasant St	1945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	0.32	\N	\N	\N
Orne Playground	20 Shepard St	\N	\N	1945	\N	\N	Urban	MA	Essex	Marblehead	1.0	\N	\N	1	\N	\N	5.22	\N	\N	\N
Reynolds Playground	\N	Lime St	Farrell Ct	1945	\N	\N	Urban	MA	Essex	Marblehead	1.0	\N	\N	1	\N	1	5.45	\N	\N	\N
Seaside Park	92 Atlantic Ave	\N	\N	1945	\N	\N	Urban	MA	Essex	Marblehead	1.0	\N	1	1	1.0	1	33.7	\N	\N	\N
Carey Park	\N	\N	\N	\N	42.825362	-70.984694	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	0.8	\N	\N	Coordinates
Carriagetown Park	\N	\N	\N	\N	42.830231	-70.978761	Urban	MA	Essex	Merrimac	\N	\N	\N	1	\N	1	17.94	\N	\N	Coordinates
Cobbler's Brook	\N	Broad St	Lancaster Ct	1860	\N	\N	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	4.9	\N	\N	\N
Donahue School/Stevens Athletic Fields	\N	Locust St	Union St	1860	\N	\N	Urban	MA	Essex	Merrimac	1.0	\N	1	1	1.0	\N	16.3	\N	\N	\N
Indian Head Park	\N	\N	\N	\N	42.840345	-70.98891	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	31.0	\N	\N	Coordinates
Kimball Park	\N	W Main St	Union St	1860	\N	\N	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	0.7	\N	\N	\N
River Road Peninsula	\N	\N	\N	\N	42.825513	-70.982591	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	0.8	\N	\N	Coordinates
Sweetsir School	\N	Church St	Hansom Dr	1860	\N	\N	Urban	MA	Essex	Merrimac	1.0	\N	\N	\N	\N	\N	10.7	\N	\N	\N
Town Forest Park	\N	\N	\N	\N	42.838964	-71.016473	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	1	286.2	\N	\N	Coordinates
ASHFORD STREET	\N	\N	\N	\N	42.72774508	-71.15	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
BICENTENNIAL PARK	BROADWAY PARK	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
CENTRAL BUILDING	\N	\N	\N	\N	42.72296219	-71.18	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
CGS SCHOOL	100 Howe St	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
CHELMSFORD ST	\N	CHELMSFORD ST	Lawrence St	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
FOREST LAKE	\N	\N	\N	\N	42.73103366	-71.25	Urban	MA	Essex	Methuen	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
FRANCIS MORSE PARK	25 Burnham Rd	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
GILL AVENUE	\N	Gill Ave	Railroad St	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
MARSH SCHOOL	309 Pelham St	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
METHUEN HIGH SCHOOL	1 RANGER RD	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	1	\N	1.0	1	\N	\N	\N	\N
NEIL PLAYSTEAD	\N	LAWRENCE ST	 East St	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
OAKLAND SCHOOL	125 Oakland Ave	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
PLEASANT VALLEY SCHOOL	180 Pleasant Valley St	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
POTTERS FIELD	\N	\N	\N	\N	42.72731616	-71.2	Urban	MA	Essex	Methuen	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
RAYMOND MARTIN PARK	\N	RIVERSIDE DR	Burham Rd	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
RIVERWALK PARK	\N	\N	\N	\N	42.726961	-71.19	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
SARGENT FIELD	\N	WEST AYER ST	Holly St	1844	\N	\N	Urban	MA	Essex	Methuen	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
SHORTYS PARK	\N	Mystic St	Lindberg Ave	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
SHRUENDER PARK	\N	Riverview Blvd	Jason Rd	1844	\N	\N	Urban	MA	Essex	Methuen	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
TENNEY MIDDLE SCHOOL	75 PLEASANT ST	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
TENNEY ST	\N	\N	\N	\N	42.722087	-71.18	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
TENNIS COURT	\N	COPLEY DR	OLD HOMESTEAD Rd	1844	\N	\N	Urban	MA	Essex	Methuen	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
TIMONY SCHOOL	45 PLEASANT VIEW ST	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
VETERANS PARK	\N	\N	\N	\N	42.737313	-71.15	Urban	MA	Essex	Methuen	1.0	\N	\N	1	1.0	1	\N	\N	\N	Coordinates
YMCA FIELDS	129 Haverhill St	\N	\N	1844	\N	\N	Urban	MA	Essex	Methuen	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
16 James Ave Steps	\N	James Ave	Lennox Rd	1908	\N	\N	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bailys Hill	\N	Trimountain Rd	Bass Point Rd	1908	\N	\N	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
East Point / Lodge Park	\N	\N	\N	\N	42.418669	-70.903991	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Flash Road Playground	55 Flash Rd	\N	\N	1908	\N	\N	Urban	MA	Essex	Nahant	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Little Nahant Playground	\N	\N	\N	\N	42.433417	-70.935094	Urban	MA	Essex	Nahant	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Lowlands Playground	\N	\N	\N	\N	42.428133	-70.931581	Urban	MA	Essex	Nahant	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Marjoram Park	\N	Willow Rd	Wharf St	1908	\N	\N	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pleasant Street Playground	\N	Pleasant St	Central St	1908	\N	\N	Urban	MA	Essex	Nahant	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Spring Road Basketball Court	\N	\N	\N	\N	42.426848	-70.930392	Urban	MA	Essex	Nahant	\N	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Swallow Cave	\N	\N	\N	\N	42.416362	-70.910418	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Veterans Park	\N	\N	\N	\N	42.429632	-70.933485	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Central St Complex	\N	Central St	Fatherland Dr	1922	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Kent Way / Lunt St Complex	\N	Lunt St	Main St	1922	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Lower Green	\N	High Rd	Newman Rd	1951	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Newbury Elementary School	63 Hanover St	\N	\N	1951	\N	\N	Urban	MA	Essex	Newbury	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Upper Green	\N	High Rd	Hanover St	1951	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Atkinson Common	\N	Mosley Ave	High St	1950	\N	\N	Urban	MA	Essex	Newburyport	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Atwood Park	\N	Lime St	Atwood St	1950	\N	\N	Urban	MA	Essex	Newburyport	\N	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Bartlet Mall and Frog Pond Playgroundﾠ	\N	Auburn St	High St	1950	\N	\N	Urban	MA	Essex	Newburyport	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Brown Square	\N	Titcomb St	Pleasant St	1950	\N	\N	Urban	MA	Essex	Newburyport	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cashman Park	5 Pop Crowley Way	\N	\N	1950	\N	\N	Urban	MA	Essex	Newburyport	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
City Forest	\N	Hale St	Lavalley Ln	1950	\N	\N	Urban	MA	Essex	Newburyport	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cushing Park and Ayers Playground	\N	Congress St	Buck St	1950	\N	\N	Urban	MA	Essex	Newburyport	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Inn Street Playground	\N	\N	\N	\N	42.810774	-70.870645	Urban	MA	Essex	Newburyport	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Jason Sawyer Playground	\N	\N	\N	\N	42.815829	-70.81774	Urban	MA	Essex	Newburyport	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Joppa Park	212 Water St	\N	\N	1950	\N	\N	Urban	MA	Essex	Newburyport	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
March's Hill	\N	High Rd	Bromfield St	1950	\N	\N	Urban	MA	Essex	Newburyport	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Moseley Woods	\N	Merrimac St	Spofford St	1950	\N	\N	Urban	MA	Essex	Newburyport	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Perkins Playground	\N	Lincoln St	Beacon Ave	1950	\N	\N	Urban	MA	Essex	Newburyport	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Woodman Park	50 Crow Ln	\N	\N	1950	\N	\N	Urban	MA	Essex	Newburyport	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
APLIN	\N	Water St	Claredon St	1845	\N	\N	Urban	MA	Essex	North Andover	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
CARL THOMAS	\N	Dana St	Beverly St	1845	\N	\N	Urban	MA	Essex	North Andover	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
FOSTER FARM	\N	\N	\N	\N	42.667444	-71.1	Urban	MA	Essex	North Andover	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
GALLAGHER	\N	\N	\N	\N	42.683083	-71.1	Urban	MA	Essex	North Andover	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
GROGIES	\N	Baldwin St	Gilbert St	1845	\N	\N	Urban	MA	Essex	North Andover	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
MCEVOY/CHADWICK	\N	Chadwick St	Moody St	1845	\N	\N	Urban	MA	Essex	North Andover	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
North Andover MIDDLE SCHOOL Fields	495 Main St	\N	\N	1845	\N	\N	Urban	MA	Essex	North Andover	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
REYNOLDS Park	\N	Johnson St	Rea St	1845	\N	\N	Urban	MA	Essex	North Andover	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
SHARPNERS	\N	\N	\N	\N	42.628504	-71.1	Urban	MA	Essex	North Andover	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Bartholomew Pond P.G.	\N	\N	\N	\N	42.508036	-70.96351	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Brown School	150 Lynn St	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Buckley Field	\N	\N	\N	\N	42.531647	-70.925277	Urban	MA	Essex	Peabody	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Burke School	127 Birch St	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Castle Circle	\N	\N	\N	\N	42.533504	-70.942309	Urban	MA	Essex	Peabody	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Center School	18 Irving St	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Corbeil Park	\N	Russel St	Hoover Terr	1960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	1	1	1.0	\N	\N	\N	\N	\N
Cottage St Playground	14 COTTAGE ST	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Emerson Park	\N	Perkins St	James St	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Farnham Park	\N	Endicott St	Noble Ln	1960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Forest St. Playground	\N	Forest St	Dudley St	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Higgins Middle School	\N	Allens Ln	Perkins St	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Kennedy Athletic Fields	\N	\N	\N	\N	42.545074	-71.002622	Urban	MA	Essex	Peabody	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Kiley Brothers Memorial School	21 Johnson St	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Lakeshore Park	\N	Lakeshore Rd	Bay State Rd	1960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Lalikos Park	\N	Nancy Ave	Raylen Ave	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Leather City Common	\N	Lowell St	School St	1960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lt. Ross Park	\N	\N	\N	\N	42.544615	-70.992193	Urban	MA	Essex	Peabody	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
MacArthur Park	17 Macarthur Circle	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Marrs Park	\N	Home St	Clement Ave	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
McCarthey School	76 Lake St	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Peabody Veterans Memorial High School Fields	485 Lowell St	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	1	1	\N	1	\N	\N	\N	\N
Pierpont Playground	\N	Piermont St	Fountain St	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Raddin Park	\N	Lynnfield St	Corwin St	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
South Memorial School and Carroll Savage Park	16 Maple St Ext	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Squanto Park	\N	\N	\N	\N	42.541673	-71.019139	Urban	MA	Essex	Peabody	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Symphony Park	\N	Symphony Rd	Catherine Dr	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Thomas Carrol Schol and Connolly Park	\N	Dark Ln	Connolly Terr	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Tot Lot- Loris Rd.	\N	Loris Rd	Blake St	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Welch School	50 Swampscott Ave	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
West Memorial School	15 Bow St	\N	\N	1960	\N	\N	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Whitney Playground	\N	\N	\N	\N	42.516578	-70.983168	Urban	MA	Essex	Peabody	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Willowbrae Park	\N	Willowbrae Dr	Livingston Dr	1960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Evans Field	32 Pooles Ln	\N	\N	1966	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Harvey	\N	\N	\N	1966	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Manning Park	\N	Squam Rd	Granite Rd	1960	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Millbrook Meadow Park	\N	King St	Forest St	1966	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Millbrook Pond Park	\N	\N	\N	\N	42.657778	-70.623443	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Pingree Park	\N	\N	\N	\N	42.674331	-70.625841	Urban	MA	Essex	Rockport	1.0	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
School Playing Fields	26 Jerdens Ln	\N	\N	1966	\N	\N	Urban	MA	Essex	Rockport	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Seafencibles	\N	\N	\N	1966	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Eiras Park	477 Haverhill St	\N	\N	1969	\N	\N	Urban	MA	Essex	Rowley	1.0	\N	\N	1	\N	1	17.5	\N	\N	\N
Haley Field	435 Haverhill St	\N	\N	1969	\N	\N	Urban	MA	Essex	Rowley	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pine Grove Elementary School	191 Main St	\N	\N	1969	\N	\N	Urban	MA	Essex	Rowley	1.0	\N	\N	1	1.0	1	16.0	\N	\N	\N
Rowley Town Common	\N	Main St	Independent St	1969	\N	\N	Urban	MA	Essex	Rowley	\N	\N	\N	1	\N	1	2.0	\N	\N	\N
33 Proctor St	33 Proctor St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.44	\N	\N	\N
Bertram Field	1 Powder House Ln	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	1	5.5	\N	\N	\N
Broad Street Park	Broad St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.5	\N	\N	Couldnﾒt Find
Camp Naumkeag	56 Memorial Dr	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	4.7	\N	\N	\N
Castle Hill Playground	14 Story Rd	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	1.0	1	3.8	\N	\N	\N
Collins Cove	2 Collins St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	32.6	\N	\N	\N
Collins Cove Playground	31 Collins St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	1	1	1.0	\N	4.2	\N	\N	\N
Common	\N	Washington Square	Winter St	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	1.0	\N	10.05	\N	\N	\N
Curtis Park	19 March St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	1.0	\N	0.62	\N	\N	\N
Dibiase Park	\N	\N	\N	\N	42.511174	-70.920246	Urban	MA	Essex	Salem	1.0	\N	\N	\N	1.0	\N	0.47	\N	\N	Coordinates
Forest River Park	38 Clifton Ave	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	1	1	1	1.0	\N	29.0	\N	\N	\N
Fort Lee	100 Memorial Dr	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	16.03	\N	\N	\N
Furlong Park	20 Franklin St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	1.0	\N	5.5	\N	\N	\N
Gallows Hill Park and Playground	53 Hanson St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	1.0	1	22.21	\N	\N	\N
Gonyea Park	41 Northey St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	\N	\N	0.14	\N	\N	\N
Highland Park,	199 Highland Ave	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	270.63	\N	\N	\N
Hight St. Park,	2 High St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	1.0	\N	0.51	\N	\N	\N
Juniper Park	28 Beach Ave	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	1.0	\N	0.5	\N	\N	\N
Kernwood Marina & McCabe Park	24 Kernwood St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	4.3	\N	\N	\N
Lafayette Park	124 Lafayette St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Lappin Park	112 Washington St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.11	\N	\N	\N
Mack Park	\N	Mason St	Tremont St	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	1.0	\N	25.8	\N	\N	\N
Mansell Park	50 Proctor St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	\N	1	1.5	\N	\N	\N
Mary Jane Lee Park / Prince St Playground)	41 Palmer St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	1.0	\N	0.73	\N	\N	\N
McGlew Park	\N	North St	Nursery St	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	1.0	1	2.4	\N	\N	\N
McGrath Park	46 Marlborough Rd	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	1	\N	1.0	1	22.3	\N	\N	\N
Memorial Park (Irzyk)	17 Fort Ave	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	1.0	1	7.4	\N	\N	\N
Palmer Cove Park	30 Leavitt St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	1	1	1.0	\N	7.2	\N	\N	\N
Patten Park	41 Buffum St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.08	\N	\N	\N
Pickrnan Park	20 Lincoln Rd 	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	1	1	1.0	1	3.01	\N	\N	\N
Splaine Park	23 May St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	1	1.0	\N	1.85	\N	\N	\N
Swiniuch Park	128 Derby St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.03	\N	\N	\N
Willows Park	\N	Fort Ave	Bayview Ave	1970	\N	\N	Urban	MA	Essex	Salem	\N	\N	1	\N	1.0	1	24.62	\N	\N	\N
Winter Island	50 Winter Island Rd	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	\N	\N	27.1	\N	\N	\N
Witchcraft Heights	1 Frederick St	\N	\N	1970	\N	\N	Urban	MA	Essex	Salem	1.0	\N	\N	\N	1.0	\N	15.0	\N	\N	\N
Beach Road Field	215 Beach Rd	\N	\N	1952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Lions Park	39 Lafayette Rd	\N	\N	1952	\N	\N	Urban	MA	Essex	Salisbury	1.0	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
Memorial School	18 Maple St	\N	\N	1952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Salisbury Elementary School	100 Lafayette Rd	\N	\N	1952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Skateboard Park	380 Beach Rd	\N	\N	1952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Anna Parker Playground	\N	Essex St	School St	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Belmonte Middle School and World Series Park	25 Dow St	\N	\N	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Bristow Parkﾠ	\N	Bristow St	Barressi Ln	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Elks Fieldﾠ	\N	Main St	Hickory Ln	1906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Grabowski Field	\N	Hurd Ave	Pelham St	1906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Lynnhurst Elementary School Field	10 Elm St	\N	\N	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Oaklandvale Elementary School Fieldﾠ	266 Main St	\N	\N	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Parcher Field at Kasabuski Rink	201 Forest St	\N	\N	1906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Saugus High School Fields	1 Pearce Memorial Dr	\N	\N	1906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Stackpole Field	\N	Appleton St	Summer St	1906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Stocker Playground	\N	Winter St	Stocker St	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Veterans Elementary School	39 Hurd Ave	\N	\N	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Waybright Elementary School Field	25 Talbot St	\N	\N	1906	\N	\N	Urban	MA	Essex	Saugus	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Abbott Park	\N	Paradise Rd	Norfolk Ave	1907	\N	\N	Urban	MA	Essex	Swampscott	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Hadley Playground	24 Redington St	\N	\N	1907	\N	\N	Urban	MA	Essex	Swampscott	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Linscott Park	\N	Humphrey St	Monument Ave	1907	\N	\N	Urban	MA	Essex	Swampscott	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lower Jackson Park	1 Essex St	\N	\N	1907	\N	\N	Urban	MA	Essex	Swampscott	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Phillips Park	\N	Humphrey St	Pleasant St	1907	\N	\N	Urban	MA	Essex	Swampscott	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Stanley School Park	2 Whitman Rd	\N	\N	1907	\N	\N	Urban	MA	Essex	Swampscott	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Swampscott Middle School Field	207 Forest Ave	\N	\N	1907	\N	\N	Urban	MA	Essex	Swampscott	\N	\N	1	1	\N	\N	\N	\N	\N	\N
Upper Jackson Park	1 The Greenway	\N	\N	1907	\N	\N	Urban	MA	Essex	Swampscott	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Klock Park	17 North St	\N	\N	1983	\N	\N	Urban	MA	Essex	Topsfield	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Proctor Elementary School	60 Main St	\N	\N	1983	\N	\N	Urban	MA	Essex	Topsfield	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Pye Brook Community Park	124 Haverhill Rd	\N	\N	1983	\N	\N	Urban	MA	Essex	Topsfield	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Steward School	261 Perkins Row	\N	\N	1983	\N	\N	Urban	MA	Essex	Topsfield	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
Buker Elementary	1 School St	\N	\N	1984	\N	\N	Urban	MA	Essex	Wenham	1.0	\N	\N	1	1.0	1	7.1	\N	\N	\N
Iron Rail Fields	\N	Grapevine Rd	Essex St	1984	\N	\N	Urban	MA	Essex	Wenham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Pingree Park	211 Main St	\N	\N	1984	\N	\N	Urban	MA	Essex	Wenham	1.0	\N	1	1	\N	1	8.0	\N	\N	\N
West Wenham Park (Higgenson Bicentennial Playground)	122 Topsfield Rd	\N	\N	1984	\N	\N	Urban	MA	Essex	Wenham	\N	\N	1	\N	1.0	1	3.2	\N	\N	\N
Cammett Park	\N	\N	\N	\N	42.799467	-70.987312	Urban	MA	Essex	West Newbury	1.0	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Page School	694 Main St	\N	\N	1985	\N	\N	Urban	MA	Essex	West Newbury	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Pentucket Regional High School	24 Main St	\N	\N	1985	\N	\N	Urban	MA	Essex	West Newbury	\N	\N	1	1	\N	1	\N	\N	\N	\N
Pipestave Hill Recreation Area	\N	\N	\N	\N	42.805863	-70.960586	Urban	MA	Essex	West Newbury	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Concord Rd. Field	104 Concord Rd	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Elm St. Fields	21 Elm St	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Gardner Field	\N	\N	\N	\N	42.47546	-71.47	Urban	MA	Middlesex	Acton	1.0	\N	\N	\N	1.0	1	\N	\N	\N	Coordinates
Goward Playground	486 Main St	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Great Hill and Little Great Hill	54 School St	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Ice House Pond	\N	\N	\N	\N	42.477258	-71.41	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Jones Field	54 Martin St	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
MacPherson Field and Hart Field	80 Taylor Rd	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Morrison Farm Community Gardens	116 Concord Rd	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
NARA Park	25 Ledge Rock Way	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
North Acton Community Gardens	845 Main St	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
School St. Fields	323 School St	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
T.J. OﾒGrady Skate Park	66 Hayward Rd	\N	\N	1720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Veteranﾒs Field	\N	Main St	Great Rd	1720	\N	\N	Urban	MA	Middlesex	Acton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Bishop Field	25 Columbia Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Brackett School	66 Easter Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Buck Field	422 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Buzzell Field	29 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Crosby School Tennis Courts	\N	Oxford St	Raleigh St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	1	\N	\N	1	\N	\N	\N	\N
Cutter School	\N	Robbins Rd	Howard St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Florence Field and Dallin School	185 Florence Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Hardy School	52 Lake St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Hibbert Playgroundﾠ	Hibbert St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hill's Hill	422 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hurd and Reservoir Fields	\N	Mass Ave	Drake Rd	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Locke School Playgroundﾠ	88 Park Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lussiano Field and Thompson School	60 North Union St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	1	\N	1	1.0	1	\N	\N	\N	\N
Magnolia Park	\N	Herbert St	Magnolia St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
McClennen Park	664 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Menotomy Rocks Park	\N	Jason St	Brantwood Rd	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ottoson Middle School	63 Acton St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Parmenter Park	17 Irving St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Peirce School	85 Park Ave Extension	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Poetﾒs Corner Park	175 Dow Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Robbins Farm Park	51 Eastern Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Robbins Library	700 Mass Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Scannell Field	90 Linwood St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Spy Pond Parkﾠ	\N	Pond Ln	Wellington St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Stratton School	180 Mountain Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Summer Street Park	422 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
The Great Meadows	\N	\N	\N	\N	42.432215	-71.201191	Urban	MA	Middlesex	Arlington	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Thorndike Field	99 Margaret St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
W. A. Peirce Field	869 Mass Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Whittemore Robbins House Park	700 Mass Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Allen Field	92 Breed Rd	\N	\N	1431	\N	\N	Urban	MA	Middlesex	Ashby	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Ashby Elementary School	911 Main St	\N	\N	1431	\N	\N	Urban	MA	Middlesex	Ashby	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Ashby Town Common	\N	Main St	Common Rd	1431	\N	\N	Urban	MA	Middlesex	Ashby	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ashland Middle School	87 West Union St	\N	\N	1721	\N	\N	Urban	MA	Middlesex	Ashland	\N	\N	1	1	\N	1	\N	\N	\N	\N
Stone Park	\N	Park Rd	Cherry St	1721	\N	\N	Urban	MA	Middlesex	Ashland	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Ayer Middle and Senior High Schools	141 Washington St	\N	\N	1432	\N	\N	Urban	MA	Middlesex	Ayer	\N	\N	1	1	\N	1	\N	\N	\N	\N
Nonaicoicus Park	\N	\N	\N	\N	42.561208	-71.5953	Urban	MA	Middlesex	Ayer	\N	\N	\N	\N	\N	\N	7.0	\N	\N	Coordinates
Page-Hilltop Elementary School	115 Washington St	\N	\N	1432	\N	\N	Urban	MA	Middlesex	Ayer	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pirone Park	\N	Bligh St	School St	1432	\N	\N	Urban	MA	Middlesex	Ayer	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Sandy Pond Beach	\N	Sandy Pond Rd	Snake Hill Rd	1432	\N	\N	Urban	MA	Middlesex	Ayer	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Davis Elementary School	410 Davis Rd	\N	\N	1730	\N	\N	Urban	MA	Middlesex	Bedford	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Depot Park	\N	Loomis St	S Rd	1730	\N	\N	Urban	MA	Middlesex	Bedford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Eliot Park	\N	\N	\N	\N	42.472694	-71.2684	Urban	MA	Middlesex	Bedford	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
High School & Middle School Complex	9 Mudge Way	\N	\N	1730	\N	\N	Urban	MA	Middlesex	Bedford	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Memorial Park	\N	Great Rd	Bacon Rd	1730	\N	\N	Urban	MA	Middlesex	Bedford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Page Field	\N	Loomis St	Deangelo Dr	1730	\N	\N	Urban	MA	Middlesex	Bedford	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
South Road Fields	\N	S Rd	Fayette Rd	1730	\N	\N	Urban	MA	Middlesex	Bedford	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Springs Brook Park	\N	\N	\N	\N	42.499215	-71.2724	Urban	MA	Middlesex	Bedford	1.0	1	\N	1	1.0	1	\N	\N	\N	Coordinates
Belmont High School	221 Concord Ave	\N	\N	2478	\N	\N	Urban	MA	Middlesex	Belmont	\N	1	1	1	\N	\N	38.0	\N	\N	\N
Burbank School	266 School St	\N	\N	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Butler School	90 White St	\N	\N	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Chenery School	95 Washington St	\N	\N	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
Grove Street	\N	Grove St	Huron Ave	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	1	1	\N	1	10.0	\N	\N	\N
Payson Park	\N	Payson Rd	Elm St	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Pequosette Park	\N	Maple St	Chesnut St	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	1	\N	\N	1	7.0	\N	\N	East 
Town Field	\N	Waverly	Beech Sts	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Underwood	\N	School	Cottage Sts	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	1	\N	\N	\N	\N	\N	\N	\N	\N
Wellington School	121 Orchard St	\N	\N	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Winn Brook School	97 Waterhouse Rd	\N	\N	2478	\N	\N	Urban	MA	Middlesex	Belmont	1.0	\N	1	1	\N	\N	7.0	\N	\N	\N
KIDS KONNECTION	\N	\N	\N	\N	42.560019	-71.2659	Urban	MA	Middlesex	Billerica	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
KOHLRAUSCH PARK	12 Colson St	\N	\N	1862	\N	\N	Urban	MA	Middlesex	Billerica	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
LAMPSON RECREATION COMPLEX	20 Campbell Rd	\N	\N	1862	\N	\N	Urban	MA	Middlesex	Billerica	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
MICOZZI BEACHﾠ	\N	\N	\N	\N	42.535625	-71.2652	Urban	MA	Middlesex	Billerica	1.0	\N	\N	\N	1.0	1	\N	\N	\N	Coordinates
PINEHURST PARK	793 Boston Rd	\N	\N	1862	\N	\N	Urban	MA	Middlesex	Billerica	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
VIETNAM VETERANS PARK	\N	Treble Cove Rd	Farm Rd	1862	\N	\N	Urban	MA	Middlesex	Billerica	1.0	\N	\N	\N	\N	1	200.0	\N	\N	\N
Blanchard Memorial School	493 Massachusetts Ave	\N	\N	1719	\N	\N	Urban	MA	Middlesex	Boxborough	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Fifers Field	\N	\N	\N	\N	42.510205	-71.534	Urban	MA	Middlesex	Boxborough	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Flerra Meadows	\N	Stow Rd	Chester Rd	1719	\N	\N	Urban	MA	Middlesex	Boxborough	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Liberty Fields	1100 Liberty Square Rd	\N	\N	1719	\N	\N	Urban	MA	Middlesex	Boxborough	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Marvin Field	South Bedford St	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Overlook Park	1 Edgemere Ave	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Pathwoods Tot Lot	Pathwoods Ave	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Rahanis Park	84 Mill St	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Regan Park	88 Sumpter Rd	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Rotary Field	118 South Bedford St	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Simonds Park	\N	Bedford St	Cambridge St	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Town Common	\N	Cambridge St	Center St	1803	\N	\N	Urban	MA	Middlesex	Burlington	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
TRW Park	\N	Mall Rd	Stoney Brook Rd	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Veteranﾒs Park	Wilmington Rd	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Wildmere Playground	Wildmere Ave	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wildwood Park	114 Bedford St	\N	\N	1803	\N	\N	Urban	MA	Middlesex	Burlington	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Ahern Field and Kennedy/Longfellow School	\N	Fulkerson St	Charles St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Alberico Park	\N	Pleasant St	Allston St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Alden Park and Baldwin School	\N	Oxford St	Sacramento St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Anderson Courts	\N	Pemberton St	Yerxa Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	1	\N	1.0	\N	\N	\N	\N	\N
Bergin Park	\N	Pemberton St	Haskell St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cambridge Common	\N	Garden St	Waterhouse	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Cambridge Rindge & Latin School and War Memorial	459 Broadway	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cambridgeport School	89 Elm St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Centanni Way	\N	Third St	Otis St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Charles Park	\N	Land Blvd	Rogers St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Clarendon Avenue Playground	\N	Mass Ave	Clarendon Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	1.5	\N	\N	\N
Clement G. Morgan Park	\N	Columbia St	Washington St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Comeau Field	\N	\N	\N	\N	42.394131	-71.1377	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Cooper Park	\N	Hancock St	Centre St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Corporal Burns Park	\N	Memorial Dr	Flagg St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	1	0.08	\N	\N	\N
Costa Lopez Taylor Park	\N	Charles St	Lopez Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	16.0	\N	\N	\N
Dana Park	\N	Magazine St	McTernan St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	0.75	\N	\N	\N
Danehy Park	\N	Garden St	Field St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	1.0	\N	\N	1	\N	1	\N	1	\N	\N
David Nunes Park	\N	Brookline St	Allston St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Donnelly Field and King Open School	\N	Berkshire St	York St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Elm/Hampshire Plaza	\N	Hampshire St	Elm St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Father Callanan Playground and Tobin School	\N	Concord Ave	Fern St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Flagstaff Park	\N	Mass Ave	Garden St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fletcher/Maynard Academy	225 Windsor St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fort Washington Park	95 Waverly St	\N	\N	\N	\N	\N	Dog	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	1	\N	\N
Franklin Street Park	\N	Franklin St	Bay St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Front Park	67 Cambridge Pkwy	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fulmore Park	\N	Sidney St	Putnam Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gannett/Warren Pals Park	\N	Harding St	Jefferson St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Garden Street Glen/Roethlisberger Memorial Park	\N	Garden St	Hazel St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gibbons Park	\N	Columbus Ave	Kimball St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Glacken Field	\N	Huron Ave	Holworthy St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Gold Star Mothers Park	\N	Gore St	Sixth St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	1	\N	1	\N	\N
Gold Star Mothers Pool	\N	Cambridge St	Berkshire St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	1	\N	\N	\N	\N	\N	\N	\N	\N
Graham and Parks School	44 Linnaean St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greene ﾕ Rose Heritage Park	\N	Harvard St	Moore St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	1	\N	\N	\N	\N	\N	\N	\N
Haggerty School	110 Cushing St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hastings Square	\N	Brookline St	Henry St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hoyt Field	\N	Western Ave	Howard St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Hurley Park	\N	Hurley St	Fourth St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Joan Lorentz Park	\N	Broadway	Ellery St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
King School	100 Putnam Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kingsley Park	Fresh Pond Pkwy	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Larch Road Park	119 Larch Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Lechmere Canal Park	\N	First St	Otis St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lindstrom Field and Morse School	\N	Brookline St	Granite St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Linear Park	\N	Harvey St	Clifton St	2140	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	Linear Park
Longfellow Park	\N	Mount Auburn St	Willard St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lopez Street Park	34 Lopez St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lowell School Park	\N	Mount Auburn St	Lowell St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Maple Avenue Park	\N	Maple Ave	Marie Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Market Street Park	\N	Market St	Bristol St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
McMath Park	\N	Pemberton St	Haskell St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
New Riverside Neighborhood Park	\N	Memorial Dr	Western Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Old Longfellow School (High School Ext.)	359 Broadway 	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pacific Street Open Space	\N	Pacific St	Sidney St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	1	\N	1	\N	\N
Paine Park	\N	Amory St	St Mary Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Pine Street Park	\N	School St	Pine St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Rafferty Park	\N	\N	\N	\N	42.39274	-71.1549	Urban	MA	Middlesex	Cambridge	1.0	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
Raymond Park/Corcoran Field	\N	Upland Rd	Raymond St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	1	\N	1	\N	\N
Reverend Williams Park	\N	Dudley St	Cedar St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Rindge Field and Peabody School	\N	Pemberton St	Yerxa Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Riverside Press Park	\N	Memorial Dr	River St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Russell/Samp Field	\N	Clifton St	Dudley St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Sacramento Field	9 Sacramento St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Sennott Park	\N	Broadway	Norfolk St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Silva Park	\N	Otis St	Sciarappa St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Squirrel Brand Park	\N	Broadway	Boardman St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
St Peter's Field	\N	Sherman St	Cadbury Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Tobin Field	\N	Concord Ave	Fern St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Wilder-Lee Park	\N	Lee St	West St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
William G. Maher Park	650 Concord Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Winthrop Square	\N	JFK St	Winthrop St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Banta Davis Recreation Area	304 Bedford Rd	\N	\N	1741	\N	\N	Urban	MA	Middlesex	Carlisle	1.0	\N	\N	1	\N	1	39.0	\N	\N	\N
Carlisle Castle	\N	Church St	School St	1741	\N	\N	Urban	MA	Middlesex	Carlisle	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Carlisle Tennis Courts	\N	\N	\N	\N	42.526735	-71.347127	Urban	MA	Middlesex	Carlisle	\N	\N	1	\N	\N	\N	\N	\N	\N	Coordinates
Center Park	\N	\N	\N	\N	42.530079	-71.348342	Urban	MA	Middlesex	Carlisle	\N	\N	\N	\N	\N	\N	0.6	\N	\N	Coordinates
Diment Park and Spalding Field	225 Church St	\N	\N	1741	\N	\N	Urban	MA	Middlesex	Carlisle	1.0	\N	\N	1	\N	1	5.0	\N	\N	\N
110 Baseball Fields	\N	Chelmsford St	Fletcher St	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Byam School	25 Maple Rd	\N	\N	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Chelmsford High School	200 Richardson Rd	\N	\N	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Chelmsford Town Common	4 North Rd	\N	\N	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
East School Field	\N	Carlisle Rd	Albina St	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Harrington School	120 Richardson Rd	\N	\N	1863	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Heart Pond	\N	\N	\N	\N	42.568652	-71.381819	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Lime Quarry	151 Littleton Rd	\N	\N	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
McCarthy Middle School	250 North Rd	\N	\N	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Parker Middle School	75 Graniteville Rd	\N	\N	1863	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Roberts Field	\N	Old Westford Rd	School St	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Russell Mill Pond and Town Forest	\N	\N	\N	\N	42.577221	-71.329755	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
South Row School	250 Boston Rd	\N	\N	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	1	\N	1.0	1	\N	\N	\N	\N
Southwell Field Complex	\N	\N	\N	\N	42.642393	-71.379526	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Varney Playground	\N	Adams St	Sherman St	1863	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Vinal Square Common	\N	Princeton St	Vinal Square	1863	\N	\N	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Westlands Community Education Office	170 Dalton Rd	\N	\N	1824	\N	\N	Urban	MA	Middlesex	Chelmsford	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Artificial Turf Fields Complex and Concord Carlisle High School	500 Walden St	\N	\N	1742	\N	\N	Urban	MA	Middlesex	Concord	\N	\N	1	1	\N	1	\N	\N	\N	\N
Emerson Playground	\N	Stow St	Everett St	1742	\N	\N	Urban	MA	Middlesex	Concord	1.0	1	1	1	1.0	1	1.0	\N	\N	\N
Rideout Playground	\N	Lawsbrook Rd	Warner St	1742	\N	\N	Urban	MA	Middlesex	Concord	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Ripley School	120 Meriam Rd	\N	\N	1742	\N	\N	Urban	MA	Middlesex	Concord	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
South Meadow Field	10A Riverdale Cir	\N	\N	1742	\N	\N	Urban	MA	Middlesex	Concord	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Carrick Park	\N	\N	\N	\N	42.685901	-71.353557	Urban	MA	Middlesex	Dracut	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Dillion Center Fields	833 Hildreth St	\N	\N	1826	\N	\N	Urban	MA	Middlesex	Dracut	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Hovey Field	\N	Pleasant St	Huron Ave	1826	\N	\N	Urban	MA	Middlesex	Dracut	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Monahan Park	499 Pleasant St	\N	\N	1826	\N	\N	Urban	MA	Middlesex	Dracut	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Varnum Park	\N	Broadway Rd	Arlington St	1826	\N	\N	Urban	MA	Middlesex	Dracut	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Veteranﾒs Memorial Park	80 Broadway Rd	\N	\N	1826	\N	\N	Urban	MA	Middlesex	Dracut	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Dunstable Town Field	\N	\N	\N	\N	42.672329	-71.4823	Urban	MA	Middlesex	Dunstable	1.0	\N	1	1	1.0	1	15.88	\N	\N	Coordinates
Horse Hill Quarry	\N	Hall St	Camp Massapoag Rd	1827	\N	\N	Urban	MA	Middlesex	Dunstable	\N	\N	\N	\N	\N	\N	6.25	\N	\N	Future Park
Larter Field	\N	Groton St	Hall St	1827	\N	\N	Urban	MA	Middlesex	Dunstable	1.0	\N	\N	1	1.0	1	26.3	\N	\N	\N
Anna Murphy Playground	\N	Cove Ave	Lake Ave	1702	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Arlington St Park	\N	Arlington St	Gordon St	1702	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Barbieri Elementary School	100 Dudley Rd	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Bates Park	\N	Bates Rd	Brackett Rd	1702	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Bowditch Field	475 Union Ave	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Brophy Elementary School	575 Pleasant St	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Butterworth Park	261 Grant St	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Cameron Middle School	215 Elm St	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Charlotte A Dunning School	48 Frost St	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Danforth Playground	\N	Danforth St	Cottage St	1701	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Fuller Middle School	31 Flagg Dr	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Furber Park	\N	Fairbanks Rd 	Cohituate Rd	1701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Galvani Fields	99 Guadalcanal Rd	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Hemenway Elementary School	729 Water St	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Juniper Hill Elementary School	29 Upper Jocelyn Ave	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Keefe Technical High School	750 Winter St	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
King Builidings Field	454 Water St	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Longs Playground	\N	Stedmen Park Rd	Fountain St	1702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Mary Dennison Playground	54 Beaver St	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Miriam F McCarthy School	8 Flagg Dr	\N	\N	1702	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Oakvale Park	46 Hadley Rd	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Potter Rd Elementary School and Lundy Field	492 Potter Rd	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Reardon Park	\N	Laclede Ave	Vanderventer Ave	1701	\N	\N	Urban	MA	Middlesex	Framingham	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Victory Field	\N	\N	\N	\N	42.30244	-71.430879	Urban	MA	Middlesex	Framingham	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Walsh Middle School	301 Brook St	\N	\N	1701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Winch Park and Framingham High School	\N	A St	Winch Park Rd	1701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Amory A Lawrence Memorial Playground	\N	Broad Meadow Rd	Playground Rd	1450	\N	\N	Urban	MA	Middlesex	Groton	1.0	\N	1	1	1.0	\N	14.4	\N	\N	\N
Boutwell School	\N	Boutwell St	Certer Ln	1450	\N	\N	Urban	MA	Middlesex	Groton	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Carol Wheeler Memorial Park	\N	Groton Rd	Townsend Rd	1450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cow Pond Brook Facilities	\N	\N	\N	\N	42.623286	-71.503841	Urban	MA	Middlesex	Groton	\N	\N	\N	1	\N	1	110.0	\N	\N	Coordinates
Cutler Field	\N	Townsend Rd	Windmill Hill Rd	1450	\N	\N	Urban	MA	Middlesex	Groton	1.0	\N	\N	1	1.0	1	7.0	\N	\N	\N
George and Agnes Rider Park	\N	Lost Lake Dr	Indian Rd	1450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	\N	\N	1.0	\N	1.7	\N	\N	\N
Groton Dunstable Regional High School	703 Chicopee Row	\N	\N	1450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	1	1	\N	1	186.0	\N	\N	\N
Groton Dunstable Regional Middle School North	344 Main St	\N	\N	1450	\N	\N	Urban	MA	Middlesex	Groton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Hazel Grove Park	\N	Jenkins Rd	Fairgrounds Rd	1450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	\N	\N	\N	\N	28.0	\N	\N	\N
Stonebridge Farm Recreation Area	\N	Stonebridge Way	Forge Village Rd	1450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	1	1	\N	1	11.0	\N	\N	\N
Tarbell School	73 Pepperell Rd	\N	\N	1450	\N	\N	Urban	MA	Middlesex	Groton	1.0	\N	\N	\N	\N	\N	1.44	\N	\N	\N
Adams and Damigella Fields	323 Woodland St	\N	\N	1746	\N	\N	Urban	MA	Middlesex	Holliston	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Flagg Field	\N	Linden St	Avon St	1746	\N	\N	Urban	MA	Middlesex	Holliston	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Goodwill Park	30 Green St	\N	\N	1746	\N	\N	Urban	MA	Middlesex	Holliston	1.0	\N	1	1	\N	1	\N	\N	\N	\N
High School Fields & Kamitian Field	370 Hollis St	\N	\N	1746	\N	\N	Urban	MA	Middlesex	Holliston	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Mission Springs Recreation Area	100 Summer St	\N	\N	1746	\N	\N	Urban	MA	Middlesex	Holliston	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Patoma Park	\N	\N	\N	\N	42.192471	-71.418053	Urban	MA	Middlesex	Holliston	\N	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
Stoddard Park	880 Stoddard Park Rd	\N	\N	1746	\N	\N	Urban	MA	Middlesex	Holliston	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Aikens Park	\N	Cordaville Rd	Aikens Rd	1748	\N	\N	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	0.75	\N	\N	\N
Berry Acres	\N	\N	\N	\N	42.219317	-71.534257	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	30.0	\N	\N	Coordinates
Carrigan Park	\N	Main St	Summer St	1748	\N	\N	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
College Rock Park	\N	\N	\N	\N	42.1943	-71.49941	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	11.0	\N	\N	Coordinates
Daniel Shays Field	\N	\N	\N	\N	42.246336	-71.553378	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
EMC Park	\N	\N	\N	\N	42.216723	-71.513046	Urban	MA	Middlesex	Hopkinton	1.0	\N	\N	1	\N	\N	15.0	\N	\N	Coordinates
Emerald Hills East Field	\N	\N	\N	\N	42.252112	-71.546032	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Fruit St Athletic Complex and Victory Field	66 Fruit St	\N	\N	1748	\N	\N	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Reed Park, Woodville	\N	\N	\N	\N	42.239206	-71.568621	Urban	MA	Middlesex	Hopkinton	\N	\N	1	1	\N	1	10.0	\N	\N	Coordinates
Sandy Island - Town Beach	\N	Lakeshore Dr	Hayward St	1748	\N	\N	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Terry Park	\N	\N	\N	\N	42.238209	-71.537304	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	13.0	\N	\N	Coordinates
Apsley Park	\N	\N	\N	\N	42.38585	-71.577049	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
BOUTWELL COMPLEX	119 CHAPIN Rd	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
CELLUCCI Skate Park	29 SOUTH St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
CHERRY STREET Field & Playground	61 CHERRY St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
FARINA Field	72 COX St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
FARLEY ELEMENTARY	106 Packard St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
FOREST AVENUE ELEMENTARY	136 FOREST Ave	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
HUBERT KINDERGARTEN	119 Broad St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hudson High School and Busch Memorial Field	69 BRIGHAM St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	1	1	\N	1	\N	\N	\N	\N
INTEL	92 TECHNOLOGY Dr	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
JFK MIDDLE SCHOOL	201 MANNING St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1	\N	1	\N	\N	\N	\N
LAMSON PARK AT TRIPPS POND	65 GREEN St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
LIBERTY PARK	5 WASHINGTON St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
MOULTON'S Field	21 MARION St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
MULREADY ELEMENTARY School	306 COX St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
RIVERSIDE Park	122 Chapin Rd	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
SAUTA COMPLEX	538 MAIN St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
WOOD PARK	65 PARK St	\N	\N	1749	\N	\N	Urban	MA	Middlesex	Hudson	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Adams Playground	739 Massachusetts Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	1	\N	1.0	1	\N	\N	\N	\N
Baskin Playground	\N	\N	\N	\N	42.471559	-71.24033	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Bow/Oxford Street Park	\N	Bow St	Cliff Ave	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bowman Park	\N	Pleasant St	Watertown St	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bowman School	\N	Phillip Rd	Rockville Ave	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Bridge School	55 Middleby Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Center Recreation Complex	100 Worthen Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	1	1	1	1.0	1	\N	\N	\N	\N
Clarke Middle School	17 Stedman Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	1	1	\N	1	\N	\N	\N	\N
Diamond Middle School	99 Hancock St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Estabrook School	117 Grove St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Fiske School	55 Adams St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Franklin Playground	3 Stedman Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Freemont Street Play Area	\N	\N	\N	\N	42.453818	-71.25258	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Garfield Street Playground	\N	Garfield St	Hickory St	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Harrington School	328 Lowell St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Hastings Park	\N	Massachusetts Ave	Worthem Rd	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hastings School	7 Crosby Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Justin Street Park	\N	Justin St	Bernard St	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kinneens Park	\N	Burlington St	Preston Rd	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Lexington High School Fields	251 Waltham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Lincoln Park	136 Lincoln St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Marvin Park	\N	\N	\N	\N	42.483871	-71.25039	Urban	MA	Middlesex	Lexington	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Munroe School Yard	1403 Massachusetts Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Muzzey Field	\N	Massachusetts Ave	Rowland Ave	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Poplar Street Playground	\N	\N	\N	\N	42.462966	-71.24335	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Rindge Avenue Playfield	\N	\N	\N	\N	42.429957	-71.19159	Urban	MA	Middlesex	Lexington	1.0	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Sutherland Park	\N	Sutherland St	Aerial St	\N	\N	\N	Urban	MA	Middlesex	Lexington	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Teresa & Roberta Lee Fitness Path	\N	\N	\N	\N	42.444212	-71.23989	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Tower Park	\N	Massachusetts Ave	Pelham Rd	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Valleyfield Play Area	23 Valley Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
Bumblebee Park	\N	Foster St	Harwood St	1460	\N	\N	Urban	MA	Middlesex	Littleton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Castle in the Trees Playground	300 King St	\N	\N	1460	\N	\N	Urban	MA	Middlesex	Littleton	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Fay Park	\N	Foster St	Wilderness Rd	1460	\N	\N	Urban	MA	Middlesex	Littleton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Long Lake Town Beach	\N	\N	\N	\N	42.53241	-71.46562	Urban	MA	Middlesex	Littleton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Oak Hill	\N	\N	\N	\N	42.536196	-71.52576	Urban	MA	Middlesex	Littleton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Alumni/Martin Complex	438 Douglas Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Armory Park	50 Westford St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bourgeois Park	113 University Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Callery Park	200 B St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
Campbell Park	30 Courtland St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Carter St Park	25 Carter Av	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Centerville Memorial Park	711 Aiken St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Circuit Av Park	136 Circuit Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Clemente Park	803 Middlesex St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Coburn Park	845 Chelmsford St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Doane St Park	69 Doane St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	1	\N	\N	1.0	1	\N	\N	\N	\N
Donahoe Park	2 Stratham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Dubner Park	23 Rogers St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ducharme Park	\N	Commonwealth Ave	Woburn St	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Durkin Park	294 Chelmsford St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Edwards St Park	50 Edwards St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Father Grillo Park	853 Central St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Father Maguire Park	80 Woodward Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Fayette St Playground	246 Fayette St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Fels Playground	260 Riverside St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	1	\N	\N	\N	\N	\N	\N	\N	\N
Ferry Landing Park	3 First St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Festival Field	381 Pawtucket Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Finneral Park	\N	Lincoln Pkwy	Van Greenby Rd	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
First St Playground	61 First St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fort Hill Park	201 Rogers St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fr Kirwin Playground	889 Lawrence St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Gage Park	78 13th St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Hadley Park	1650 Middlesex St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Harmony Park	\N	Cork St	Cross St	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Highland Park	150 Fleming St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Hovey Field	266 Aiken St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Kerouac Park	93 Bridge St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kittredge Park	44 Nesmith St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Knott Park	150 Douglas Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Koumantzeus Field/Francis Gate Park	490 Pawtucket St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Lincoln Square Park	\N	Washington St	Hale St	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lowell Memorial Auditorium Greenspace	52 East Merrimack St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lucy Larcom Park	255 Merrimack St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Manning Field	303 Boston Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Martin Portuguese Park	424 Central St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
McDermott Reservoir	197 Beacon St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
McInerney Playground	213 West London St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
McNamara Field/LeBlance Park/Pawtucket Memorial Park	475 West Meadow Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
McPherson Park	45 Richardson St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	1	1	1	1.0	\N	\N	\N	\N	\N
Monsignor Keenan	\N	W Sixth St	Hampshire St	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Moody St Playground	497 Moody St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Mulligan Park	89 Plain St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	1	\N	\N	1.0	\N	\N	\N	\N	\N
Nieves, Olga Playground	123 Adams St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Noonan Family Park	\N	Washington Pkwy	Gibson St	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North Common	413 Fletcher St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	1	\N	1	1.0	1	\N	\N	\N	\N
O'Donnell Park	1170 Gorham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	1	1	1	1.0	\N	\N	\N	\N	\N
Oliveria Park	84 Newhall St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Perry Playground	36 Dover St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Reilly School Community Playground	115 Douglas Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Rotary Club Park	16 Richmond Av	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Rynne Beach	160 Pawtucket Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Scullin Park	50 Morey St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Shedd Park	433 Rogers St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Sheehy Park	501 Pawtucket St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
South Common	272 South St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	1	1	\N	1.0	1	\N	\N	\N	\N
St Louis Playground	406 West Sixth St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Suffolk St Park	140 Suffolk St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tenth St Reservior	191 Mt Pleasant St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Thomas L Crowley Park	78 Wedge St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tyler Park	\N	Westford St	Tyler Park	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Varnum Park	\N	3rd St	Vernon St	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Veterans Memorial Park	17 Ennell St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Victory Park	21 Woburn St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Walter J Lemieux Park	8 Mill St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wang Park	850 Pawtucket Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Wannalancit Park	\N	Varnum Ave	Mammoth Rd	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Amerige Park	\N	Fellsway E	 Savin St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Bell Rock Park	\N	Main St	Wigglesworth St	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Callahan Park	\N	Pearl St	Hubbard St	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Coytemore Lea Park	\N	Mountain Ave	Linden Ave	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Devir Park	\N	Fellsway	Malden St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Fellsmere Pond	\N	Fellsmere Rd	W Border Rd	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Forestdale Park	70 Sylvan St	\N	\N	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Holland Memorial Pool	\N	Mountain Ave	Dartmouth St	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	1	\N	\N	\N	\N	\N	\N	\N	\N
Hunting Field (Linden Park)	29 Westcott St	\N	\N	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Kierstead Park	\N	Eastern Ave	Willow St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Lincoln Commons and Anderson Field	\N	Cross St	Bryant St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
MacArthur Park (Green Street Park)	\N	Green St	Wadsworth St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Macdonald Stadium	\N	Pearl St	Centre St	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Maplewood Park and Donovan Field	99 Crystal St	\N	\N	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Miller Park	\N	Harvard St	Lyme St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Newman Park	150 Cross St	\N	\N	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
O'Connell Park	\N	West St	Medford St	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Patchell Park	\N	\N	\N	\N	42.439516	-71.073339	Urban	MA	Middlesex	Malden	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Pearl Street Park	\N	Pearl St	Malden St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Pine Banks Park	1087 Main St	\N	\N	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	1	\N	1	107.5	\N	\N	\N
Roosevelt Park	529 Salem St	\N	\N	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
South Broadway Park	\N	\N	\N	\N	42.426735	-71.043745	Urban	MA	Middlesex	Malden	1.0	\N	\N	1	1.0	1	\N	\N	\N	Coordinates
Tartikoff Park	\N	Willow St	Lyme St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Trafton Park	\N	Granite St	Jacob St	2148	\N	\N	Urban	MA	Middlesex	Malden	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Waitt's Mount	\N	Leonard St	Tremont St	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Wallace Park	403 Pleasant St	\N	\N	2148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Byrne Field	\N	\N	\N	\N	42.361006	-71.485822	Urban	MA	Middlesex	Marlborough	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
City of Marlborough Boat Ramp	Reservoir St	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Colaianni Playground	\N	\N	\N	\N	42.370916	-71.547467	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Duca Playground	\N	Rice St	Bolton St	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Farrell Field (Hildreth School)	85 Sawin St	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	1	\N	1	\N	\N	\N	\N	\N	\N
Ghiloni Park	\N	\N	\N	\N	42.353287	-71.521865	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	1	1.0	1	\N	\N	\N	Coordinates
Holt's Grove	\N	Stevens St	Andrews Rd	1752	\N	\N	Urban	MA	Middlesex	Marlborough	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Jaworek School	444 Hosmer St	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Jericho Hill	\N	\N	\N	\N	42.32981	-71.559464	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
John Street Playground	38 John St	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Kane School	520 Farm Rd	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Kelleher Field	\N	Jefferson St	Hudson St	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Korean Veterans Field	\N	Milham St	Dudley St	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Marlborough High School Facilities	431 Bolton St	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	\N	\N	1	1	\N	1	\N	\N	\N	\N
Marlborough Middle School Facilities	25 Union St	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Memorial Beach	\N	Hosmer St	Miles Standish Dr	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Richer School	80 Foley Rd	\N	\N	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Simpson Playground	\N	\N	\N	\N	42.372995	-71.52547	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Stevens Park	\N	Martin St	Broad St	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Union Common	\N	Main St	Bolton St	1752	\N	\N	Urban	MA	Middlesex	Marlborough	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ward Park	\N	Orchard St	Hayden St	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	1	1	\N	1.0	1	\N	\N	\N	\N
Williams Street Baseball Fields	\N	WIlliams St	Lizotte Dr	1752	\N	\N	Urban	MA	Middlesex	Marlborough	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Barry Park	\N	Summer St	Marston St	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	1	1.0	\N	3.6	\N	\N	\N
Brook Park	\N	Brooks Park	Main St	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.36	\N	\N	\N
Capen Park	199 Capen St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	\N	\N	1.0	\N	0.77	\N	\N	\N
Carr Park	22 Winslow Ave	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	1	1.0	\N	11.5	\N	\N	\N
Columbus Park	64 E Albion St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	1	1.0	\N	5.0	\N	\N	\N
Cummings Park	\N	Cotting St	Lyman Ave	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	\N	\N	1.0	\N	0.45	\N	\N	\N
Dugger Park	\N	Mystic River Rd	Harvard Ave	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	\N	1.0	1	3.2	\N	\N	\N
Grant Park	Boston Ave	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.23	\N	\N	Cant Find
Harris Park	\N	2nd St	Bradbury Ave	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	1	1.0	\N	2.8	\N	\N	\N
Hastings Heights	\N	Allston St	Laurel St	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	1.3	\N	\N	\N
Hickey Park	\N	Brogan Rd	Park St	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	1	1.0	\N	4.4	\N	\N	\N
Hormel Stadium Facility Riverbend Park	97 Locust St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	\N	1	\N	1	43.9	\N	\N	\N
Logan Park	35 Otis St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	\N	\N	\N	\N	1.3	\N	\N	\N
Magoun Park	40 Pembroke St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	\N	\N	1.0	\N	1.3	\N	\N	\N
McNally Park	\N	Webster St	Ash St	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	\N	1	\N	\N	1.7	\N	\N	\N
Memorial Park	\N	Winthrop St	Mystic Valey Pkwy	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	1	\N	\N	9.6	\N	\N	\N
Morrison Park	\N	Central Ave	Linwood St	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	1	1.0	\N	4.4	\N	\N	\N
Playstead Park	101 Playstead Rd	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	1	1.0	1	12.3	\N	\N	\N
Prescott Park	1 St James Ave	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.25	\N	\N	\N
Royall Park	\N	George St	Main St	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.76	\N	\N	\N
Thomas Brooks Park	281 Grove St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	6.0	\N	\N	\N
Tufts Park	449 Main St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	1	\N	1	1.0	1	10.6	\N	\N	\N
Victory Park	437 Winthrop St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	1.0	\N	1	\N	1.0	1	12.0	\N	\N	\N
Wrightﾒs Pond	162 Elm St	\N	\N	2155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	148.0	\N	\N	\N
Bowden Park	\N	W Emerson St	Vinton St	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Colby Park	\N	Lynn Fells	Larchmont Rd	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Conant Field	\N	\N	\N	\N	42.456497	-71.079247	Urban	MA	Middlesex	Melrose	1.0	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Crystal St Tennis Courts	\N	Crystal St	Lynn Fells Pkwy	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
DesForges Park	\N	Crystal St	Melrose St	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Drinkwater Tot Lot	\N	Ellis Farm Lane	Porter St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Dunton Park	\N	Franklin St	Pratt St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
ElI Pond Park	\N	Main St	Lebanon St	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Foss Park	\N	Lynde St	Malvern St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Franklin Field	\N	Greenleaf Pl	Franklin St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Fred Green Field	360 Lynn Fells Pkwy	\N	\N	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Gooch Park	\N	Maple St	Florence St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Hesseltine Park	\N	Ruggles St	Hesseltine Ave	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Knoll Soccer Complex	\N	\N	\N	\N	42.462513	-71.06692	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Lebanon Park	\N	Lebanon St	Sylvan St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Lewis Monk Field	\N	\N	\N	\N	42.461799	-71.069154	Urban	MA	Middlesex	Melrose	\N	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Lincoln Park	80 W Wyoming Ave	\N	\N	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Livermore Park	\N	Upham St	Felton Pl	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Lyons Courts	\N	\N	\N	\N	42.462539	-71.069055	Urban	MA	Middlesex	Melrose	\N	\N	1	\N	\N	\N	\N	\N	\N	Coordinates
Mary Foley Park	\N	Grove St	Myrtle St	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Melrose Common	\N	E Foster St	Larrabee St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Messengers Field	\N	\N	\N	\N	42.465899	-71.070353	Urban	MA	Middlesex	Melrose	1.0	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Milano Park	\N	Main St	Grove St	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Morelli Field	\N	\N	\N	\N	42.463272	-71.069017	Urban	MA	Middlesex	Melrose	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Poplar Island	\N	Poplar St	Prospect St	2176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Warren Park	\N	Warren St	Melrose St	2176	\N	\N	Urban	MA	Middlesex	Melrose	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bennett-Hemenway School	22 East Evergreen Rd	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Brown School	1 Jean Burke St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Coolidge Field/Woods	\N	Chester St	Lincoln St Ext	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
East Natick School	\N	\N	\N	\N	42.303876	-71.3	Urban	MA	Middlesex	Natick	1.0	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
Grove Park	\N	Pleasant St	Merrill Rd	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Henry Wilson Memorial	\N	Mill St	W Central St	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hunnewell Fields	24 Pleasant St S	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
John J. Lane Park	185 Speen St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Johnson School	99 South Main St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Kennedy Middle School	1 Philip J Lucier Dr	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Lilja School	41 Bacon St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Loker Park	\N	Walnut St	Bacon St	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Mary Bunker Community Park	\N	N Main St	Rutledge Rd	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Memorial Beach (Dug Pond)	\N	\N	\N	\N	42.274395	-71.4	Urban	MA	Middlesex	Natick	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Memorial School	107 Eliot St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Natick High School	15 West St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Navy Yard Field	41 Washington Ave	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
NHS Fields	\N	West St	Redmen Dr	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Sargent Field	17 Oak St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Shaw Park	53 Eliot St	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
South Natick Dam Park	\N	Mill Ln	Pleasant St S	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
South Natick Multi-Purpose Area	23 Pleasant St S	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Town Common	\N	E Central St	S Main St	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
West Hill Park	\N	W Hill Park	Mill St	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Wilson Middle School	22 Rutledge Rd	\N	\N	1760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Angier School	1697 Beacon St	\N	\N	2468	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Auburndale Playground / The Cove	\N	W Pine St	Edgewater Park	2466	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	29.9	\N	\N	\N
Boyd Park	Jackson Rd	\N	\N	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	4.8	\N	\N	\N
Brown & Oak Hill School Playgrounds	\N	Wheeler Rd	Sharpe Rd	2459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	1	\N	1	11.3	\N	\N	\N
Bullough's Pond	\N	Commonwealth Ave	Walnut St	2460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	1.4	\N	\N	\N
Burr Park	136 Park St	\N	\N	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	5.1	\N	\N	\N
Burr School	171 Pine St	\N	\N	2466	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	10.0	\N	\N	\N
Cabot Park	101 Eastside Pkwy	\N	\N	2458	\N	\N	Dog	MA	Middlesex	Newton	\N	\N	1	\N	1.0	\N	\N	1	\N	\N
Captain Ryan Park	\N	Washington St	Cherry St	2465	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Carleton Park	\N	Carleton St	Pearl St	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	\N	\N	\N	0.1	\N	\N	\N
Carr School Playground	225 Nevada St	\N	\N	2460	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	\N	7.8	\N	\N	\N
Chaffin Park	\N	Vernon St	Centre St	2458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.75	\N	\N	\N
Charlesbank Playground	\N	Nonantum Pl	Charlesbank Rd	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Claflin Playground	\N	\N	\N	\N	42.341323	-71.2119	Dog	MA	Middlesex	Newton	\N	\N	\N	\N	\N	1	1.2	1	\N	Coordinates
Cold Springs Park	1198 Beacon St	\N	\N	2461	\N	\N	Dog	MA	Middlesex	Newton	\N	\N	1	1	1.0	1	65.0	1	\N	\N
Coletti-Magni Park	\N	Watertown St	Bridge St	2458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.46	\N	\N	\N
Countryside School Playground	191 Dedham St	\N	\N	2461	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	2.0	\N	\N	\N
Crystal Lake	230 Lake Ave	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	2.0	\N	\N	\N
Edmand's Park	\N	Blake St	Mill St	2459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	32.6	\N	\N	\N
Elmwood Park	\N	Lowell Ave	Highland Ave	2465	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	1.5	\N	\N	\N
Farlow Park	\N	Eldredge St	Church St	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	5.0	\N	\N	\N
Franklin School	125 Derby St	\N	\N	2465	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	\N	2.7	\N	\N	\N
Gath Memorial Pool	256 Albermale Rd	\N	\N	2460	\N	\N	Urban	MA	Middlesex	Newton	\N	1	\N	\N	\N	\N	\N	\N	\N	\N
Hunnewell Park	\N	\N	\N	\N	42.356853	-71.1717	Dog	MA	Middlesex	Newton	1.0	\N	\N	1	\N	1	4.6	1	\N	Coordinates
Hyde Playground	\N	Lincoln St	Bowdon St	2461	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	\N	1	1.0	\N	\N	\N
Joanne C. Pellegrini Park	11 Hawthorn St	\N	\N	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	\N	1	4.2	\N	\N	\N
John W. Weeks Playground	\N	Hereward Rd	Locksley Rd	2459	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	\N	1	11.1	\N	\N	\N
Kennard Park	\N	\N	\N	\N	42.312783	-71.1795	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	14.0	\N	\N	Coordinates
Lowell Park	\N	Waterton St	Walnut St	2460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.6	\N	\N	\N
Lower Falls Playground (Hamilton Playground)	\N	Pine Grove Ave	Cornell St	2462	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	4.3	\N	\N	\N
Lyons Playground	\N	Commonwealth Ave	Islington Rd	2466	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	1	\N	\N	29.9	\N	\N	\N
Mason Rice School	149 Pleasant St	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	\N	1.0	1	4.0	\N	\N	\N
Memorial Spaulding School	250 Brookline St	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	2.0	\N	\N	\N
Nahanton Park	455 Nahanton St	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	1	\N	1	57.0	\N	\N	\N
Newton Center Green	\N	Centre St	Langley Rd	2459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	2.0	\N	\N	\N
Newton Centre Playground	81 Tyler Terr	\N	\N	2459	\N	\N	Dog	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	17.9	1	\N	\N
Newton Highlands Playground	\N	Dedham St	Upland Ave	2461	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	12.6	\N	\N	\N
Newton North High School	425 Walnut St	\N	\N	2460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	1	1	\N	1	18.4	\N	\N	\N
Newton South High School	140 Brandeis Rd	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	1	1	1.0	1	7.0	\N	\N	\N
Newton Veterans Memorial Park	\N	Washington St	Lewis Terr	2458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.1	\N	\N	\N
Peirce School	170 Temple Ste	\N	\N	2465	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	2.0	\N	\N	\N
Reverend Ford Playground	\N	Crescent St	Robinhood St	2465	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	\N	\N	\N	2.0	\N	\N	\N
Richard J. Forte Park	235 California St	\N	\N	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	6.0	\N	\N	\N
Richard J. McGrath Park	1600 Washington St	\N	\N	2465	\N	\N	Dog	MA	Middlesex	Newton	1.0	\N	1	1	\N	1	10.1	1	\N	\N
Richardson Playground	\N	Allen Ave	Pine Ridge Rd	2468	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	\N	1	5.4	\N	\N	\N
River Street Playground	\N	River St	Smith Ct	2465	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Russ Halloran Sports Complex (Albemarle Park)	250 Albemarle Rd	\N	\N	2460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	1	\N	1.0	\N	24.9	\N	\N	\N
Solomon Schecter Playground (Memorial Playground)	60 Stein Cir	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	3.0	\N	\N	\N
Spears Park	\N	Washington St	Walnut Park	2458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.25	\N	\N	\N
Stearns Park	54 Jasset St	\N	\N	2458	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	\N	3.4	\N	\N	\N
Thompsonville Playground and Bowen Field	280 Cypress St	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	8.8	\N	\N	\N
Tom Torchia Playgroung and Davis Playground	\N	Watertown St	Eden St	2465	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	1	2.0	\N	\N	\N
Upper Falls Playground (Officer Bobby Braceland Playground)	\N	Pennsylvania Ave	Chestnut St	2464	\N	\N	Dog	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	8.8	1	\N	\N
Waban Playground	\N	Manitoba Rd	Beacon St	2468	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	\N	4.7	\N	\N	\N
Ward School Playground and Ward Park	10 Dolphin Rd	\N	\N	2459	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	1	1.0	1	6.6	\N	\N	\N
Warren Lincoln Playground	\N	Montclair St	Moffat Rd	2468	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	\N	1	5.4	\N	\N	\N
Warren Street Playground	\N	\N	\N	\N	42.32913	-71.1833	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Washington Park	\N	Washington Park	Harvard St	2460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	1.0	\N	\N	\N
Wellington Street Playground	\N	Kilburn Rd	Henshaw Pl	2465	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	1	\N	1.0	1	1.9	\N	\N	\N
West Newton Commons	\N	Elm Rd	Webster St	2465	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	\N	1	3.7	\N	\N	\N
Williams School Playground	141 Grove St	\N	\N	2466	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	1	1.0	\N	1.1	\N	\N	\N
Zervas School	30 Beethoven St	\N	\N	2468	\N	\N	Urban	MA	Middlesex	Newton	1.0	\N	\N	\N	1.0	1	1.0	\N	\N	\N
Benevento Park	251 Central St	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	10.6	\N	\N	\N
Chestnut Street Complex Maguire Field	168 Chestnut St	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	1.0	\N	\N	1	1.0	1	4.5	\N	\N	\N
Clarke Park	61 Burroughs Rd	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	1.0	\N	\N	\N	1.0	1	1.7	\N	\N	\N
High School Arthur J. Kenney Field	191 Park St	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	\N	\N	1	2.7	\N	\N	\N
Hood, JT School Fieldﾠﾠﾠ	298 Haverhill St	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	15.6	\N	\N	\N
Ipswich River Park	15 Central St	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	1.0	\N	1	1	1.0	1	49.9	\N	\N	\N
Little School Complex	7 Barberry Lane	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	\N	\N	\N	13.4	\N	\N	\N
Middle School Complex	19 Sherman Rd	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	1	1	\N	1	43.4	\N	\N	\N
Murphy Field	235 North St	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	10.5	\N	\N	\N
Rita J. Mullin Field	96 Lowell St	\N	\N	1864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	9.5	\N	\N	\N
Bartelson Fields Athletic Complex	11 Jersey St	\N	\N	1463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Comiskey Fields	14 Hollis St	\N	\N	1463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Kennedy Fields	\N	Crescent St	Main St	1463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Nissitissit Middle School Fields and Glow Fields	33 Chace Ave	\N	\N	1463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Town Field	\N	Hollis St	Franklin St	1463	\N	\N	Urban	MA	Middlesex	Pepperell	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Varnum Brook School Fields	10 Hollis St	\N	\N	1463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	1	1	\N	1	\N	\N	\N	\N
Barrows Elementary School Field	16 Edgemont Ave	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Coolidge Middle School Field	89 Birch Meadow Dr	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Hunt Park	\N	Pleasant St	Eaton St	1867	\N	\N	Urban	MA	Middlesex	Reading	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Joshua Eaton Elementary School Field	365 Summer Ave	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Killam Elementary School Field	333 Charles St	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Longwood Park	\N	Pearl St	Belmont St	1867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Memorial Park	\N	Charles St	Harrison St	1867	\N	\N	Urban	MA	Middlesex	Reading	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Reading Memorial High School	62 Oakland Rd	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Sturges Park	South St	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Symonds Way Field	Symonds Way	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Washington Park	Washington St	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	1	1	1.0	\N	\N	\N	\N	\N
Wood End Elementary School Field	85 Sunset Rock Ln	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Birch Meadow Complex w/ Castine and Morton Fields	\N	Bancroft Ave	Hartshorn St	1867	\N	\N	Urban	MA	Middlesex	Reading 	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Collins Field at Parker Middle School	45 Temple St	\N	\N	1867	\N	\N	Urban	MA	Middlesex	Reading 	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Fessenden Fields	\N	Western Ave	Pleasant St	1770	\N	\N	Urban	MA	Middlesex	Sherborn	\N	\N	\N	1	\N	1	27.0	\N	\N	\N
Jamison Fields	\N	Eliot St	Pine Hill Ln	1770	\N	\N	Urban	MA	Middlesex	Sherborn	1.0	\N	1	1	\N	\N	167.0	\N	\N	\N
Laurel Farm Fields	139 N Main St	\N	\N	1770	\N	\N	Urban	MA	Middlesex	Sherborn	\N	\N	\N	1	\N	1	32.0	\N	\N	\N
Pine Hill Elementary School	10 Pine Hill Ln	\N	\N	1770	\N	\N	Urban	MA	Middlesex	Sherborn	1.0	\N	\N	\N	1.0	1	10.7	\N	\N	\N
Benjamin Park	93 Benjamin Rd	\N	\N	1464	\N	\N	Urban	MA	Middlesex	Shirley	1.0	1	\N	\N	\N	\N	\N	\N	\N	\N
Parker Rd Fields (Center School Fields)	9 Parker Rd	\N	\N	1464	\N	\N	Urban	MA	Middlesex	Shirley	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Shirley Middle School Field	\N	Front St	Hospital Rd	1464	\N	\N	Urban	MA	Middlesex	Shirley	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Whitley Memorial Park	\N	Front St	Whiteley St	1464	\N	\N	Urban	MA	Middlesex	Shirley	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wilde Rd Fields	\N	Wilde Rd	Shaker Rd	1464	\N	\N	Urban	MA	Middlesex	Shirley	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
111 South Street	111 South St	\N	\N	\N	\N	\N	Dog	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.36	1	\N	Future Park
Albion Playground	\N	Albion St	Lowell St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	1	0.87	\N	\N	\N
Assembly Square Park	Assembly Square	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bailey Park	\N	Lowell St	Brastow St	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.39	1	\N	\N
Brown School Community Playground	201 Willow Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.22	\N	\N	\N
Central Hill Park/Somerville High School	\N	Highland Ave	Vinal Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	8.94	\N	\N	\N
Conway Park	\N	Somerville Ave	Bleachery Ct	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	1	1.0	1	5.66	\N	\N	\N
Corbett-McKenna Park	\N	Prospect Hill Ave	Munroe St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.61	\N	\N	\N
Cummings School Community Playground	93 School St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.41	\N	\N	\N
Dickerman Playground	\N	Kimball St	Craigie St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.41	\N	\N	\N
East Somerville School Community Playground	115 Pearl St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	1.4	\N	\N	\N
Edgerly Education Center	8 Bonair St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.1	\N	\N	\N
Edward Leathers Community Park	\N	Walnut St	Gilman St	\N	\N	\N	Dog	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.71	1	\N	\N
Florence Playground	23 Florence St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.26	\N	\N	\N
Glen Park/James McCarthy Field	150 Glen St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	1	2.34	\N	\N	\N
Grimmons Park	87 Governor Winthrop Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.46	\N	\N	\N
Harris Playground	\N	Cross St E	Pennsylvania Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.29	\N	\N	\N
Healey School Community Playground	5 Meacham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	1	\N	1.0	1	0.16	\N	\N	\N
Henry Hansen Memorial Park	\N	Medford Ave	Partridge Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.06	\N	\N	\N
Highland Road Gardens	\N	Community Path	Highland Rd	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.21	\N	\N	\N
Hodgkins-Curtin Park	\N	Holland St	Paulina St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	1	\N	\N	1.5	\N	\N	\N
Hoyt-Sullivan Playground	115 Central St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.52	\N	\N	\N
Kennedy School Community Playground	5 Cherry St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	1	\N	\N	1.0	\N	0.5	\N	\N	\N
Kenney Park	\N	Highland Ave	Grove St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.3	\N	\N	\N
Lexington Park	\N	Lexington St	Hancock St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.31	\N	\N	\N
Lincoln Park and Argenziano School Playground	\N	Wyatt St	Perry St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	1	1.0	1	9.36	\N	\N	\N
Marshall Street Playground	\N	Marshall St	Mortimore Pl	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.24	\N	\N	\N
Morse-Kelley Playground	\N	Craigie St	Summer St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	1	0.45	\N	\N	\N
Nathan Tufts Park (Powderhouse Park)	\N	Liberty Ave	Broadway	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	1	\N	\N	1	4.3	1	\N	\N
North Street/Veterans Playground	\N	North St	Broadway	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.22	\N	\N	\N
Nunziato Field and Dog Park	\N	Summer St	Vinal Ave	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	1	1.1	1	\N	\N
Osgood Park	\N	Osgood St	Granite St	\N	\N	\N	Dog	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.27	1	\N	\N
Otis Playground	\N	Otis St	Dana St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.1	\N	\N	\N
Palmacci Playground	\N	Hanson Ave	Skehan St	\N	\N	\N	Dog	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.08	1	\N	\N
Paul Revere Park	\N	Broadway	Main St	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.02	\N	\N	\N
Perkins Playground	\N	Perkins St	Perkins Pl	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.15	\N	\N	\N
Perry Park	\N	Washington St	Magnus Ave	\N	\N	\N	Dog	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	1.25	1	\N	\N
Powderhouse Community School Playground	\N	Broadway	Packard Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	1.03	\N	\N	\N
Prospect Hill Park	\N	Prospect Hill Ave	Munroe St	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	2.1	1	\N	\N
Quincy Street Lot	14 Quincy St	\N	\N	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.11	1	\N	\N
Seven Hills Park	\N	Meacham Rd	Dover St	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.69	1	\N	\N
Somerville Junction Park	\N	Woodbine St	Centre St	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Stone Place Park	\N	Stone Pl	Stone Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.12	\N	\N	\N
Trum Field	\N	Broadway	Cedar St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	1	1.0	\N	4.78	\N	\N	\N
Trum Playground	\N	Cedar St	Franey Rd	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.46	\N	\N	\N
Walnut Street Park	\N	Walnut St	Giles Park	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.22	\N	\N	\N
West Somerville Neighborhood School Playground	177 Powderhouse Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.2	\N	\N	\N
Winter Hill School Community Playground	115 Sycamore St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.98	\N	\N	\N
Woodstock Street Playground	\N	Woodstock St	Alewife Brook Pkwy	\N	\N	\N	Urban	MA	Middlesex	Somerville	1.0	\N	\N	\N	1.0	\N	0.22	\N	\N	\N
Zero New Washington Street Dog Park	\N	New Washington St	Inner Belt Rd	\N	\N	\N	Dog	MA	Middlesex	Somerville	1.0	\N	\N	\N	\N	\N	0.75	1	\N	Future Park
Whip Hill Park	1 Whip Hill Rd	\N	\N	2180	\N	\N	Urban	MA	Middlesex	Stoneham	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Center School	403 Great Rd	\N	\N	1775	\N	\N	Urban	MA	Middlesex	Stow	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Hale Middle School	55 Hartley Rd	\N	\N	1775	\N	\N	Urban	MA	Middlesex	Stow	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Memorial Field	\N	\N	\N	\N	42.430833	-71.48911	Urban	MA	Middlesex	Stow	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Pine Bliff Recreation Area	\N	Sudbury Rd	Queens Ln	1775	\N	\N	Urban	MA	Middlesex	Stow	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Pompositticut School	511 Great Rd	\N	\N	1775	\N	\N	Urban	MA	Middlesex	Stow	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Stow Community Park	60 Old Bolton Rd	\N	\N	1775	\N	\N	Urban	MA	Middlesex	Stow	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Atkinson Pool	40 Fairbank Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	1	\N	\N	1.0	1	\N	\N	\N	\N
Crime Lab Fields	59 Horse Pond Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Cutting Field	429 Maynard Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Davis Field	195 North Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Ephraim Curtis Middle School Fields	22 Pratts Mill Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Featherland Park	491 Concord Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	1	1	\N	1	\N	\N	\N	\N
Frank Feeley Field	200 Raymond Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	1	1	\N	1	\N	\N	\N	\N
General John Nixon Elementary School Fields	1 Morse Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Haskell Field	\N	Hudson Rd	Fairbank Rd	1776	\N	\N	Urban	MA	Middlesex	Sudbury	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Haynes Elementary School Fields	169 Haynes Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Israel Loring Elementary School Fields	80 Woodside Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Lincoln-Sudbury Regional High School Fields	390 Lincoln Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Peter Noyes Elementary School Fields	278 Old Sudbury Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Ti-Sales Fields	36 Hudson Rd	\N	\N	1776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Common St Park	\N	Main St	Pleasant St	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Dewing School	1469 Andover St	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
East St Park	\N	East St	Chandler St	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Foster Park	\N	\N	\N	\N	42.579883	-71.20986	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Heath Brook School	165 Shawsheen St	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Livingston St Park	\N	\N	\N	\N	42.598855	-71.208851	Urban	MA	Middlesex	Tewksbury	1.0	\N	1	1	1.0	1	31.0	\N	\N	Coordinates
Melrose Ave Park	Melrose Ave	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Melvin Rogers Park	\N	Rogers St	Marston St	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
North St School	133 North St	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
North St Soccer Field	\N	\N	\N	\N	42.616607	-71.2	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Ryan School	135 Pleasant St	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	1.0	\N	1	\N	\N	1	\N	\N	\N	\N
Tewksbury High School	320 Pleasant St	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Tewksbury Middle School	1 Griffin Way	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Trahan School	12 Salem Rd	\N	\N	1876	\N	\N	Urban	MA	Middlesex	Tewksbury	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Craven Field	\N	\N	\N	\N	42.675739	-71.745175	Urban	MA	Middlesex	Townsend	\N	\N	\N	1	\N	\N	2.87	\N	\N	Coordinates
Howard Park	\N	\N	\N	\N	42.672765	-71.70682	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	\N	40.8	\N	\N	Coordinates
Kids Kountry Playground	\N	Turnpike Rd	Eastman St	1469	\N	\N	Urban	MA	Middlesex	Townsend	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Library Field	\N	\N	\N	\N	42.675952	-71.70285	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Memorial Common	\N	Turnpike Rd	Main St	1469	\N	\N	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Old Meetinghouse Park	\N	\N	\N	\N	42.662683	-71.682658	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	\N	247.85	\N	\N	Coordinates
Townsend Ballfield	\N	\N	\N	\N	42.643227	-71.684364	Urban	MA	Middlesex	Townsend	\N	\N	\N	1	\N	\N	14.53	\N	\N	Coordinates
Townsend Town Common	\N	Main St	School St	1469	\N	\N	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bicentennial Fields Complex	205 Westford Rd	\N	\N	1879	\N	\N	Urban	MA	Middlesex	Tyngsborough	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Bridge Meadow Fields	\N	\N	\N	\N	42.643177	-71.440294	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
CC Fields	\N	Lakeview Ave	Poplar Ave	1879	\N	\N	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Lakeview School Fields	135 Coburn Rd 	\N	\N	1879	\N	\N	Urban	MA	Middlesex	Tyngsborough	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Pierce Field and Tyngsborough High School Fields	36 Norris Rd	\N	\N	1879	\N	\N	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Wicassee Fields	17 Wicassee Rd	\N	\N	1879	\N	\N	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Blatz field and Woodville School	30 Farm St	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	1	\N	1	3.11	\N	\N	\N
Dolbeare School	340 Lowell St	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	\N	1.0	1	7.87	\N	\N	\N
Doyle School Fields	\N	Doyle Ave	Paul Ave	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	1	\N	1	7.77	\N	\N	\N
Fernald Field (Little League Fields)	\N	Del Carmine St	Vinton St	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	1	\N	\N	2.38	\N	\N	\N
Gertrude Spaulding Park and COL Connolly Playground	147 Lowell St	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	\N	\N	\N	1.08	\N	\N	\N
Greenwood School	907 Main St	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	\N	1.0	\N	4.54	\N	\N	\N
Hall Park	\N	North Ave	Lakeside Ave	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	1.28	\N	\N	\N
JJ Round Memorial Park	738 Main St	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	1	1.0	\N	15.74	\N	\N	\N
Landrigan Field	65 Hemlock Rd	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	1	3.0	\N	\N	\N
Lower Common	\N	Main St	Lawrence St	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	8.3	\N	\N	\N
Mapleway Playground	\N	Maple Way	Greenwood Ave	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	1	1	1.0	1	16.78	\N	\N	\N
Moulton Playground	\N	Harrington Ct	Gould St	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	1	1.0	\N	5.53	\N	\N	\N
Nasella Playground	\N	Water St	Melvin St Ext	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	1	\N	\N	4.69	\N	\N	\N
Spaulding St Playground	\N	Spaulding St	Lake Ave	1880	\N	\N	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	\N	\N	\N	1.39	\N	\N	\N
Spring St Park	\N	\N	\N	\N	42.476228	-71.076897	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	10.64	\N	\N	Coordinates
Sullivan Playground	\N	\N	\N	\N	42.511966	-71.053128	Urban	MA	Middlesex	Wakefield	1.0	\N	\N	1	\N	1	19.8	\N	\N	Coordinates
Upper Common	\N	Common St	Crescent St	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	2.6	\N	\N	\N
Veterans Field	411 North Ave	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	1	1	\N	\N	3.15	\N	\N	\N
Walsh Field, Beasly Field and Wakefield Memorial High School	60 Farm St	\N	\N	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	1	1	\N	1	45.26	\N	\N	\N
Walton Field and Galvin Middle School	\N	North Ave	Armory St	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	1	\N	1	15.16	\N	\N	\N
Yeuell School Field	\N	Greenwood St	Glendale Ave	1880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	1	\N	\N	7.29	\N	\N	\N
Bobby Connors Playground	20 Sunnyside St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	1	1.0	\N	2.98	\N	\N	\N
Cedarwood Playground	25 Intervale Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	\N	\N	7.0	\N	\N	\N
Chemistry Park	110 Pine St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cornelia Warren Field	210 Waverly Oaks Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	1	\N	1	4.84	\N	\N	\N
Drake Playground	3 Hazel St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	1	1.0	\N	2.16	\N	\N	\N
Elsie Turner Field	421 Trapelo Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	1	\N	\N	6.0	\N	\N	\N
Fitch Spray Park	14 Ash St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Graverson Playground	16 Pine Vale Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	1	1	1.0	1	4.44	\N	\N	\N
Hillcroft Playground	25 Hillcroft Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	\N	\N	2.42	\N	\N	\N
Jack Koutoujian Playground	910 Moody St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	1	1.0	1	11.09	\N	\N	\N
James P. Falzone Memorial Park	901 Trapelo Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	\N	\N	1	10.54	\N	\N	\N
Lazazzero Playground	7 Shore Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	1	1.0	\N	4.3	\N	\N	\N
Logan Park	120 Woerd Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	\N	\N	0.45	\N	\N	\N
Lowell Field	190 Grove St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	1	1	1.0	1	5.35	\N	\N	\N
McDonald Playground	8 Cutter St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	1.0	\N	0.67	\N	\N	\N
McKenna Playground	10 Whitcomb St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	1	1.0	\N	3.15	\N	\N	\N
Msgr. McCabe/ Warrendale Playground	90 Charlotte Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	1	1	1.0	\N	4.86	\N	\N	\N
Nipper Maher Park	65 Dartmouth St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	1	1	1.0	\N	18.5	\N	\N	\N
Peter Gilmore Playground	90 Hall St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	1.0	\N	1.35	\N	\N	\N
Pond End Tot Lot	93 Winter St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	\N	\N	1.42	\N	\N	\N
Prospect Hill Park	314 Totten Pond Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	\N	\N	252.22	\N	\N	\N
Thompson Playground	95 Charles St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Veterans Memorial Athletic Complex	385 Forest St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	1	\N	1	25.0	\N	\N	\N
Veterans Memorial Skating Rink	295 Totten Pond Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Arsenal Parkﾠ	485 Arsenal St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	1	1	1.0	1	13.2	\N	\N	\N
Bemis Parkﾠ	76 Bridge St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	1	1.0	1	1.8	\N	\N	\N
Browne School Playgroundﾠ	552 Main St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	\N	\N	\N	1	\N	1	2.7	\N	\N	\N
Casey (W.O. James P.) Parkﾠ	124 Watertown St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	1	1	1.0	1	6.1	\N	\N	\N
Cunniff School Playgroundﾠ	246 Warren St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	1	1.0	\N	1.0	\N	\N	\N
Dealtry Pool	114 Pleasant St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	\N	1	\N	\N	\N	\N	\N	\N	\N	\N
Farren Playgroundﾠ	151 Charles River Rd	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Filippello (Domenick) Parkﾠ	109 Arlington St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
How Park	\N	Pleasant St	Bacon St	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	\N	1.0	1	1.6	\N	\N	\N
LowellﾠSchool Playgroundﾠ	175 Orchard St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	1	1.0	1	3.6	\N	\N	\N
Moxley (Priv. Richard) Park	31 Westminster Ave	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	1	1	1.0	\N	5.8	\N	\N	\N
O'Connell (Cpt. Richard) Park	341 Mt Auburn St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	1	1.0	1	4.7	\N	\N	\N
Saltonstall Parkﾠ	149 Main St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	1	1.0	1	4.2	\N	\N	\N
Sullivan Playgroundﾠ	\N	Mt Auburn St	Arlington St	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	\N	1	1.0	1	1.2	\N	\N	\N
Victory Field	40 Orchard St	\N	\N	2472	\N	\N	Urban	MA	Middlesex	Watertown	1.0	\N	1	1	1.0	1	14.2	\N	\N	\N
Alpine Field	24 Alpine Rd	\N	\N	1778	\N	\N	Urban	MA	Middlesex	Wayland	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Art King Field (Town Building Field)	53 Cochituate Rd	\N	\N	1778	\N	\N	Urban	MA	Middlesex	Wayland	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Claypit Hill Field	40 Adams Ln	\N	\N	1778	\N	\N	Urban	MA	Middlesex	Wayland	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Cochituate Field	22 W Plain St	\N	\N	1778	\N	\N	Urban	MA	Middlesex	Wayland	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Happy Hollow School	63 Pequot Rd	\N	\N	1778	\N	\N	Urban	MA	Middlesex	Wayland	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Loker School	47 Loker St	\N	\N	1778	\N	\N	Urban	MA	Middlesex	Wayland	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Riverview Field	\N	Riverview Ave	Overlook Rd	1778	\N	\N	Urban	MA	Middlesex	Wayland	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Abbot/Millenium School	23 Depot St	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
American Legion Field, Graniteville	\N	River St	1st St	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Blanchard Middle School	14 West St	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	\N	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Crisafulli School	13 Robinson Rd	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Day School	75 E Prescott St	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Edward's Beach	\N	Williams Ave	Edwards Ave	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Forge Beach	\N	\N	\N	\N	42.578627	-71.49	Urban	MA	Middlesex	Westford	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Frost Field and Whitney Tennis Courts	73 Main St	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Greystone Field	\N	\N	\N	\N	42.631535	-71.427	Urban	MA	Middlesex	Westford	\N	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
Hamilton Field	\N	Oak Hill	Plain Rd	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Jack Walsh Field	\N	Carlisle Rd	Texas Rd	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	1	\N	1.0	1	\N	\N	\N	\N
Kimball Farm	400 Littleton Rd	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Miller School	\N	Vineyard Rd	Mitchell Way	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Nabnasset School	99 Plain Rd	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Robinson School	60 Concord Rd	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Veterans Memorial Complex and Stony Brook Middle School	9 Farmer Way	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	\N	\N	1	1	1.0	1	\N	\N	\N	\N
VFW Field-Forge Village Ballfield	\N	W Prescott St	Village View Rd	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Westford Academy Track	Patten Rd	\N	\N	1886	\N	\N	Urban	MA	Middlesex	Westford	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Westford Town Common	\N	Main St	Lincoln St	1886	\N	\N	Urban	MA	Middlesex	Westford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Alphabet Field	\N	Alphabet Ln	School St	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Brook School Field	44 School St	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	\N	\N	1	\N	\N	\N	\N
Buchard Park	269 Concord Rd	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	1.0	\N	\N	\N	\N	\N
Burt Field	\N	\N	\N	\N	42.328878	-71.285428	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Cambridge School	45 Georgian Rd	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Cherry Brook Field	\N	Cherry Brook Rd	Pollywog Ln	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Country School Field	2 Alphabet Ln	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Czarnowski Field	\N	Brook Rd	Viles St	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Ferrelli Field	45 Bogle St	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Malone Field	\N	\N	\N	\N	42.387522	-71.280649	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Meadowbrook School	10 Farm Rd	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Memorial Pool	6 Alphabet Ln	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	1	\N	\N	\N	\N	\N	\N	\N	\N
Regis College	235 Wellesley St	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	\N	1	\N	\N	\N	\N
Rivers School	333 Winters St	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Weston High School	444 Wellesley St	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Weston Middle School	456 Wellesley St	\N	\N	2493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Aprile Field and Town Park	\N	\N	\N	\N	42.534295	-71.160583	Urban	MA	Middlesex	Wilmington	\N	\N	\N	1	\N	\N	61.0	\N	\N	Coordinates
Boutwell-West Intermediate-Middle School Campus	\N	Boutwell St	Carter Ln	1887	\N	\N	Urban	MA	Middlesex	Wilmington	1.0	\N	1	1	1.0	1	41.3	\N	\N	\N
North Intermediate School	\N	Salem St	Ballardvale st	1887	\N	\N	Urban	MA	Middlesex	Wilmington	1.0	\N	1	1	1.0	1	14.0	\N	\N	\N
Robert Palmer Park	121 Glen Rd	\N	\N	1887	\N	\N	Urban	MA	Middlesex	Wilmington	1.0	\N	\N	1	1.0	1	8.0	\N	\N	\N
Rotary Park	\N	Adelaide St	Church St	1887	\N	\N	Urban	MA	Middlesex	Wilmington	1.0	\N	\N	1	\N	\N	6.5	\N	\N	\N
Shawsheen Elementary School	298 Shawsheen Ave	\N	\N	1887	\N	\N	Urban	MA	Middlesex	Wilmington	1.0	\N	1	1	1.0	1	20.5	\N	\N	\N
Wildwood Street School	\N	Wildwood St	Senpek Rd	1887	\N	\N	Urban	MA	Middlesex	Wilmington	1.0	\N	1	\N	1.0	1	\N	\N	\N	\N
Wilmington High School	159 Church St	\N	\N	1887	\N	\N	Urban	MA	Middlesex	Wilmington	\N	\N	1	1	1.0	1	17.0	\N	\N	\N
Woburn Street School	\N	Woburn St	North St	1887	\N	\N	Urban	MA	Middlesex	Wilmington	1.0	\N	1	1	1.0	1	10.0	\N	\N	\N
Ambrose School	27 High St	\N	\N	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Bellino Park	\N	Main St	Swanton St	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Borggaard Beach Park and Packer-Ellis Tennis Courts	17 Palmer St	\N	\N	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
Chefalo Park	\N	Washington St	Myrtle St	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Davidson Park	\N	Cross St	Forest St	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Elliot Park	\N	Main St	Lake St	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ginn Field	\N	Bacon St	Mystic Valley Pkwy	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Leonard Field	\N	Washington St	Grayson Rd	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	1	\N	1.0	1	\N	\N	\N	\N
Lynch School	10 Brantwood Rd	\N	\N	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
McCall Middle School	458 Main St	\N	\N	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
McDonald Field	\N	Hill St	Fitzgerald Ave	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mullen Field	\N	Ridge St	Lockeland Rd	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Muraco School	33 Bates Rd	\N	\N	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Parkhurst School	\N	Samoset St	Andrews Rd	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Skillings Field	\N	\N	\N	\N	42.457629	-71.1	Urban	MA	Middlesex	Winchester	\N	\N	\N	1	1.0	1	\N	\N	\N	Coordinates
Vinson-Owen Elementary School	75 Johnson Rd	\N	\N	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Washington St Park	\N	Washington St	Sunset Rd	1890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
West Side Fields	\N	Wildwood St	Albamont Rd	1890	\N	\N	Urban	MA	Middlesex	Winchester	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Town Common	\N	Church St	Waterfield St	1890	\N	\N	Urban	MA	Middlesex	Winchester 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Altavesta School	990 Main St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Ferullo Field	880 Main St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	1.0	1	1	1	1.0	\N	\N	\N	\N	\N
Gillis Park	240 Lexington St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Gonsalves Field	46 S Bedford St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	\N	\N	1	1	1.0	\N	\N	\N	\N	\N
Green Street Playground	60 Green St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	1.0	1	\N	\N	1.0	1	\N	\N	\N	\N
Higgins Field	36 Bow St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	\N	\N	1	1	\N	\N	\N	\N	\N	\N
Kennedy Middle School Field	\N	\N	\N	\N	42.491842	-71.144559	Urban	MA	Middlesex	Woburn	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Leland Park	87 Central St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	1.0	1	\N	1	1.0	1	\N	\N	\N	\N
Library Park	\N	\N	\N	\N	42.480747	-71.156243	Urban	MA	Middlesex	Woburn	1.0	\N	1	1	1.0	1	\N	\N	\N	Coordinates
Ryan Park	\N	Russell St	Squanto Rd	1801	\N	\N	Urban	MA	Middlesex	Woburn	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Veteranﾒs Field	144 School St	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Weafer Park	40 Forest Park Rd	\N	\N	1801	\N	\N	Urban	MA	Middlesex	Woburn	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Arcand	156 Lake St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Crooks Corner	1 South Main St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
High School /Blackstone	106 Blackstone Rd	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
High Street Complex	33 High St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Macy School	60 Monique Dr	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
North Field	415 Hartford Ave	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Richardson Field	55 Harpin St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
RobertsField /Peneau Field	70 Harpin St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Silver Lake	100 Cross St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Stall Brook School	342 Hartford Ave	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
The Town Common	15 Mendon St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Trottier Field	66 Harpin St	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Tuttle Field	63 HarpinSt	\N	\N	2019	\N	\N	Urban	MA	Norfolk	Bellingham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Adams Park	\N	Adams St	Commercial St	2184	\N	\N	Urban	MA	Norfolk	Braintree	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Daily Field	\N	Washington St	Woodsum Dr	2184	\N	\N	Urban	MA	Norfolk	Braintree	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Dyer Hill Park	\N	Washington St	Shepard Rd	2184	\N	\N	Urban	MA	Norfolk	Braintree	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Erwin Davis	\N	Faxon St	Commercial St	2184	\N	\N	Urban	MA	Norfolk	Braintree	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
French Commons	773 Washington St	\N	\N	2184	\N	\N	Urban	MA	Norfolk	Braintree	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Harris Park	\N	Perry Rd	Elmlawn Rd	2184	\N	\N	Urban	MA	Norfolk	Braintree	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Hollingsworth Park	\N	Pond St	Delta Rd	2184	\N	\N	Urban	MA	Norfolk	Braintree	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Hollis Field	\N	Webster Rd	Wilmarth Rd	2184	\N	\N	Urban	MA	Norfolk	Braintree	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Pond Meadow Park	\N	\N	\N	\N	42.206953	-70.976164	Urban	MA	Norfolk	Braintree	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Watson Field	\N	Gordon Rd	Arthur St	2184	\N	\N	Urban	MA	Norfolk	Braintree	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Amory Playground	\N	Freeman St	Armory St	2446	\N	\N	Dog	MA	Norfolk	Brookline	\N	\N	1	1	\N	1	8.28	1	\N	\N
Baker School Playground	205 Beverly Rd	\N	\N	2467	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	1	1	1.0	1	11.27	\N	\N	\N
Baldwin School Playground	490 Heath St	\N	\N	2467	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	\N	\N	\N	\N	1.25	\N	\N	\N
Beacon Street Mall	\N	Beacon St	Marion St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	14.25	\N	\N	\N
Billy Ward Playground	11 Brook St	\N	\N	2445	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	\N	\N	1.0	\N	0.54	\N	\N	\N
Boylston Street Playground	\N	Cameron St	Leverett St	2445	\N	\N	Dog	MA	Norfolk	Brookline	1.0	\N	\N	1	1.0	1	1.16	1	\N	\N
Brington Road Island	49 Brington Rd	\N	\N	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.08	\N	\N	Nearest
Brookline Avenue Playground	\N	Brookline Ave	Aspinwall Ave	2445	\N	\N	Dog	MA	Norfolk	Brookline	1.0	\N	\N	1	\N	1	4.05	1	\N	\N
Brookline Reservoir Park	\N	Boylston St	Lee St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	32.21	\N	\N	\N
Clark Playground	\N	Cypress St	Mulford St	2445	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	\N	\N	1.0	\N	1.08	\N	\N	\N
Coolidge Playground	\N	Columbia St	Kenwood St	2446	\N	\N	Dog	MA	Norfolk	Brookline	1.0	1	1	\N	1.0	\N	1.68	1	\N	\N
Corey Farm Circle	\N	\N	\N	\N	42.34007	-71.139752	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.06	\N	\N	Coordinates
Corey Hill Park	174 Summit Ave	\N	\N	2446	\N	\N	Dog	MA	Norfolk	Brookline	1.0	\N	\N	\N	\N	\N	4.16	1	\N	\N
Cypress Street Playground	\N	Cypress St	Davis Ave	2445	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	\N	1	1.0	1	5.22	\N	\N	\N
Dane Park	\N	Hammond St	Woodland Rd	2467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	17.23	\N	\N	\N
Daniel F Ford Playground at Emerson Garden	\N	Davis Ave	Emerson St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	1	\N	\N	\N	\N	2.05	\N	\N	\N
Daniel W Warren, Jr Playground	\N	Chestnut Hill Ave	Ackers Ave	2445	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	1	1	1.0	1	11.1	\N	\N	\N
Devotion School Playground	345 Harvard St	\N	\N	2446	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	1	1	1.0	1	6.72	\N	\N	\N
Driscoll School Playground	64 Westbourne Terr	\N	\N	2446	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	1	\N	1.0	1	4.03	\N	\N	\N
Dudley Triangle	\N	Dudley St	Lee St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.81	\N	\N	\N
Dwight Square	\N	Dwight St	Babcock St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.16	\N	\N	\N
Eliot @ Crafts Triangle	\N	Eliot St	Crafts Rd	2467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.26	\N	\N	\N
Emerald Necklace I - Riverway Park	\N	Brookline Ave	Parkway Rd	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	13.8	\N	\N	\N
Emerald Necklace II - Olmsted Park	\N	Jamaicaway	Willow Pond Rd	2130	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	12.94	\N	\N	\N
Francis J. Hickey Square	\N	Harvard St	Kent St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.06	\N	\N	\N
Francis X. Ryan Circle	\N	\N	\N	\N	42.303285	-71.151356	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.71	\N	\N	Coordinates
Freeman Square	\N	Freeman St	Babcock St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.15	\N	\N	\N
Griggs Park	\N	Griggs Rd	Griggs Terr	2446	\N	\N	Dog	MA	Norfolk	Brookline	1.0	\N	\N	\N	\N	\N	3.34	1	\N	\N
Harry Downes Field	\N	Jamaica Rd	Pond Ave	2445	\N	\N	Dog	MA	Norfolk	Brookline	1.0	\N	\N	1	\N	1	8.73	1	\N	\N
Heath School Playground	100 Eliot St	\N	\N	2467	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	\N	\N	1.0	\N	6.51	\N	\N	\N
Horace James Circle	\N	\N	\N	\N	42.3103755	-71.1633867	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.71	\N	\N	Coordinates
Jean B Waldstein (Dean) Playground	21 Dean Rd	\N	\N	2445	\N	\N	Dog	MA	Norfolk	Brookline	1.0	1	1	1	1.0	1	5.63	1	\N	\N
John E Murphy Playground	\N	Kent St	Bowker St	2445	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	\N	\N	1.0	\N	0.51	\N	\N	\N
Judge Henry Crowley Park at Saint Mark's Square	\N	Marion St	Veron St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.4	\N	\N	\N
Juniper Street Playground	\N	\N	\N	\N	42.330016	-71.117359	Urban	MA	Norfolk	Brookline	1.0	1	\N	\N	\N	\N	0.41	\N	\N	Coordinates
Knyvet Square	\N	Ewe St	St Paul St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	2.8	\N	\N	\N
Larz Anderson Park	350 Goddard Ave	\N	\N	2446	\N	\N	Dog	MA	Norfolk	Brookline	1.0	\N	\N	1	\N	1	61.13	1	\N	\N
Lawton Playground	\N	Lawton St	Thorndike St	2446	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	\N	\N	1.0	\N	1.08	\N	\N	\N
Linden Park	\N	Linden Pl	Linden St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.28	\N	\N	\N
Linden Square	\N	Linden Pl	Perry St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.19	\N	\N	\N
Little Field Park	\N	Eliot St	Eliot Crescent	2467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.84	\N	\N	\N
Longwood Mall	\N	Kent St	Beech Rd	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	2.55	\N	\N	\N
Longwood Playground	\N	Longwood Ave	Marshal St	2446	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	1	1	1.0	1	4.99	\N	\N	\N
Lotta Bradburn Schick Park	153 Addington Rd	\N	\N	2445	\N	\N	Dog	MA	Norfolk	Brookline	1.0	\N	\N	\N	1.0	\N	1.1	1	\N	\N
Margaret E Robinson Playground	\N	Cypress St	Franklin St	2445	\N	\N	Dog	MA	Norfolk	Brookline	1.0	1	\N	1	1.0	1	2.38	1	\N	\N
Mason Square	\N	Mason St 	Essex St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	1.14	\N	\N	\N
Monmouth Street Park	\N	\N	\N	\N	42.344597	-71.106614	Urban	MA	Norfolk	Brookline	1.0	\N	\N	\N	\N	\N	0.16	\N	\N	Coordinates
Philbrick Square	\N	Upland Rd	Maple St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.28	\N	\N	\N
Pierce School Playground	50 School St	\N	\N	2446	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	\N	1	1.0	1	2.37	\N	\N	\N
Pleasant Street Triangle	\N	Pleasant St	Waldo St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.05	\N	\N	\N
Reservoir Road Extension	\N	Reservoir Rd	Middlesex Rd	2467	\N	\N	Dog	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.09	1	\N	\N
Runkle School Playground	50 Druce St	\N	\N	2445	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	\N	\N	1.0	\N	3.05	\N	\N	\N
Single Tree Road Circle	\N	\N	\N	\N	42.323208	-71.150652	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.33	\N	\N	Coordinates
Skyline Park	\N	\N	\N	\N	42.310855	-71.167261	Urban	MA	Norfolk	Brookline	1.0	\N	\N	\N	\N	1	15.15	\N	\N	Coordinates
Town Hall Lot	\N	Washington St	Holden St	2445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	1.99	\N	\N	\N
VFW Parkway Median	\N	VFW Pkwy	South St	2467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	1.17	\N	\N	\N
Webster Street Triangle	\N	Webster St	Beacon St	2446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.08	\N	\N	\N
West Roxbury Parkway	\N	Newton St	Wolcott Rd	2467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	2.16	\N	\N	\N
William H Lincoln School	19 Kennard Rd	\N	\N	2445	\N	\N	Urban	MA	Norfolk	Brookline	1.0	\N	\N	\N	1.0	\N	5.75	\N	\N	\N
Winthrop Square (Minot Rose Garden)	\N	St Paul St	Browne St	2446	\N	\N	Urban	MA	Norfolk	Brookline	1.0	1	\N	\N	\N	1	1.93	\N	\N	\N
Blue Hills Regional School	800 Randolph St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Bolivar Swimming Pool	\N	\N	\N	\N	42.151493	-71.13917	Urban	MA	Norfolk	Canton	\N	1	\N	\N	\N	\N	\N	\N	\N	Coordinates
Canton High School and Fields	900 Washington St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Devoll Playground	\N	Pine St	Bolivar St	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Galvin Middle School	55 Pecunit St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Hansen Elementary School	25 Pecunit St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
JFK Elementary School	100 Dedham St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Luce Elementary School	45 Independence St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Memorial Fields & Playground	\N	Reynolds St	Vaughn St	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Messinger Playground	21 Messinger St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Metropolis Skating Rink	2167 Washington St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Pequitside Farm	79 Pleasant St	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Ponkapoag Playground	\N	Sutcliffe Ave	Cedar Dr	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Tilden Playground	7 Tilden Rd	\N	\N	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Windsor Woods Soccer / Lacrosse	\N	Washington St	Windsor Woods Ln	2021	\N	\N	Urban	MA	Norfolk	Canton	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Cohasset Common	\N	N Main St	Robert Jason Rd	2025	\N	\N	Urban	MA	Norfolk	Cohasset	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cohasset Middle-High School	143 Pond St	\N	\N	2025	\N	\N	Urban	MA	Norfolk	Cohasset	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Cohasset Town Hall	41 Highland Ave	\N	\N	2025	\N	\N	Urban	MA	Norfolk	Cohasset	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Deer Hill School	208 Sohier St	\N	\N	2025	\N	\N	Urban	MA	Norfolk	Cohasset	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Joseph Osgood School	210 Sohier St	\N	\N	2025	\N	\N	Urban	MA	Norfolk	Cohasset	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Milliken Field	Bancroft Rd	\N	\N	2025	\N	\N	Urban	MA	Norfolk	Cohasset	\N	\N	1	1	\N	1	\N	\N	\N	\N
Paul Pratt Library	35 Ripley Rd	\N	\N	2025	\N	\N	Urban	MA	Norfolk	Cohasset	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Barnes Memorial Park	\N	Eastern Ave	East Ave	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	\N	\N	14.7	\N	\N	\N
Capen School field	322 Sprague St	\N	\N	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Churchill Park	\N	Churchill Pl	Allen Ln	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	1.0	\N	1.6	\N	\N	\N
Condon Park	\N	Bussey St	Colburn St	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	\N	1	7.2	\N	\N	\N
Dedham Common	\N	Common St	High St	2026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	4.0	\N	\N	\N
East Dedham Passive Park	\N	\N	\N	2026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Fairbanks Park	169 Rustcraft Rd	\N	\N	2026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	1	\N	1	14.2	\N	\N	\N
Gerish Park	\N	\N	\N	2026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Greenlodge School field	\N	Greenlodge St	Colwell Dr	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Hartnett Square	\N	\N	\N	2026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Oakdale School field	\N	Madison St	Circuit Rd	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Oakdale Square	\N	Oakdale Ave	River St	2026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Paul Park (Gregory M Riley Memorial Playground)	\N	Cedar St	Tower St	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	1.0	\N	2.9	\N	\N	\N
Riverdale School field	\N	Needham St	Egan Terr	2026	\N	\N	Urban	MA	Norfolk	Dedham	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Whiting Triangle	\N	\N	\N	2026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Bickford-Ballou Park / Boat Landing	\N	Claybrook Rd	Riverside Dr	2030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	\N	2.28	\N	\N	\N
Caryl Park	107 Dedham St	\N	\N	2030	\N	\N	Urban	MA	Norfolk	Dover	1.0	\N	1	1	1.0	\N	82.0	\N	\N	Coordinates
Channing Park	\N	\N	\N	\N	42.24622512	-71.29014546	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	\N	6.14	\N	\N	Coordinates
Chickering Playfields	\N	\N	\N	\N	42.24904945	-71.27104796	Urban	MA	Norfolk	Dover	\N	\N	\N	1	\N	1	43.95	\N	\N	Coordinates
Dover-Sherborn Middle School	155 Farm St	\N	\N	2030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Elm Bank	\N	Reservation Rd	Cheney Dr	2030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	1	182.0	\N	\N	\N
Town Common	5 Springdale Ave	\N	\N	2030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	\N	5.72	\N	\N	\N
Booth Playground	\N	South St	Union St	2035	\N	\N	Urban	MA	Norfolk	Foxborough	\N	\N	1	1	1.0	1	20.32	\N	\N	\N
Burrell Elementary School	16 Morse St	\N	\N	2035	\N	\N	Urban	MA	Norfolk	Foxborough	1.0	\N	\N	1	\N	\N	23.0	\N	\N	\N
Cocasset River Recreation Area	68 Mill St	\N	\N	2035	\N	\N	Urban	MA	Norfolk	Foxborough	1.0	1	\N	\N	\N	1	19.7	\N	\N	\N
Foxborough High School	120 South St	\N	\N	2035	\N	\N	Urban	MA	Norfolk	Foxborough	\N	\N	1	1	\N	1	40.65	\N	\N	\N
Igo Elementary School	70 Carpenter St	\N	\N	2035	\N	\N	Urban	MA	Norfolk	Foxborough	1.0	\N	\N	\N	\N	\N	4.21	\N	\N	\N
John J Aheern Middle School	111 Mechanic St	\N	\N	2035	\N	\N	Urban	MA	Norfolk	Foxborough	\N	\N	\N	1	\N	1	37.36	\N	\N	\N
Taylor Elementary School	196 South St	\N	\N	2035	\N	\N	Urban	MA	Norfolk	Foxborough	1.0	\N	\N	1	\N	\N	11.8	\N	\N	\N
Beaver Pond Rec. Area	\N	\N	\N	\N	42.083434	-71.415902	Urban	MA	Norfolk	Franklin	\N	\N	\N	\N	\N	1	2.0	\N	\N	Coordinates
Brick School	\N	Lincoln St	Maple St	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	\N	\N	\N	0.2	\N	\N	\N
Chilson Beach	\N	\N	\N	\N	42.082633	-71.41683	Urban	MA	Norfolk	Franklin	1.0	\N	\N	\N	\N	1	2.0	\N	\N	Coordinates
Dacey Community Field	\N	\N	\N	\N	42.120429	-71.398988	Dog	MA	Norfolk	Franklin	1.0	\N	\N	1	\N	1	66.5	1	\N	Coordinates
Davis Thayer School	137 W Central St	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	1	1.0	\N	6.0	\N	\N	\N
Fletcher Field	\N	Peck St	Dale St	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	1	1.0	\N	13.23	\N	\N	\N
Franklin High School	218 Oak St	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	1	1	\N	1	73.92	\N	\N	\N
Franklin Town Common	\N	Union St	Beaver St	2038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	\N	\N	\N	3.5	\N	\N	\N
JFK Elementary School	551 Pond St	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	1	1.0	\N	15.0	\N	\N	\N
King Street Memorial Park	\N	King St	Emilio Dr	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	1	1.0	1	25.87	\N	\N	\N
Meadowlark Lane Complex	\N	\N	\N	\N	42.101064	-71.366297	Urban	MA	Norfolk	Franklin	\N	\N	\N	1	\N	1	2.5	\N	\N	Coordinates
Nason Street Tot Lot Playground	\N	Nason Steet	Union St	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	\N	\N	\N	0.54	\N	\N	\N
Oak Street School and Horace Mann School	224 Oak St	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	\N	1.0	1	40.0	\N	\N	\N
Parmenter School	235 Wachusett St	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	1	\N	\N	20.9	\N	\N	\N
Pisani Field (Theron Metcalf)	\N	Peck St	Cottage St	2038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	1	\N	\N	3.65	\N	\N	\N
Remington Jefferson School	628 Washington St	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	1.0	\N	\N	1	1.0	1	60.0	\N	\N	\N
Tri County Regional Vocational Tech High School	147 Pond St	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	1	\N	1	60.0	\N	\N	\N
Veteran's Memorial Rink	910 Panther Way	\N	\N	2038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	\N	\N	1	6.7	\N	\N	\N
Brookville Playground	\N	\N	\N	\N	42.124523	-71.008265	Urban	MA	Norfolk	Holbrook	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Franklin Field	235 S Franklin St	\N	\N	2343	\N	\N	Urban	MA	Norfolk	Holbrook	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Holbrook Playground	95 S Franklin St	\N	\N	2343	\N	\N	Urban	MA	Norfolk	Holbrook	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Mary Wales Holbrook Park	\N	N Franklin St	Union St	2343	\N	\N	Urban	MA	Norfolk	Holbrook	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Baxter Memorial Park	\N	Main St	Spring St	2052	\N	\N	Urban	MA	Norfolk	Medfield	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hinkley Memorial Park & Swim Pond	55 Green St	\N	\N	2052	\N	\N	Urban	MA	Norfolk	Medfield	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
McCarthy Park	44 Hospital Rd	\N	\N	2052	\N	\N	Urban	MA	Norfolk	Medfield	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Metacomet Park	93 Pleasant St	\N	\N	2052	\N	\N	Urban	MA	Norfolk	Medfield	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Choate Pond and Park	\N	\N	\N	\N	42.147635	-71.428041	Urban	MA	Norfolk	Medway	\N	\N	1	1	1.0	1	\N	\N	\N	Coordinates
Garnsey Dog Park	302 Village St	\N	\N	2053	\N	\N	Dog	MA	Norfolk	Medway	\N	\N	\N	\N	\N	\N	\N	1	\N	\N
Grand Army of the Republic Memorial	\N	Village St	Norfolk Ave	2053	\N	\N	Urban	MA	Norfolk	Medway	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Matondi Square	\N	Holliston St	Village St	2053	\N	\N	Urban	MA	Norfolk	Medway	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
North St Park	\N	School St	North St	2053	\N	\N	Urban	MA	Norfolk	Medway	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Winthrop St Park	8 Wards Ln	\N	\N	2053	\N	\N	Urban	MA	Norfolk	Medway	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Clyde Brown Field	\N	Park Rd	Main St	2054	\N	\N	Urban	MA	Norfolk	Millis	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Town Park	900 Main St	\N	\N	2054	\N	\N	Urban	MA	Norfolk	Millis	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Andrews Park	\N	\N	\N	\N	42.26106197	-71.03668843	Urban	MA	Norfolk	Milton	1.0	\N	1	1	1.0	1	9.0	\N	\N	Coordinates
Crane Parkﾠ	2 Bates Rd	\N	\N	2186	\N	\N	Urban	MA	Norfolk	Milton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cunningham Parkﾠ	\N	\N	\N	\N	42.25290423	-71.04890263	Urban	MA	Norfolk	Milton	1.0	1	1	1	\N	1	\N	\N	\N	Coordinates
Kelly Field	\N	Brook Rd	Windsor Rd	2186	\N	\N	Urban	MA	Norfolk	Milton	1.0	\N	1	1	\N	1	11.0	\N	\N	\N
Mary C. Lane Playground	262 Randolph Ave	\N	\N	2186	\N	\N	Urban	MA	Norfolk	Milton	1.0	\N	\N	1	1.0	\N	4.0	\N	\N	\N
Milton High School Athletic Fields	25 Gile Rd	\N	\N	2186	\N	\N	Urban	MA	Norfolk	Milton	\N	\N	\N	\N	\N	\N	15.0	\N	\N	\N
River Side Stables	189 Hillside St	\N	\N	2186	\N	\N	Urban	MA	Norfolk	Milton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Shields Park	392 Eliot St	\N	\N	2186	\N	\N	Urban	MA	Norfolk	Milton	1.0	\N	\N	1	\N	\N	5.0	\N	\N	\N
Turners Pond	\N	\N	\N	\N	42.26198888	-71.07895988	Urban	MA	Norfolk	Milton	\N	\N	\N	\N	\N	\N	26.0	\N	\N	Coordinates
Avery Park	\N	Webster St	Highland Ave	2492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Broadmedow School	120 Broadmedow Rd	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Claxton Field	\N	Central Ave	Marked Tree Rd	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Cricket Field	\N	Hillside Ave	Sunnyside Rd	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
DeFazio Park	\N	Dedham Ave	South St	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Dwight Field	50 Dwight Rd	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Eliot School	135 Wellesley Ave	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Greeneﾒs Field	\N	Pickering St	Great Plain Ave	2492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
High Rock School	\N	\N	\N	\N	42.27521401	-71.24308402	Urban	MA	Norfolk	Needham	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Hillside School	28 Glen Gary Rd	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Memorial Park	92 Rosemary St	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Mills Field	96 Gould St	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Mitchell School	187 Brookline St	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Needham High School	609 Webster St	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
Newman School	1155 Central Ave	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
Perry Park	\N	Beaufort Ave	Arden St	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Pollard Middle School	200 Harris Ave	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	1	1	\N	\N	\N	\N	\N	\N
Riverside Park	\N	Riverside St	Highview St	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Walker-Gordon	156 Charles River St	\N	\N	2492	\N	\N	Urban	MA	Norfolk	Needham	1.0	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Freeman Centennial School	70 Boardman St	\N	\N	2056	\N	\N	Urban	MA	Norfolk	Norfolk	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
H Olive Day	232 Main St	\N	\N	2056	\N	\N	Urban	MA	Norfolk	Norfolk	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kids Place	Boardman St	\N	\N	2056	\N	\N	Urban	MA	Norfolk	Norfolk	\N	\N	\N	\N	\N	\N	2.7	\N	\N	\N
King Philip North School	18 King St	\N	\N	2056	\N	\N	Urban	MA	Norfolk	Norfolk	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Pond St Recreation Facility	33 Pond St	\N	\N	2056	\N	\N	Urban	MA	Norfolk	Norfolk	1.0	\N	1	1	1.0	1	21.0	\N	\N	\N
Balch School	1170 Washington St	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	1.0	\N	\N	\N	\N	\N	3.27	\N	\N	\N
Bond St. Playground	\N	Bond St	Walpole St	2062	\N	\N	Urban	MA	Norfolk	Norwood	1.0	\N	\N	\N	\N	\N	1.41	\N	\N	\N
Callahan School	116 Garfield Ave	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	10.83	\N	\N	\N
Charles Eliot Park	\N	St Georges Ave	Pond Ave	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	\N	7.28	\N	\N	\N
Cleveland School	33 George Willet Pkwy	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	18.42	\N	\N	\N
Coakley Middle School	1315 Washington St	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	38.2	\N	\N	\N
D.A.V. Park	\N	Walpole St	Chapel St	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	4.49	\N	\N	\N
Doherty Field	\N	Brewster Dr	Sumner St	2062	\N	\N	Urban	MA	Norfolk	Norwood	1.0	\N	\N	1	\N	\N	7.7	\N	\N	\N
Fortune Drive Rec. Lot	4 Fortune Dr	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	0.29	\N	\N	\N
Fr. McAleer Playground	\N	Hawthorne St	Vernon St	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	1	\N	\N	\N	1	47.27	\N	\N	\N
Guild Square Park	\N	Guild St	Washington St	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	0.7	\N	\N	\N
Hartshorns Swale	\N	E Cross St	W Border Rd	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	1	1.9	\N	\N	\N
Hawes Rec Area	\N	Washington St	Short St	2062	\N	\N	Urban	MA	Norfolk	Norwood	1.0	1	\N	\N	\N	\N	7.1	\N	\N	\N
Hennessey Field	\N	\N	\N	\N	42.187209	-71.19507	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	7.55	\N	\N	Coordinates
Ivatts Tennis Courts	\N	\N	\N	\N	42.173435	-71.210123	Urban	MA	Norfolk	Norwood	\N	\N	1	\N	\N	\N	0.7	\N	\N	Coordinates
Mylod St. Park	\N	Washington St	Mylod St	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	0.9	\N	\N	\N
Neponset Valley Land	\N	\N	\N	\N	42.167348	-71.185634	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	89.92	\N	\N	Coordinates
Oldham School	165 Prospect St	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	15.56	\N	\N	\N
Pleasant St. Park	\N	Pleasant St	Lenox Ave	2062	\N	\N	Urban	MA	Norfolk	Norwood	1.0	\N	\N	1	1.0	\N	3.17	\N	\N	\N
Prescott School	66 Richland Rd	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	1.0	\N	10.13	\N	\N	\N
Senior High School	245 Nichols St	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	1	1	\N	1	22.54	\N	\N	\N
Shattuck Park	\N	Winter St	Bond St	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	7.53	\N	\N	\N
Town Common / Memorial Park	\N	Common St	Main St	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	1.1	\N	\N	\N
Westover Parkway	\N	Westover Pkwy	Eden St	2062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	29.46	\N	\N	\N
Willet School	\N	\N	\N	\N	42.19461	-71.221592	Urban	MA	Norfolk	Norwood	1.0	\N	1	1	\N	\N	22.89	\N	\N	Coordinates
Wilson St. Playground	66 Wilson St	\N	\N	2062	\N	\N	Urban	MA	Norfolk	Norwood	1.0	\N	\N	1	\N	\N	11.11	\N	\N	\N
Winslow Ave. Lot	\N	Winslow Ave	Harding Ave	2062	\N	\N	Urban	MA	Norfolk	Norwood	1.0	\N	\N	1	\N	\N	2.63	\N	\N	\N
Field of Dreams	\N	\N	\N	\N	42.012834	-71.329497	Urban	MA	Norfolk	Plainville	\N	\N	\N	1	\N	\N	30.0	\N	\N	Coordinates
Town Park / Clarence Telford Park	\N	South St	School St	2762	\N	\N	Urban	MA	Norfolk	Plainville	1.0	1	1	1	1.0	1	19.0	\N	\N	\N
Allerton StreetﾠPlayground	\N	Allerton St	Camden St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Arthur Boyson Park	25 Heron Rd	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	1.0	\N	1.3	\N	\N	\N
Beechwood Knoll Playground	\N	Fenno St	Rice Rd	2170	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	1.0	\N	2.2	\N	\N	\N
Bishop Playground	88 Holbrook Rd	\N	\N	2171	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	1	1.0	1	5.5	\N	\N	\N
Bradford Street Playground	\N	Bradford St	Madison Ave	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
Brill Fieldﾠ	\N	Island Ave	Sea St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	1	1.0	1	4.6	\N	\N	\N
Broad Meadows	131R Sea St	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	1	1	1.0	1	17.0	\N	\N	\N
Cavanagh Stadium	\N	\N	\N	\N	42.276835	-71.023374	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1.0	1	4.5	\N	\N	Coordinates
Curry Fieldﾠ	\N	\N	\N	\N	42.234829	-71.030273	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	\N	\N	1.0	\N	\N	Coordinates
Faxon Field / Russell Park	\N	Southern Artery	Coddington St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	1	1.0	1	7.5	\N	\N	\N
Faxon Park	\N	Faxon Park Rd	Faxon Ln	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	1	1.0	\N	57.0	\N	\N	\N
Flaherty Park	530 Quarry St	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	1.0	1	0.75	\N	\N	\N
Flynn Playground	\N	Elm St	South St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
Forbes Hill Playground	\N	\N	\N	\N	42.257858	-71.027462	Urban	MA	Norfolk	Quincy	1.0	\N	1	1	1.0	\N	5.25	\N	\N	Coordinates
Fore River Field	\N	Beechwood St	Nevada Rd	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	1	1	1.0	1	7.2	\N	\N	\N
Freedom Park	8 Thomas Burgin Pkwy	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Grasso Playground	\N	Columbia St	Taber St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	1.0	\N	0.6	\N	\N	\N
Grenham StreetﾠPlayground	\N	Macy St	Bird St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Kincaide Park	\N	Roberts St	S Jr Terr	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	1	\N	1	5.2	\N	\N	\N
LaBrecque Field	\N	Sea St	Rockland St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	1	1.0	\N	6.17	\N	\N	\N
Mass Field Playground	\N	Willett St	Hamden Cir	2170	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1.0	\N	1.1	\N	\N	\N
McKinnon Playground	\N	Chapel St	Central Ave	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	\N	\N	0.75	\N	\N	\N
Merrymount Park	\N	Merrymount Pkwy	 Hancock St	2170	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	1	1.0	1	80.0	\N	\N	\N
Monroe Playground	16 Papile Lane	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	1.0	1	9.0	\N	\N	\N
O'Neil Field	\N	\N	\N	\N	42.277859	-71.025498	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	\N	1	8.3	\N	\N	Coordinates
O'Rourke Playground	\N	Hall Pl	Quarry St	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	1	1.0	1	7.6	\N	\N	\N
Perkins Playground	25 Narraganett Rd	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	\N	1.0	1	5.57	\N	\N	\N
Quarry Hills	149 Ricciuti Dr	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Smith & Quarry Street Playground	\N	Smith St	Quarry St	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1.0	\N	0.25	\N	\N	\N
Snug Harbor Playground	333 Palmer St	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	1	1.0	1	7.8	\N	\N	\N
Sterling Middle School Park	444 Granite St	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1.0	1	1.5	\N	\N	\N
Stoney Brae Playground	162 South Central Ave	\N	\N	2170	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Taffrail Road Playground	\N	Taffrail Rd	Palmer St	2169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
Teel Field	135 Newbury Ave	\N	\N	2171	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	\N	1	2.5	\N	\N	\N
Welcome Young Playground	73 Sagamore St	\N	\N	2171	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	\N	1.0	1	3.16	\N	\N	\N
Wendall Moses Playground	84 Parke Ave	\N	\N	2171	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	1	1.0	1	3.6	\N	\N	\N
Whitwell Street Playground	85 Whitwell St	\N	\N	2169	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	\N	\N	6.5	\N	\N	\N
Wollaston Recreational Facility	357 W Squantum St	\N	\N	2171	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	1	\N	\N	1	\N	\N	\N	\N
Wollaston School Playground	\N	Beale St	Highland Ave	2170	\N	\N	Urban	MA	Norfolk	Quincy	1.0	\N	\N	\N	1.0	\N	2.15	\N	\N	\N
Devine Schoolﾠﾠ	55 Old St	\N	\N	2368	\N	\N	Urban	MA	Norfolk	Randolph	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Donovan Schoolﾠ	123 Reed St	\N	\N	2368	\N	\N	Urban	MA	Norfolk	Randolph	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Imagination Station	\N	Pleasant St	Carlino Way	2368	\N	\N	Urban	MA	Norfolk	Randolph	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kennedy Schoolﾠ	20 Hurley Dr	\N	\N	2368	\N	\N	Urban	MA	Norfolk	Randolph	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lyons School	60 Vesey Rd	\N	\N	2368	\N	\N	Urban	MA	Norfolk	Randolph	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Randolph Dog Park	169 West St	\N	\N	2368	\N	\N	Dog	MA	Norfolk	Randolph	\N	\N	\N	\N	\N	\N	\N	1	\N	\N
Tower Hill Schoolﾠ	6 Adams St	\N	\N	2368	\N	\N	Urban	MA	Norfolk	Randolph	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Young Schoolﾠ	30 Lou Courtney Dr	\N	\N	2368	\N	\N	Urban	MA	Norfolk	Randolph	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ames Street Playground	75 Ames St	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Camp Everwood Field	125 Lakeview St	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Cottage Street School	30 Cottage St	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Deborah Sampson Park	30 East Foxboro St	\N	\N	2067	\N	\N	Dog	MA	Norfolk	Sharon	\N	\N	1	1	1.0	\N	\N	1	\N	\N
East Elementary	45 Wilshire Dr	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Gavins Pond	120 Gavins Pond Rd	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Heights Elementary School	454 South Main St	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Memorial Park Beach	\N	Beach St	Pond St	2067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sharon High School	181 Pond St	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	1	1	\N	1	\N	\N	\N	\N
Sharon Middle School	75 Mountain St	\N	\N	2067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	1	1	\N	1	\N	\N	\N	\N
THE BRADLEY LESSA MEMORIAL PLAYGROUND	\N	\N	\N	\N	42.10012413	-71.11602945	Urban	MA	Norfolk	Stoughton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
THE CAPP @ HALLORAN PARK	\N	\N	\N	\N	42.12332649	-71.09564521	Urban	MA	Norfolk	Stoughton	1.0	\N	\N	\N	1.0	1	\N	\N	\N	Coordinates
THE WEST SCHOOL ATHLETIC COMPLEX	\N	\N	\N	\N	42.13240569	-71.11187166	Urban	MA	Norfolk	Stoughton	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Adams Farm	999 North St	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bird Middle School	625 Washington St	\N	\N	2032	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	1.0	1	7.6	\N	\N	\N
Blackburn Hall/Stone Field	30 Stone St	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	\N	1	2.1	\N	\N	\N
Boyden School	1852 Washington St	\N	\N	2071	\N	\N	Urban	MA	Norfolk	Walpole	1.0	\N	\N	1	1.0	1	9.6	\N	\N	\N
Elm St School	415 Elm St	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Fisher School	65 Gould St	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	1.0	\N	\N	\N	\N	1	0.9	\N	\N	\N
High School and Turco Fields	275 Common St 	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	1	1	1.0	1	8.6	\N	\N	\N
Johnson Middle School	111 Robbin Rd	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	1	1	1.0	1	5.5	\N	\N	\N
Little League Fields	620 West St	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Memorial Park/Morgan Field	\N	School St	Stone St	2081	\N	\N	Urban	MA	Norfolk	Walpole	1.0	1	\N	1	\N	\N	20.0	\N	\N	\N
Old Fisher	\N	Fisher St	Old Fisher Ln	2081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	\N	1	0.96	\N	\N	\N
Old Post Rd School	99 Old Post Rd	\N	\N	2032	\N	\N	Urban	MA	Norfolk	Walpole	1.0	\N	\N	1	\N	1	1.5	\N	\N	\N
Plimpton	319 Common St	\N	\N	2081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	\N	\N	0.6	\N	\N	\N
Brown Park	\N	Garden Rd	Lanark Rd	2481	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	\N	1	\N	\N	\N	\N	\N	No address
Fiske School Field	45 Hastings St	\N	\N	2481	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	\N	1	1.0	1	\N	\N	\N	No address
Hardy School Field	293 Weston Rd	\N	\N	2482	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	\N	1	1.0	1	\N	\N	\N	Coordinates
Hunnewell Field	\N	Smith St	Clifford St	2482	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	1	1	1.0	1	\N	\N	\N	Coordinates
Kelly Field	50 Elmwood Rd	\N	\N	2481	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	1	1	1.0	1	\N	\N	\N	Coordinates
Ouellet Playground	\N	Cedar St	Charles St	2481	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Perrin Park	50 Thomas Rd	\N	\N	2482	\N	\N	Urban	MA	Norfolk	Wellesley	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Scholfield School Field	27 Cedar St	\N	\N	2481	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Sprague School Field	401 School St	\N	\N	2482	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Upham School Field	35 Wynnewood Rd	\N	\N	2481	\N	\N	Urban	MA	Norfolk	Wellesley	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Deerfield School	72 Deerfield Ave	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Downey School	250 Downey St	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Hanlon School Field	790 Gay St	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
June Street Playground Diamond	\N	June St	Highway St	2090	\N	\N	Urban	MA	Norfolk	Westwood	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lodge Field	45 Clapboardtree St	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Martha Jones School Field	80 Martha Jones Rd	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Morrison Baseball	\N	Washington St	East St	2090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	1	1	1.0	\N	\N	\N	\N	\N
School Street Playground	43 School St	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Sheehan School Fields	549 Pond St	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Thurston Middle School Fields	850 High St	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Westood High School Fields	200 Nahatan St	\N	\N	2090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	1	1	\N	1	\N	\N	\N	\N
Great Esker Park	\N	\N	\N	\N	42.237478	-70.930052	Urban	MA	Norfolk	Weymotuh	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Great Hill Park	\N	Bradley Rd	Baylee Rd	2191	\N	\N	Urban	MA	Norfolk	Weymotuh	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lane Beach	\N	Regatta Rd	River St	2189	\N	\N	Urban	MA	Norfolk	Weymotuh	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
OﾒSullivan Playground	\N	Pilgrim Rd	Wadaga Rd	2191	\N	\N	Urban	MA	Norfolk	Weymotuh	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Academy Avenue School	94 Academy Ave	\N	\N	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Beals Park	\N	Bridge St	Athens St	2191	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Birches Playground	\N	Westminster Rd	Cross St	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Brad Hawes Park	\N	Lakehurst Ave	Perry St	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cavern Rock Park	\N	\N	\N	\N	42.20231162	-70.92973175	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Chapman Middle School	1051 Commercial St	\N	\N	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cranberry Pond	\N	\N	\N	\N	42.22195968	-70.95792658	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
DCR Pool/Rink	220 Broad St	\N	\N	2188	\N	\N	Urban	MA	Norfolk	Weymouth	\N	1	\N	\N	\N	1	\N	\N	\N	\N
Gagnon Park	\N	\N	\N	\N	42.194149	-70.962828	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Gifford Park	\N	Thicket St	Merilyn St	2190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Hamilton School	400 Union St	\N	\N	2190	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Hoffman Park	\N	\N	\N	\N	42.21466966	-70.93430623	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
House Rock Park	\N	\N	\N	\N	42.214184	-70.945094	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Humphrey School Fields	\N	Lake St	Russell Whitling Way	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Johnson School	70 Pearl St	\N	\N	2191	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Julia Road Park	\N	Julia Rd	Ernest Rd	2191	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Lake Street Beach	\N	Lake St	Charles St	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Legion Field	\N	Middle St	Commercial St	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	1	\N	\N	1	\N	\N	\N	\N
Libby Fields	92 Middle St	\N	\N	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Lovell Fields	1250 Commercial St	\N	\N	2189	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Madden/Bicknell Field	\N	Standish St	Bridge St	2191	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Memorial Play Lot	\N	\N	\N	\N	42.20907	-70.939627	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Mitchell Fields	111 Middle St	\N	\N	2189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Murphy School	417 Front St	\N	\N	2188	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Nash School	1003 Front St	\N	\N	2190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Negus Fields	\N	\N	\N	\N	42.162469	-70.963456	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Newell Field	184 Idlewell Blvd	\N	\N	2189	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Ralph Talbot School	277 Ralph Talbot St	\N	\N	2190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Riley Fields	\N	\N	\N	\N	42.220505	-70.951874	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Sarah Brassill Park	\N	\N	\N	\N	42.182399	-70.92859	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
Seach School	770 Middle School	\N	\N	2188	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Skate Park	\N	\N	\N	\N	42.216016	-70.922788	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Stella Tirrel Park	74 Central St	\N	\N	2190	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Wanzer Field	\N	\N	\N	\N	42.219853	-70.953897	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Webb Park	\N	Summit St	Gibbons St	2188	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Wessagusset Beach	\N	Wessagusset Rd	Parker Rd	2191	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Wessagusset School	75 Pilgrim Rd	\N	\N	2191	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Weston Park	46 Broad St	\N	\N	2188	\N	\N	Urban	MA	Norfolk	Weymouth	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Weymouth High School	1 Wildcat Way	\N	\N	2190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Sweatt Field Complex	\N	\N	\N	\N	42.059462	-71.329009	Urban	MA	Norfolk	Wrentham	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Sweatt Park	\N	Franklin St	Bank St	2093	\N	\N	Urban	MA	Norfolk	Wrentham	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
William A Rice Complex	54 Emerald St	\N	\N	2093	\N	\N	Urban	MA	Norfolk	Wrentham	\N	\N	\N	1	1.0	1	80.0	\N	\N	\N
Abington High School	201 Gliniewicz Way	\N	\N	2351	\N	\N	Urban	MA	Plymouth	Abington	\N	\N	1	1	\N	1	71.1	\N	\N	\N
Arnold Park	\N	Wales St	Railroad St	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	1	1.0	\N	3.22	\N	\N	\N
Center School/Murphy Club Field	65 Thaxter Ave	\N	\N	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	1	1.0	\N	13.37	\N	\N	\N
Early Childhood Center	\N	Ralph Hamlin Dr	Washington St	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	1	\N	\N	12.52	\N	\N	\N
Frolio Jr High School	\N	\N	\N	\N	42.12033	-70.944439	Urban	MA	Plymouth	Abington	1.0	\N	1	1	1.0	1	13.6	\N	\N	Coordinates
Green Street Playground	\N	Green St	Clapp St	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Island Grove Park	\N	Central St	Park Rd	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	\N	\N	1	55.23	\N	\N	\N
Laidler Field	\N	Chestnut St	Richard A Fitts Dr	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	1	\N	\N	3.4	\N	\N	Coordinates
North School	\N	Birch St	Plymouth St	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	\N	1.0	\N	2.5	\N	\N	\N
Plymouth Street Playfield	\N	Plymouth St	Kimberly Cir	2351	\N	\N	Urban	MA	Plymouth	Abington	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Woodsdale School	128 Chestnut St	\N	\N	2351	\N	\N	Urban	MA	Plymouth	Abington	1.0	\N	\N	1	1.0	1	17.34	\N	\N	Coordinates
Crescent St Fields	\N	\N	\N	\N	41.981703	-70.9855	Urban	MA	Plymouth	Bridewater	1.0	\N	\N	1	\N	\N	49.9	\N	\N	Coordinates
Jenny Leonard Park	\N	\N	\N	\N	41.979729	-70.9266	Urban	MA	Plymouth	Bridewater	1.0	\N	\N	\N	\N	\N	10.4	\N	\N	Coordinates
Legion Field	175 Bedford St	\N	\N	2324	\N	\N	Urban	MA	Plymouth	Bridewater	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Mitchell Elementary School	500 South St	\N	\N	2324	\N	\N	Urban	MA	Plymouth	Bridewater	1.0	\N	\N	1	1.0	\N	22.17	\N	\N	\N
New High School	415 Center St	\N	\N	2324	\N	\N	Urban	MA	Plymouth	Bridewater	\N	\N	\N	1	\N	1	93.61	\N	\N	\N
Old High School	166 Mount Prospect St	\N	\N	2324	\N	\N	Urban	MA	Plymouth	Bridewater	\N	\N	1	1	1.0	1	21.01	\N	\N	\N
Reinbows End	76 Flagg St	\N	\N	2324	\N	\N	Urban	MA	Plymouth	Bridewater	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Scotland Field	\N	\N	\N	\N	41.969342	-71.0081	Urban	MA	Plymouth	Bridewater	1.0	\N	\N	1	1.0	1	\N	\N	\N	Coordinates
Toole Park	\N	Pleasant St	Tabway Ln	2324	\N	\N	Urban	MA	Plymouth	Bridewater	\N	\N	\N	\N	\N	\N	9.01	\N	\N	Future Park
Ashfield Playground	\N	Annella Rd	Coe Rd	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	1	\N	1.0	\N	3.0	\N	\N	\N
Asiaf Recreation Area	Belmont St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
Brockton High School grounds and Manning Pool	470 Forest Aveﾠ	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	1	1	1	\N	1	40.0	\N	\N	\N
Brookfield Playground	135 Jon Dr	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	\N	\N	21.0	\N	\N	\N
Buckley Playground	200 Clinton St	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	1	1	1.0	\N	7.0	\N	\N	\N
City Hall Park / GAR Park	45 School St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	1.4	\N	\N	\N
Clifford Avenue Playground	\N	\N	\N	\N	42.10930717	-71.02837495	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	1.0	\N	1.0	\N	\N	Coordinates
Davis SchoolﾠPlayground	380 Plain St	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	1	1	\N	\N	4.0	\N	\N	\N
Downey Playground	42 Electric Ave	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	\N	\N	4.0	\N	\N	\N
East Jr High Playground	496 Centre St	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	1	1	1.0	1	4.0	\N	\N	\N
Eldon B. Keith Field	128 West Elm St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	\N	\N	3.0	\N	\N	\N
George G. Snow Park and Cosgrove Municipal Pool	\N	Plymouth St	Centre St	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	1	\N	\N	1.0	1	22.7	\N	\N	\N
Gilmore Playground	\N	Spring Ave	Acorn St	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
Hancock Field	\N	Pleasant St	Pearl St	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	1.0	\N	1.0	\N	\N	\N
Harold D. Bent Playground	\N	Ash St	Ellsworth St	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	1	1	1.0	\N	5.9	\N	\N	\N
Hill Street Playground	\N	\N	\N	\N	42.08227294	-70.99995705	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	1.0	\N	4.0	\N	\N	Coordinates
Hillstrom Farm Park	\N	North Ave	Lynn Rd	2302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	1.0	1	34.0	\N	\N	\N
Huntington Street Playground	\N	Warren Ave	Market St	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	\N	\N	\N	0.7	\N	\N	\N
James Edgar Playground	197 Dover St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	1.0	\N	7.2	\N	\N	\N
Keith Park	1209 Montello St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	1.5	\N	\N	\N
Kennedy Playground	900 Ash St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	1.0	\N	4.0	\N	\N	\N
Korean/Vietnam Veterans Park	\N	Center St	Main St	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Massasoit Community College	\N	\N	\N	\N	42.074989	-70.986024	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	1	95.0	\N	\N	Coordinates
McKinley Park	\N	Winter St	Sheldon St	2302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
Nelson Playground	75 Clifton Ave	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	1	1	1.0	\N	3.0	\N	\N	\N
North Jr High Playground	\N	N Warren Ave	Rutland St	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	1	4.0	\N	\N	\N
O'Donnell Playground	\N	Centre St	Machester St	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	1.0	\N	4.2	\N	\N	\N
Otis Street Park	\N	Middle St	Skinner St	2302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Parmenter Playground	\N	Oakland Ave	Baxendale Terr	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	\N	1.0	1	7.9	\N	\N	\N
Perkins Park	42 North Main St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	1	\N	\N	\N	\N	0.5	\N	\N	\N
Perrault Playground	\N	Quincy St	Beaumont Ave	2302	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	1	1	\N	\N	2.0	\N	\N	\N
Plymouth Street Playground	\N	\N	\N	\N	42.082518	-71.012329	Urban	MA	Plymouth	Brockton	1.0	\N	\N	\N	\N	\N	1.7	\N	\N	Coordinates
Puffer Playground	16 Teele St	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	1.0	\N	2.0	\N	\N	\N
Raymond Playground	125 Oak St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	1	\N	\N	6.0	\N	\N	\N
Remova Parkﾠ	Claremont Ave	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
Richmond Street Playground	\N	Richmond St	Eagle Ave	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	\N	1.0	\N	1.0	\N	\N	\N
Salisbury River Plain	Pine Ave	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Timothy B. Holster Park / W Chestnut St Playground	\N	\N	\N	\N	42.055885	-71.05058	Urban	MA	Plymouth	Brockton	1.0	\N	1	\N	1.0	\N	10.3	\N	\N	Coordinates
Tukis Playground	128 Melrose St	\N	\N	2302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	1	12.9	\N	\N	\N
Walker Playground	50 May Ave	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	1	1	1.0	\N	4.0	\N	\N	\N
West Jr High Playground	271 West St	\N	\N	2301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	\N	6.0	\N	\N	\N
Winthrop Playground	\N	North Main St	Division St	2301	\N	\N	Urban	MA	Plymouth	Brockton	1.0	\N	\N	\N	\N	\N	2.0	\N	\N	\N
Winthrop Square Clock Park	\N	\N	\N	\N	42.096248	-71.019166	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Carver Community Playground	2 Meadowbrook Way	\N	\N	2330	\N	\N	Urban	MA	Plymouth	Carver	1.0	\N	\N	\N	\N	\N	1.5	\N	\N	\N
Carver High School	60 South Meadow Rd	\N	\N	2330	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	1	1	1.0	1	125.0	\N	\N	\N
Forest St Recreation Site / Shaw St Field	\N	\N	\N	\N	41.899306	-70.796006	Urban	MA	Plymouth	Carver	\N	\N	\N	1	\N	\N	3.3	\N	\N	Coordinates
Governor John Carver Elementary School	85 Main St	\N	\N	2330	\N	\N	Urban	MA	Plymouth	Carver	1.0	\N	\N	1	1.0	\N	22.0	\N	\N	\N
North Carver/Lakenham Green	\N	Plymouth Rd	Center St	2330	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	\N	0.46	\N	\N	\N
Pond St Recreation Site	\N	\N	\N	\N	41.895597	-70.756717	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	1	6.0	\N	\N	Coordinates
Purchase St Recreation Site	\N	\N	\N	\N	41.902716	-70.794155	Urban	MA	Plymouth	Carver	\N	\N	\N	1	\N	1	9.0	\N	\N	Coordinates
Savery Ave	\N	Savery Ave	Main St	\N	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	\N	8.7	\N	\N	\N
Shurtledd Park	\N	Main St	West St	\N	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	\N	6.33	\N	\N	\N
Town Hall Recreation Area / King Property	\N	\N	\N	\N	41.888469	-70.76634	Urban	MA	Plymouth	Carver	\N	\N	1	1	1.0	\N	10.0	\N	\N	Coordinates
Chandler School	93 Chandler St	\N	\N	2332	\N	\N	Urban	MA	Plymouth	Duxbury	1.0	\N	\N	1	\N	1	6.0	\N	\N	\N
Duxbury High School and Chandler Field	130 St George St	\N	\N	2332	\N	\N	Urban	MA	Plymouth	Duxbury	\N	\N	1	1	\N	1	7.0	\N	\N	\N
Duxbury Middle School	71 Alden St	\N	\N	2332	\N	\N	Urban	MA	Plymouth	Duxbury	\N	\N	\N	\N	1.0	1	4.0	\N	\N	\N
Keene St Playground	473 Keene St	\N	\N	2332	\N	\N	Urban	MA	Plymouth	Duxbury	1.0	\N	1	1	1.0	1	7.99	\N	\N	\N
Library Fields and Train Athletic Field	77 Alden St	\N	\N	2332	\N	\N	Urban	MA	Plymouth	Duxbury	1.0	\N	1	1	\N	1	6.0	\N	\N	\N
Lincoln St Field	\N	\N	\N	\N	42.067423	-70.72202	Urban	MA	Plymouth	Duxbury	\N	\N	\N	\N	\N	1	12.23	\N	\N	Coordinates
Lower Alden	75 Alden St	\N	\N	2332	\N	\N	Urban	MA	Plymouth	Duxbury	1.0	\N	\N	1	\N	1	6.0	\N	\N	\N
Percy Walker Pool and Field	178 St George St	\N	\N	2332	\N	\N	Urban	MA	Plymouth	Duxbury	\N	1	\N	\N	\N	1	\N	\N	\N	\N
Tarklin	\N	Summer St	Autumn Ave	2332	\N	\N	Urban	MA	Plymouth	Duxbury	1.0	\N	1	1	\N	\N	1.5	\N	\N	\N
Wadsworth Field	\N	Tremont St	Federal Eagle Rd	2332	\N	\N	Urban	MA	Plymouth	Duxbury	1.0	\N	1	\N	\N	1	3.31	\N	\N	\N
Halifax Central Athletic Facility and Athletic Courts	464 Plymouth St	\N	\N	2338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	1	1	1.0	1	\N	\N	\N	\N
HOPS (Halifax Open Play Space)	470 Plymouth St	\N	\N	2338	\N	\N	Urban	MA	Plymouth	Halifax	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lingan St Field	206 Lingan St	\N	\N	2338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Summit St Soccer Complex	75 Summit St	\N	\N	2338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	\N	\N	\N	1	4.0	\N	\N	\N
Vauhn Athletic Fields and Gordon Riker Wheels Park	540 Plymouth St	\N	\N	2338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Whitcomb Park / Holmes St Playground	129 Holmes St	\N	\N	2338	\N	\N	Urban	MA	Plymouth	Halifax	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Briggs Field	\N	Main St	Hanover St	2339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Cedar School Fields	265 Cedar St	\N	\N	2339	\N	\N	Urban	MA	Plymouth	Hanover	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Center School Fields	65 Silver St	\N	\N	2339	\N	\N	Urban	MA	Plymouth	Hanover	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Ceurvals Field (Myrtle)	239 Myrtle St	\N	\N	2339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Ellis Field	738 Circuit St	\N	\N	2339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Forge Pond Park	\N	\N	\N	\N	42.103938	-70.881793	Urban	MA	Plymouth	Hanover	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Gallant Field	\N	\N	\N	\N	42.13945	-70.86791	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
High School Fields	287 Cedar St	\N	\N	2339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	1	1	\N	1	\N	\N	\N	\N
Middle School Fields	45 Whiting St	\N	\N	2339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Sylvester School Fields and B Everett Hall Field	495 Hanover St	\N	\N	2339	\N	\N	Urban	MA	Plymouth	Hanover	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Bare Cove Park	\N	Beal St	Sgt William B Terry Dr	2043	\N	\N	Urban	MA	Plymouth	Hingham	\N	\N	\N	1	\N	1	484.0	\N	\N	\N
Carlson Fields	\N	\N	\N	\N	42.236553	-70.907993	Urban	MA	Plymouth	Hingman	\N	\N	\N	1	1.0	1	\N	\N	\N	Coordinates
Hersey Field	\N	Thaxter St	Foley Ct	2043	\N	\N	Urban	MA	Plymouth	Hingman	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Kress Field	301 Gardner St	\N	\N	2043	\N	\N	Urban	MA	Plymouth	Hingman	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Margett's Field	\N	\N	\N	\N	42.204751	-70.902114	Urban	MA	Plymouth	Hingman	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Plymouth River School	200 High St	\N	\N	2043	\N	\N	Urban	MA	Plymouth	Hingman	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Powers Field	\N	School St	Common St	2043	\N	\N	Urban	MA	Plymouth	Hingman	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Hampton Circle Playground	\N	Hampton Cir	Moreland Ave	2045	\N	\N	Urban	MA	Plymouth	Hull	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
L St Fields	\N	L St	Central Ave	2045	\N	\N	Urban	MA	Plymouth	Hull	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Gray's Beach Park	\N	Grays Beach Rd	Howlands Ln	2364	\N	\N	Urban	MA	Plymouth	Kingston	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
Kingston Intermediate School	65 2nd Brook St	\N	\N	2364	\N	\N	Urban	MA	Plymouth	Kingston	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Opachinski/Reed Fields	\N	\N	\N	\N	42.001306	-70.741267	Urban	MA	Plymouth	Kingston	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Reed Community House Grounds	\N	\N	\N	\N	41.996881	-70.727395	Urban	MA	Plymouth	Kingston	1.0	\N	1	1	1.0	\N	\N	\N	\N	Coordinates
Clear Pond Park	\N	\N	\N	\N	41.87186	-70.944935	Urban	MA	Plymouth	Lakeville	1.0	\N	1	\N	1.0	\N	\N	\N	\N	Coordinates
John Paun Park	52 Vaughan St	\N	\N	2347	\N	\N	Urban	MA	Plymouth	Lakeville	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ted Williams Camp	28 Precinct St	\N	\N	2347	\N	\N	Urban	MA	Plymouth	Lakeville	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
GREEN HARBOR BEACH	\N	Beach St	Bay Ave	2050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
MARSHFIELD HILLS PLAYGROUND	\N	Old Main St	the Fire station	2050	\N	\N	Urban	MA	Plymouth	Marshfield	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
PETER-IGO PARK	\N	Marshall Ave	Dyke Rd	2050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	1	\N	1.0	\N	\N	\N	\N	\N
REXHAME BEACH	\N	Standish St	Parker St	2050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	\N	\N	1.0	\N	\N	\N	\N	Nearest
STREET HOCKEY / BASKETBALL COMPLEX	\N	Forest St	Furnace St	2050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
TOWER AVENUE PARK	\N	Colonial Rd	Tower Ave	2050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	\N	1	1.0	\N	\N	\N	\N	\N
Field of Dreams	50 E Grove st	\N	\N	2346	\N	\N	Urban	MA	Plymouth	Middleborough	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Oliver Mill Park	\N	Nemasket St	Plymouth St	2346	\N	\N	Urban	MA	Plymouth	Middleborough	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Peirce Playground	26 Jackson St	\N	\N	2346	\N	\N	Urban	MA	Plymouth	Middleborough	1.0	1	1	1	1.0	1	\N	\N	\N	\N
West Side Playground	\N	West End Ave	Hathaway St	2346	\N	\N	Urban	MA	Plymouth	Middleborough	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Centennial Park	\N	\N	\N	\N	42.14446	-70.801217	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	1.0	1	18.0	\N	\N	Coordinates
Cole Elementary School	81 High St	\N	\N	2061	\N	\N	Urban	MA	Plymouth	Norwell	1.0	\N	\N	1	\N	1	15.4	\N	\N	\N
Ed White Recreation Area	\N	\N	\N	\N	42.142381	-70.799686	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	7.69	\N	\N	Coordinates
Gaffield Park	\N	River St	Forest St	2061	\N	\N	Urban	MA	Plymouth	Norwell	1.0	\N	\N	\N	\N	\N	8.0	\N	\N	\N
High School & Library	18 South St	\N	\N	2061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	1	1	\N	1	94.53	\N	\N	\N
Jacobs Farm Homestead	\N	Main St	Jacobs Ln	2061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	15.0	\N	\N	\N
Middle School	334 Main St	\N	\N	2061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	1	13.0	\N	\N	\N
Osborne Fields	\N	\N	\N	\N	42.156946	-70.8219	Urban	MA	Plymouth	Norwell	\N	\N	\N	1	\N	1	5.73	\N	\N	Coordinates
Reynolds Playground	\N	Prouty Ave	Douglas Ave	2061	\N	\N	Urban	MA	Plymouth	Norwell	1.0	\N	\N	\N	1.0	\N	0.67	\N	\N	\N
Sparrel School	322 Main St	\N	\N	2061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	32.0	\N	\N	\N
Stetson Meadws Recreation Are	\N	\N	\N	\N	42.125605	-70.784687	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	20.0	\N	\N	Coordinates
Town Hall Field	345 Main St	\N	\N	2061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	1	15.9	\N	\N	\N
Wildcat Recreation Area	\N	\N	\N	\N	42.144012	-70.804224	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	20.0	\N	\N	Coordinates
Woodworth Park	\N	\N	\N	\N	42.156902	-70.845315	Urban	MA	Plymouth	Norwell	\N	\N	\N	1	\N	\N	13.0	\N	\N	Coordinates
Birch St Park	\N	Birch St	Redwood Cir	2359	\N	\N	Urban	MA	Plymouth	Pembroke	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Mattakeesett Street Ball Fields	455 Mattakeesett St	\N	\N	2359	\N	\N	Urban	MA	Plymouth	Pembroke	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Thomas Redding Memorial Park	\N	\N	\N	\N	42.07594	-70.800517	Urban	MA	Plymouth	Pembroke	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Allerton Street Playground	\N	Allerton	Sever Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Avery Memorial Playground	43 Nook Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Bates Park	\N	Allerton	Vernon Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Billington Street Park	20 Billington St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Brewster Gardens	\N	Water St	Leyden St	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Briggs Playground	838 State Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	1	1	\N	\N	\N	\N	\N	\N
Brook Road Playground	13 Brook Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Burton Park	25 Whiting St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cleft Rock Park	290 State Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	8.7	\N	\N	\N
Depot Park	9 North Park Ave	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Elmer Raymond Park	1138 Long Pond Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Emerson Field	48 White Horse Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Forges Field Recreation Area	83 Jordan Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Fresh Pond Park	220 Bartlett Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Holmes Playground	\N	Summer	Newfield Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Huntley Playground	97 Lake Dr	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Jenney Pond Park	17 Spring Lane	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mabbett Park	115 Water St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Manomet Recreation Area	1197 State Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Morton Park	\N	Morton Park Rd	Summer St	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Nelson Memorial Park	\N	Corner of Nelson	Water Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Siever Field	\N	Standish Ave	Liberty St	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Sirrico Memorial Playground	71 South St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Stephens Field	132R Sandwich St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	1	1	1.0	\N	7.0	\N	\N	\N
Training Green	65 Sandwich St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Uncle Thomas Jackson Park	\N	Newfield St	Summer St	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	1.0	\N	\N	\N
Veteranﾒs Memorial Field	219 Standish Ave	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	1	\N	1.0	1	2.0	\N	\N	\N
West Plymouth Recreation Area	154 South Meadow Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Dennett Elementary School	80 Crescent St	\N	\N	2367	\N	\N	Urban	MA	Plymouth	Plympton	1.0	\N	\N	1	1.0	1	30.0	\N	\N	\N
Harry Jason Junior Memorial Park	\N	\N	\N	\N	41.967149	-70.8465	Urban	MA	Plymouth	Plympton	\N	\N	\N	\N	\N	\N	53.2	\N	\N	Future Park / Coordinates
Holt Memorial Field	\N	Palmer St	Main St	2367	\N	\N	Urban	MA	Plymouth	Plympton	\N	\N	\N	1	\N	1	8.0	\N	\N	\N
Parsonage Road Playground	\N	\N	\N	\N	41.951462	-70.815	Urban	MA	Plymouth	Plympton	1.0	\N	\N	\N	1.0	\N	1.3	\N	\N	Coordinates
Winnetuxet Swimming Area	\N	Route 58	Winnetuxet Rd	2367	\N	\N	Urban	MA	Plymouth	Plympton	\N	\N	\N	\N	\N	\N	11.5	\N	\N	\N
Hartsuff Park	\N	\N	\N	\N	42.140265	-70.903895	Urban	MA	Plymouth	Rockland	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Jefferson School Field	34 James St	\N	\N	2370	\N	\N	Urban	MA	Plymouth	Rockland	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Memorial Park School	1 Col Brian Duffy Way	\N	\N	2370	\N	\N	Urban	MA	Plymouth	Rockland	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Spring Street	\N	Spring St	Magnolia Dr	2370	\N	\N	Urban	MA	Plymouth	Rockland	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Central Field and Town Common	\N	Central Park Dr	Branch St	2066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	1	\N	1	16.67	\N	\N	\N
Driftway Park	\N	\N	\N	\N	42.175685	-70.7	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	18.0	\N	\N	Coordinates
Ellis Estate	\N	\N	\N	\N	42.212682	-70.8	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	120.0	\N	\N	Coordinates
Greenbush Ballfield	\N	\N	\N	\N	42.17877	-70.8	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Hatherly Playground	\N	\N	\N	\N	42.214804	-70.8	Urban	MA	Plymouth	Scituate	1.0	\N	\N	1	\N	\N	2.41	\N	\N	Coordinates
Jericho Boat Launch	\N	Jericho Rd	Barker Rd	2066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	2.59	\N	\N	\N
Scituate High School Fields and PJ Steverman Park	606 Chief Justice Cushing Hwy	\N	\N	2066	\N	\N	Urban	MA	Plymouth	Scituate	1.0	\N	1	\N	1.0	1	6.0	\N	\N	\N
Scituate Lighthouse	100 Lighthouse Rd	\N	\N	2066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	2.73	\N	\N	\N
Teak Sherman Park	\N	Chief Justice Cushing Hwy	1st Parish Rd	2066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	7.24	\N	\N	\N
Friendship Park	\N	\N	\N	\N	42.020422	-71.012106	Urban	MA	Plymouth	West Bridgewater	1.0	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Howard Elementary School	70 Howard St	\N	\N	2379	\N	\N	Urban	MA	Plymouth	West Bridgewater	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Rose L. MacDonald Elementary School	1 Stepping Stone Dr	\N	\N	2379	\N	\N	Urban	MA	Plymouth	West Bridgewater	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Spring Street School	2 Spring St	\N	\N	2379	\N	\N	Urban	MA	Plymouth	West Bridgewater	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Town Hall Area Ballfield	\N	N Main St	Howard St	2379	\N	\N	Urban	MA	Plymouth	West Bridgewater	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
War Memorial Park	\N	River St	Arch St	2379	\N	\N	Urban	MA	Plymouth	West Bridgewater	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
West Bridgewater Middle-Senior High School	155 West Center St	\N	\N	2379	\N	\N	Urban	MA	Plymouth	West Bridgewater	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Camp Alice Carleton	\N	\N	\N	2382	\N	\N	Urban	MA	Plymouth	Whitman	\N	\N	\N	\N	\N	\N	17.0	\N	\N	Couldnﾒt Find
Hardings Pond	\N	Pine St	Beal Ave	2382	\N	\N	Urban	MA	Plymouth	Whitman	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hobarts Meadows Area	\N	\N	\N	\N	42.093669	-70.932283	Urban	MA	Plymouth	Whitman	\N	\N	\N	\N	\N	\N	106.0	\N	\N	Coordinates
Memorial Field	60 Essex St	\N	\N	2382	\N	\N	Urban	MA	Plymouth	Whitman	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
Whitman Town Park	\N	Hayden Ave	Park Ave	2382	\N	\N	Urban	MA	Plymouth	Whitman	1.0	1	\N	1	1.0	\N	11.0	\N	\N	\N
Adams Park	\N	Washington St	Cummins Hwy	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.750414	\N	\N	\N
Adams/King Playground	470 Adams St	\N	\N	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	1	0.674938	\N	\N	\N
Agassiz Road	\N	Agassiz Rd	Fenway	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.6	\N	\N	\N
Algonquin Square	\N	Bradlee St	Washington St	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04	\N	\N	\N
Allen Park	\N	Adams St	Church St	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.345595	\N	\N	\N
Almont Park/Hunt Playground	\N	Almont St	Orlando St	2126	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	1	17.2	\N	\N	\N
Alvah Kittredge Park	\N	Linwood St	Highland St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.115951	\N	\N	\N
Amatucci Playground	\N	Hyde Park Ave	Glenwood Ave	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.448679	\N	\N	\N
American Legion Highway	\N	American Legion Hwy	Walk Hill St	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.778726	\N	\N	\N
American Legion Playground	\N	Glendon St	Condor St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	3.383881	\N	\N	\N
Angell Memorial Square	\N	Congress St	Pearl St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.176631	\N	\N	\N
Aquarium Harborwalk II	E India Row	\N	\N	2110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Arborway	\N	Centre St	Arborway	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	13.6	\N	\N	\N
Arborway Overpass Path	\N	Arborway	Forest Hills St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.163758	\N	\N	\N
Arcola Park Garden	\N	Day St	Arcola St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.072327	\N	\N	\N
Armenian Heritage Park	\N	Atlantic Ave	Cross St	2110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.25	\N	\N	\N
Arnold Arboretum I	125 Arborway	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	158.4686	\N	\N	\N
Arnold Arboretum II	\N	Bussey St	South St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	65.69	\N	\N	\N
Ashburton Place Plaza	1 Ashburton Pl	\N	\N	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.82	\N	\N	\N
Atlantic Avenue Plantings	\N	Atlantic Ave	Kneeland St	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.58	\N	\N	\N
Ausonia Plaza	\N	Richmond St	Commercial St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.19624	\N	\N	\N
Austin & Main Plaza	\N	Main St	Austin St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.12	\N	\N	\N
Avenue Louis Pasteur	\N	Avenue Louis Pasteur	Blackfan St	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.49	\N	\N	\N
Back Bay Fens with Evans Way Park And Forsyth Park	\N	Park Dr	Fenway	2115	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	70.1	\N	\N	\N
Barry Playground	41 Medford St	\N	\N	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	3.32	\N	\N	\N
Bay Village Neighborhood Park	\N	Warrenton St	Charles St S	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.079655	\N	\N	\N
Beauford Play Area	127 Howard Ave	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.239959	\N	\N	\N
Beecher Park	105 Paul Gore St	\N	\N	2130	\N	\N	Dog	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.174243	1	\N	\N
Beethoven School Play Area	5125 Washington St	\N	\N	2132	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.52	\N	\N	\N
Belvidere/Dalton Plaza	\N	Belvidere St	Dalton St	2199	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.147171	\N	\N	\N
Beverly Street Park	\N	Beverly St	Causeway St	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.54	\N	\N	\N
Billings Field	369 LaGrange St	\N	\N	2132	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	10.77507	\N	\N	\N
Blackstone Square	380 Shawmut Ave	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.444436	\N	\N	\N
Blue Hill Avenue	\N	Blue Hill Ave	Vesta Rd	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.527288	\N	\N	\N
Bonito Square	\N	Waldemar Ave	Walley St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.057547	\N	\N	\N
Boston Common	\N	Tremont St	West St	2108	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	\N	1	46.52265	\N	\N	\N
Boston Design Center Plaza	\N	6th St	Drydock Ave	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.614671	\N	\N	\N
Bowdoin Mall	\N	New Chardon St	Bulfinch Pl	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Boyden Park	\N	Commonwealth Ave	St Thomas More Rd	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.481791	\N	\N	\N
Boylston Street	\N	Boylston St	Charlesgate	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.02	\N	\N	\N
BPL Courtyard	230 Dartmouth St	\N	\N	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.19	\N	\N	\N
Braddock Park	\N	Braddock Park	Public Alley 539	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09218	\N	\N	\N
Bradford Street Play Area	18 Bradford St	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04	\N	\N	\N
Bremen Street Park	\N	Bremen St	Brooks St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	17.8	\N	\N	\N
Brewer-Burroughs Playground	4 Brewer St	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.185653	\N	\N	\N
Brighton Common / Brighton Square	30 Chestnut Hill Ave	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.510232	\N	\N	\N
Brighton HS Hillside	35 Warren St	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.43	\N	\N	\N
Brighton Police Station Campus	301 Washington St	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.45	\N	\N	\N
Broad Street Park	\N	Broad St	Central St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.071994	\N	\N	\N
Bromley Heath Play Area	Horan Way	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.821203	\N	\N	\N
Brooke Courthouse Plaza	24 New Chardon St	\N	\N	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24	\N	\N	\N
Brophy Park	\N	Webster St	Seaver St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.773831	\N	\N	\N
Buckley Playground	204 W 3rd St	\N	\N	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.655619	\N	\N	\N
Bunker Hill CC Athletic Fields	250 New Rutherford Ave	\N	\N	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1.0	1	21.06154	\N	\N	\N
Byrne Playground	\N	Elm St	Everett St	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	\N	1	1.263026	\N	\N	\N
Caldwell Street Play Area	21 Caldwell St	\N	\N	2129	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.112858	\N	\N	\N
Camp Meigs	\N	Hyde Park Ave	Stanboro St	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	2.865839	\N	\N	\N
CANA Portal	\N	Park St	Warren St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.15	\N	\N	\N
Cardinal Cushing Park I	1 Bowdoin St	\N	\N	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.42	\N	\N	\N
Carroll Pond Playground	15 Carrolton Rd	\N	\N	2132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.471694	\N	\N	\N
Carter Playground	\N	Columbus Ave	Camden St	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	4.91455	\N	\N	\N
Carter School Grounds	\N	Camden St	Watson St	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.49	\N	\N	\N
Cassidy Playground	381 Chestnut Hill Ave	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	\N	9.334186	\N	\N	\N
Castle Island / Strandway / Fort Independence	2080 William J Day Blvd	\N	\N	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	47.69947	\N	\N	\N
Castle Square Parks	\N	E Berkeley St	Village Ct	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	1.19	\N	\N	\N
Cedar Square Park	20 Cedar St	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.623139	\N	\N	\N
Centervale Park	\N	Bourneside St	Centervale Park	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.195955	\N	\N	\N
Central Square Park	\N	Saratoga St	Border St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.905015	\N	\N	\N
Centre Street	\N	Centre St	Allandale St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.0	\N	\N	\N
Ceylon Park	\N	Magnolia St	Lawrence Ave	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	1	4.66	\N	\N	\N
Chandler Pond / Gallagher Memorial Park	44 Lake Shore Rd	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	18.90803	\N	\N	\N
Chandler/Tremont Plaza	\N	Tremont St	Arlington St	2116	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.23	\N	\N	\N
Charlesgate I	\N	Commonwealth Ave	Charlesgate W	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.52	\N	\N	\N
Charlesgate II	\N	Charlesgate E	Ipswich St	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.49	\N	\N	\N
Charlestown HS Athletic Fields	\N	Medford St	Polk St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	10.42	\N	\N	\N
Charlestown Naval Shipyard Park	\N	1st Ave	Terry Ring	2129	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	10.21947	\N	\N	\N
Charlestown Parcel 6	\N	Harvard St	City Square	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.12	\N	\N	\N
Charlestown Veteran's Memorial Park	\N	Main St	City Square	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04	\N	\N	\N
Charter Street Park	\N	Charter St	Greenough Ln	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.23534	\N	\N	\N
Chester Park	555 Massachussetts Ave	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.89013	\N	\N	\N
Chestnut Street	\N	Perkins St	Chestnut St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.039018	\N	\N	\N
Childe Hassam Park	\N	Chandler St	Columbus Ave	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.060163	\N	\N	\N
Children's Park	85 Intervale St	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.19	\N	\N	\N
Children's Wharf Park	64 Sleeper St	\N	\N	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.94	\N	\N	\N
China Gate Plaza	\N	Beach St	Hudson St	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14	\N	\N	\N
Chinatown Park I	\N	Surface Rd	Essex St	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.61	\N	\N	\N
Christopher Columbus Park / Waterfront Park	110 Atlantic Ave	\N	\N	2110	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	4.744384	\N	\N	\N
Christopher Lee Playground	\N	M St	E 1st St	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	5.437989	\N	\N	\N
City Hall Plaza	\N	Cambridge St	Court St	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.931465	\N	\N	\N
City Square	\N	Chelsea St	Rutherford Ave	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.21	\N	\N	\N
Clarendon Street Totlot	\N	Clarendon St	Commonwealth Ave	2116	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.332354	\N	\N	\N
Clifford Playground	\N	Norfolk Ave	Proctor St	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	7.656423	\N	\N	\N
Codman Square	\N	Talbot Ave	Centre St	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.339182	\N	\N	\N
Colella Playground	\N	Neponset Valley Pkwy	Readville St	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	\N	\N	0.688147	\N	\N	\N
Columbia Road	\N	Columbia Rd	Boston St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.58	\N	\N	\N
Columbia Road Mall	\N	Columbia Rd	Washington St	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.126101	\N	\N	\N
Columbia Road Park	48 Buttonwood St	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.12	\N	\N	\N
Columbia Road Totlot	370 Columbia Rd	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.22	\N	\N	\N
Columbia Road/Day Boulevard	\N	Columbia Rd	William J Day Blvd	2127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	17.18859	\N	\N	\N
Commonwealth Avenue Mall I	\N	Commonwealth Ave	Faifield St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	10.87	\N	\N	\N
Commonwealth Avenue Mall II	\N	Commonwealth Ave	Kenmore St	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.98	\N	\N	\N
Commonwealth Avenue Outbound	\N	Commonwealth Ave	Fidelis Way	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.527804	\N	\N	\N
Commonwealth Plaza	831 Commonwealth Ave	\N	\N	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.156734	\N	\N	\N
Concord Square	\N	Concord Square	Concord Pl	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.149551	\N	\N	\N
Conley School Play Yard	\N	Poplar St	Cornell St	2131	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	1.42	\N	\N	\N
Connell Fields/Hickey Courts	\N	Cleveland St	Brainard St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	4.148374	\N	\N	\N
Constitution Beach	\N	Coleridge St	Rice St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	25.39673	\N	\N	\N
Cook Street Play Area	\N	Hill St	Cook St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.098123	\N	\N	\N
Copley Place Plaza	\N	Stuart St	Dartmouth St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.289326	\N	\N	\N
Copley Square Park	\N	St James Ave	Dartmouth St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.854288	\N	\N	\N
Coppens Square	\N	Bowdoin St	Adams St	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.35702	\N	\N	\N
Copp's Hill Terrace	536 Commericial St	\N	\N	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.611988	\N	\N	\N
Corey Street Court	\N	Corey St	Samuel Morse Way	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.175521	\N	\N	\N
Crawford Street Playground	\N	Abbotsford St	Walnut Ave	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	\N	1.721944	\N	\N	\N
Cronin Playground / Rev. Loesch Family Park	\N	Wainwright St	Brent St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	2.252596	\N	\N	\N
Cuneo Park	\N	Saratoga St	Byron St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.230672	\N	\N	\N
Cunningham Park	\N	Murdock St	Sparhawk St	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.175855	\N	\N	\N
Cutillo Park	\N	Salem St	Morton St	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.284919	\N	\N	\N
Daniel H. Solari Square / Park	\N	Bremen St	Neptune Rd	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.005	\N	\N	\N
Dartmouth Street Mall	\N	Beacon St	Dartmouth St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.998565	\N	\N	\N
Decatur & Meridian Streets Park	\N	London St	Decatur St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.2	\N	\N	\N
Deer Street Park	\N	Deer St	Roach St	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.244781	\N	\N	\N
DeFilippo Playground	135 Prince St	\N	\N	2113	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	1	1.115556	\N	\N	\N
Delano Park	\N	Delano Park	Poplar St	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.206372	\N	\N	\N
Dennis Street Park	138 Moreland St	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.416088	\N	\N	\N
Denton Square	\N	Magnolia St	Wayland St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07844	\N	\N	\N
Dever School Schoolyard	325 Mt Vernon St	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	1.13	\N	\N	\N
Dewey Square Parks	\N	Pruchase St	Pearl St	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.64	\N	\N	\N
Dewey Square Plaza	\N	Atlantic Ave	Summer St	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.58	\N	\N	\N
Dickerman School Yard	206 Magnolia St	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.55	\N	\N	\N
Doherty Playground	\N	Bunker Hill St	St Martin St	2129	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	3.021756	\N	\N	\N
Doherty/Gibson Playground	\N	Park St	Bourneside St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	5.726273	\N	\N	\N
Dooley Playground	\N	Reservation Rd	Brainard St	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.444957	\N	\N	\N
Dorchester Park	1003 Adams St	\N	\N	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	\N	\N	27.29735	\N	\N	\N
Doucette Square	\N	Redfield St	Water St	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.135148	\N	\N	\N
Downer Avenue Playground	43 Downer Ave	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.808898	\N	\N	\N
Doyle Playground	\N	River St	Rosa St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.944866	\N	\N	\N
Draper Playground	68 Stimpson St	\N	\N	2132	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	5.791218	\N	\N	\N
Dry Dock Plaza	\N	Tide St	Northern Ave	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24	\N	\N	\N
Dudley Town Common	\N	Dudley St	Hampden St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.620041	\N	\N	\N
Duffie Square	\N	Clement Ave	Stratford St	2132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.060401	\N	\N	\N
East Boston Greenway	\N	Bremen St	Marginal St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.610964	\N	\N	\N
East Boston Memorial Park	\N	Porter St	Orleans St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	\N	1	19.86	\N	\N	\N
East Boston Piers Park	\N	Marginal St	Cottage St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	6.79	\N	\N	\N
Eastport Park	\N	Seaport Blvd	D St	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.15	\N	\N	\N
Edgerly Road Playground	6 Edgerly Rd	\N	\N	2115	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.108116	\N	\N	\N
Edna V. Bynoe Park / Orchard Park	\N	Dubois St	Adams St	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	2.67	\N	\N	\N
Edward Everett Square	\N	Columbia Rd	E Cottage St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09	\N	\N	\N
Edwards Playground / McCarthy-Eden Playground	10 Eden St	\N	\N	2129	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	1.34	\N	\N	\N
Egleston Square	\N	Washington St	Atherton St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.01	\N	\N	\N
ELC Playlot	89 Savin St	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.45	\N	\N	\N
Elliot Norton Park I	277 Tremont St	\N	\N	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.93	\N	\N	\N
Ellis School Play Yard	\N	Crawford St	Waumbeck St	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.96	\N	\N	\N
Elm Hill Park	\N	Warren St	Elm Hill Park	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.117909	\N	\N	\N
Elmhurst Street Park	27 Elmhurst St	\N	\N	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.23484	\N	\N	\N
Endicott Triangle	\N	Stillman St	Cross St	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.35	\N	\N	\N
English H.S. Athletic Fields	144 McBride St	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1.0	1	7.633206	\N	\N	\N
Erie/Ellington Playground	\N	Ellington St	Erie St	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.374384	\N	\N	\N
Erie/Wolcott Streets Park	\N	Erie St	Wolcott St	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.25	\N	\N	\N
Ernst Chery Jr. Playground	72 Orlando St	\N	\N	2126	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.25	\N	\N	\N
Essex Square	\N	Essex St	Lyndeboro St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03	\N	\N	\N
Fallon Field	\N	South St	Walworth St	2131	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	7.511451	\N	\N	\N
Faneuil Square	\N	North St	Congress St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.82	\N	\N	\N
Federal Reserve Bank Harborwalk	\N	Summer St	Dorchester Ave	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.08	\N	\N	\N
Fenelon Playground	\N	Fenelon St	Merrill St	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.19	\N	\N	\N
Fern Square	\N	Franklin St	Fern St	2134	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.040543	\N	\N	\N
Festa Field	\N	Horace St	Neptune Cir	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	\N	0.994451	\N	\N	\N
Flaherty Park	\N	W 3rd St	B St	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.252222	\N	\N	\N
Flaherty Playground	\N	Bolton St	B St	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	1.310782	\N	\N	\N
Forbes Street Playground	68 Forbes St	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.09	\N	\N	\N
Forest Hills Greenspace	\N	Ukraine Way	Hyde Park Ave	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.47	\N	\N	\N
Forest Hills Rotary	\N	Morton St	Forest Hills St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.690822	\N	\N	\N
Forest Hills Station Mall Park	3699 Washington St	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.33	\N	\N	\N
Franklin Field BHA Green	\N	Westview Way	Ames St	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.7	\N	\N	\N
Franklin Field BHA Playground	\N	Stratton St	Lucerne St	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.39	\N	\N	\N
Franklin Hill BHA Court	\N	Fermony Heights Ave	Shandon Rd	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.309761	\N	\N	\N
Franklin Hill Green	\N	Franklin Hill Ave	Shandon Rd	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.502232	\N	\N	\N
Franklin Park	143 Seaver St	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	392.58	\N	\N	\N
Franklin Square	\N	St George St	E Newton St	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.482805	\N	\N	\N
Frederick S Wilson Square	\N	Dunboy St	Perthshire Rd	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.058175	\N	\N	\N
Fredericks Middle School Playground	270 Columbia Rd	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	5.13	\N	\N	\N
Gallivan/Hallet Circle	\N	Gallivan Blvd	Hallet St	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.47799	\N	\N	\N
Galvin Green	\N	New Rutherford Ave	Miller's River Littoral Way	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.13	\N	\N	\N
Garvey Playground	\N	Neposet Ave	Blackwell St	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	5.27312	\N	\N	\N
Gateway Park	\N	Hudson St	Beach St	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07	\N	\N	\N
Gertrude Howes Playground	\N	Moreland St	Fairland St	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	1.89	\N	\N	\N
Gibbons Playground	\N	Sewall St	Delle Ave	2120	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.11	\N	\N	\N
Golden Stairs Terrace Park	Ruth St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24	\N	\N	\N
Grove Hall Plaza	463 Blue Hill Ave	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09251	\N	\N	\N
Gustav Emmel Square	\N	Robert St	S Fairview St	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.02	\N	\N	\N
Hanlon Square	\N	Francis St	Huntington Ave	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04	\N	\N	\N
Hannon Playground	\N	Dudley St	Howard St	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	1.972575	\N	\N	\N
Harambee Park	120 Westview St	\N	\N	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	45.5578	\N	\N	\N
Hardiman Playground	\N	Adair Rd	Faneuil St	2135	\N	\N	Dog	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	1.473029	1	\N	\N
Harriet Tubman Square	\N	Warren Ave	Columbus Square	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14	\N	\N	\N
Harry Ellis Dickson Park	\N	Edgerly Rd	Westland Ave	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.083517	\N	\N	\N
Hawkins-New Sudbury Mall	42 New Sudbury St	\N	\N	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.17	\N	\N	\N
Hayes Park	\N	W Canton St	Warren Ave	2116	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.28368	\N	\N	\N
Hayes Square	\N	Bunker Hill St	Vine St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.174705	\N	\N	\N
Healy Playground	\N	Florence St	Firth Rd	2131	\N	\N	Urban	MA	Suffolk	Boston	1.0	1	\N	1	1.0	\N	9.539126	\N	\N	\N
Heath Square	\N	Wensley St	Heath St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.072519	\N	\N	\N
Hemenway Playground	\N	Adams St	Lonsdale St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	4.39521	\N	\N	\N
Hennigan Schoolyard	200 Heath St	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	1.86	\N	\N	\N
Herbert J Wolf Square	\N	Harold St	Abbotsford St	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.02	\N	\N	\N
Higginson Schoolyard	\N	Walnut Ave	Harrishof St	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.346191	\N	\N	\N
Highland Park	\N	Beech Glen St	Fort Ave	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.632533	\N	\N	\N
Hiscock Park	\N	W Newton St	Columbus Ave	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.10573	\N	\N	\N
Hobart Park	\N	Ranelegh Rd	Hobart St	2135	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.808847	\N	\N	\N
Holborn Street Playlot	\N	Holborn St	Glenburne St	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.1	\N	\N	\N
Hooker-Sorrento Street Playground	120 Hooker St	\N	\N	2134	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	1.005378	\N	\N	\N
Horace C Woodworth Square	\N	Beacon St	Vose Ave	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03	\N	\N	\N
Horatio Harris Park	\N	Walnut Ave	Townsend St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.521897	\N	\N	\N
Huntington-Hemenway Mall	\N	Hemenway St	Forsythe Way	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.33	\N	\N	\N
Hynes Playground	480 Veterans of Foreign Wars Pkwy	\N	\N	2467	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	6.363894	\N	\N	\N
Iacono/Readville Playground	\N	Readville St	Fleet St	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	4.914023	\N	\N	\N
Jackson Square	\N	Chestnut Hill Ave	Winship St	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.120313	\N	\N	\N
Jamaica Pond Park	507 Jamaica Way	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	97.74	\N	\N	\N
Jamaicaway	\N	Jamaicaway	Perkins St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	4.721091	\N	\N	\N
Jeep Jones Park	\N	Malcolm X Blvd	King St	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	1.82	\N	\N	\N
Jefferson Playground	\N	Grotto Glen Rd	Day St	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	3.295883	\N	\N	\N
Jeremiah Hurley Memorial Park / Wolcott Square	\N	Hyde Park Ave	Wolcott Square	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07	\N	\N	\N
Joe Moakley Park / Columbus Park	\N	Columbia Rd	Babe Ruth Park Dr	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	58.77243	\N	\N	\N
John Eliot Square	\N	Dudley St	Highland St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.074409	\N	\N	\N
John Harvard Mall	\N	Main St	City Square	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.829771	\N	\N	\N
Johnson Park	\N	Green St	Lamartine St	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	2.600858	\N	\N	\N
Joslin Park	\N	Pilgrim Rd	Joslin Pl	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.304009	\N	\N	\N
Joyce Playground	80 Union St	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	1.312551	\N	\N	\N
Justice Gourdin Park / Peace Park	\N	Washington St	Dudley St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.54	\N	\N	\N
Kennedy Playground / Charles Playground	\N	Edgewater Dr	Tesla St	2126	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.260029	\N	\N	\N
Kevin Fitzgerald Park / Puddingstone Park	\N	St Alphonsus St	Alleghany St	2120	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.58	\N	\N	\N
King School Park	122 Intervale St	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1.0	\N	0.82	\N	\N	\N
King Street Play Area	\N	King St	Roxbury St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.130467	\N	\N	\N
Kittredge-Linwood Parcel	2 Alvah Kittredge Sq	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.16388	\N	\N	\N
Lambert Avenue Playground	\N	Lambert Ave	Millmont St	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.66	\N	\N	\N
Langone Park	529 Commercial St	\N	\N	2109	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	\N	1	2.344908	\N	\N	\N
Laurel Street Green	\N	Laurel St	Humboldt Ave	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.136562	\N	\N	\N
Laviscount Park	\N	Humboldt Ave	Townsend St	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.64	\N	\N	\N
Leather District Park	\N	Essex St	South St	2110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.42	\N	\N	\N
Leo M. Birmingham Parkway	111 Leo M Birmingham Pkwy	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	6.981152	\N	\N	\N
Lewis Mall	\N	Lewis St	Marginal St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.271205	\N	\N	\N
Lewis Mall Harborpark	Lewis St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.25	\N	\N	\N
Liberty Square	\N	Water St	Kilby St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.02935	\N	\N	\N
Lincoln Square	\N	Columbus Ave	Eliot St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.054864	\N	\N	\N
Lincoln Square	\N	M St	E 4th St	2127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.202875	\N	\N	\N
Lincoln Street Green	\N	Surface Rd	Lincoln St	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.18	\N	\N	\N
Linwood Park	\N	Centre St	Linwood St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.073839	\N	\N	\N
Little Mystic Access Area	251 Terminal St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.07	\N	\N	\N
Little Scobie Playground	\N	Copeland St	Burton Ave	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.794356	\N	\N	\N
Lombardi Memorial Park	\N	London St	Maverick St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.53	\N	\N	\N
London Street Park	89 London St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14	\N	\N	\N
Long Wharf Harborwalk and Plaza	\N	State St	Old Atlantic Ave	2110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.77	\N	\N	\N
LoPresti Park	\N	Summer St	New St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	1	3.369128	\N	\N	\N
Lt Robert M Foley Square	\N	Greenwood Ave	Metropolitan Ave	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14	\N	\N	\N
Lucy Stone Schoolyard	\N	Washington St	Park St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.783457	\N	\N	\N
Madison Park H.S. Athletic Fields	\N	Ruggles St	Cabot St	2120	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1.0	1	9.605648	\N	\N	\N
Mahoney Square / Hyde Square	\N	Day St	Centre St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.060215	\N	\N	\N
Malcolm X Park / Washington Park	\N	Martin Luther King Blvd	Walnut Ave	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	14.05	\N	\N	\N
Maple-Sonoma Streets Community Park	84 Maple St	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.26	\N	\N	\N
Marcella Playground	260 Highland St	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	5.089804	\N	\N	\N
Marine Industrial Park	\N	Summer St	Drydock Ave	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.25	\N	\N	\N
Marine Park	\N	Broadway	Farragut Rd	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	17.19998	\N	\N	\N
Marketplace Plaza I	S Market St	\N	\N	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.29	\N	\N	\N
Martin Luther King Boulevard	\N	Martin Luther King Blvd	Humboldt Ave	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.442225	\N	\N	\N
Martin/Hilltop Playground	101 Myrtlebank Ave	\N	\N	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	1.31194	\N	\N	\N
Martini Playground	971 Truman Pkwy	\N	\N	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1.0	\N	5.779952	\N	\N	\N
Mason Schoolyard	150 Norfolk Ave	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.380477	\N	\N	\N
Mass Art Campus	\N	Longwood Ave	Huntington Ave	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.313068	\N	\N	\N
Mass Art Park	\N	Huntington Ave	Evans Way	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.152338	\N	\N	\N
Massachusetts Avenue Malls	\N	Massachusetts Ave	Shawmut Ave	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.434929	\N	\N	\N
Massport Harborwalk	Tomahawk Dr	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.529859	\N	\N	\N
Mattahunt Schoolyard	100 Hebron St	\N	\N	2126	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.0	\N	\N	\N
McConnell Park	\N	Denny St	Playstead Rd	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	\N	\N	6.201276	\N	\N	\N
McCormack School Yard	325 Mt Vernon St	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.0	\N	\N	\N
McGann Park	\N	West St	Myopia Rd	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.88	\N	\N	\N
McKinney Playground	74 Faneuil St	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	5.891381	\N	\N	\N
McLaughlin Playground	239 Parker Hill Ave	\N	\N	2120	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	11.72748	\N	\N	\N
McLean Playground	\N	Saratoga St	Moore St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.429665	\N	\N	\N
McMorrow Playground	\N	Victory Rd 	Houghston St	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	5.231867	\N	\N	\N
Meany Park	\N	E Cottage St	Pleasant St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.223412	\N	\N	\N
Medal of Honor Park	\N	E Broadway	M St	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	6.182693	\N	\N	\N
Melnea Cass Boulevard / Melena Cass Bike Path	\N	Melena Cass Blvd	Shawmut Ave	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.043535	\N	\N	\N
Mendoza Square	\N	Frankfort St	Swift St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.032375	\N	\N	\N
Michael Scalia Square	\N	Beach St	Park St	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.01	\N	\N	\N
Millennium Park	300 Gardner St	\N	\N	2132	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	1	91.65	\N	\N	\N
Mission Hill Playground	60 Smith St	\N	\N	2120	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	\N	\N	2.686818	\N	\N	\N
Morton Street	\N	Morton St	Forest Hills Ave	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.760903	\N	\N	\N
Mother's Rest at Four Corners	\N	Clayborne St	Tonawanda St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	1.124535	\N	\N	\N
Moynihan Playground	\N	Wakefield Ave	Badger Rd	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	1	1	1	1.0	\N	7.185713	\N	\N	\N
Mozart Street Playground	\N	Mozart St	Centre St	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.80627	\N	\N	\N
Msgr. Francis A. Ryan Park	\N	River St	Southmere Rd	2126	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	6.141296	\N	\N	\N
Msgr. Reynolds Playground	\N	Washington St	Monsignor Reynolds Way	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.306097	\N	\N	\N
Mt. Bowdoin Green	\N	Bowdoin Ave	Mallon Rd	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.538179	\N	\N	\N
Mt. Pleasant Play Area	30 Mt Pleasant Ave	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.313331	\N	\N	\N
Mt. Vernon Street Plaza	\N	Mt Vernon St	Lowney Way	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.146591	\N	\N	\N
Mullen Square	\N	Edison Green	Pond St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.226751	\N	\N	\N
Murphy Playground	20 Child St	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	\N	\N	2.597675	\N	\N	\N
Myrtle Street Playground	\N	Myrtle St	S Russel St	2114	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.147666	\N	\N	\N
Nashua Street Park	195 Nashua St	\N	\N	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.033537	\N	\N	\N
Nellie Miranda Memorial Park	41 Belden St	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.09	\N	\N	\N
Neponset Valley Parkway	\N	Neponset Valley Pkwy	Readville St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.495916	\N	\N	\N
New Center for Arts and Culture	\N	Atlantic Ave	High St	2110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.95	\N	\N	\N
New Chardon Square	\N	New Chardon	Cambridge St	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.91	\N	\N	\N
New Chardon Street Median	\N	New Chardon St	Canal St	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.1	\N	\N	\N
Newland Street Park	\N	Newland St	Newland Pl	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.138331	\N	\N	\N
Nonquit Green	\N	Nonquit St	Dudley St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.357462	\N	\N	\N
North End Park	\N	Hanover ST	Cross St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.83	\N	\N	\N
North Point Park	\N	Education St	NorthPoint Blvd	2141	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.771746	\N	\N	\N
North Square	\N	Prince St	N Square	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.06605	\N	\N	\N
North Street Park	\N	Cross St	North St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24	\N	\N	\N
Norton Street Playground	\N	Norton St	Inwood St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.065907	\N	\N	\N
Noyes Playground	\N	Boardman St	Ashley St	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	8.223748	\N	\N	\N
Nuestra Playground	405 Dudley St	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.233418	\N	\N	\N
Oak Square	427 Faneuil St	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.271456	\N	\N	\N
Oakview Terrace	34 Oakview Ter	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.100075	\N	\N	\N
O'Day Playground	75 W Newton St	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.717655	\N	\N	\N
O'Donnell Square	\N	Nesponset Ave	Freeport St	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07	\N	\N	\N
Ohrenberger Recreation Complex	175 West Boundary Rd	\N	\N	2132	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	3.797976	\N	\N	\N
Old City Hall Grounds	\N	School St	Province St	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.226759	\N	\N	\N
Old Harbor Park & Easement	\N	Harbor Point Blvd	Ocean View Dr	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.43	\N	\N	\N
Olmsted Green	\N	Harvard St	Norton St	2126	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	57.66	\N	\N	\N
Olmsted Park	217 Jamaicaway	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	42.95563	\N	\N	\N
O'Neill Tunnel Portal Park	\N	Causeway St	Beverly St	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.33	\N	\N	\N
O'Reilly Way Court	\N	O'Reilly Way	Monument St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.53	\N	\N	\N
Orton Field / Condon Playground	\N	Flaherty Way	St Casimir St	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	1.488124	\N	\N	\N
Oscar Tugo Circle	\N	Longwood Ave	Avenue Louis Pasteur	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.057553	\N	\N	\N
Overlook Park / Fidelis Way Park	Jette Ct	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	5.10486	\N	\N	\N
Pagel Playground	365 Hyde Park Ave	\N	\N	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	2.725042	\N	\N	\N
Pagoda Park	\N	Kneeland St	Lincoln St	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1.0	\N	0.34	\N	\N	\N
Paris Street Playground	121 Paris St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.794498	\N	\N	\N
Park Drive	\N	Park Dr	Brookline Ave	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.48	\N	\N	\N
Parker B Jones Square	\N	Highland St	Milton St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04	\N	\N	\N
Parkman Memorial	\N	Perkins St	Prince St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.709691	\N	\N	\N
Parkman Playground	58 Wachusett St	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	2.068094	\N	\N	\N
Paul Gore Street Playground	\N	Paul Gore St	St Peter St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.332907	\N	\N	\N
Paul Revere Mall	\N	Hanover St	Harris St	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.785207	\N	\N	\N
Paul Revere Park	Water St	\N	\N	2129	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	6.40013	\N	\N	\N
Peabody Square	\N	Ashmont St	Dorchester Ave	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.046621	\N	\N	\N
Pemberton Square w/ Access	\N	Somerset St	Pemberton Sq	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.38	\N	\N	\N
Penniman Road Play Area	25 Penniman Rd	\N	\N	2134	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.760017	\N	\N	\N
Perkins Street	\N	Perkins St	Chestnut St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.227002	\N	\N	\N
Peters Park	230 Shawmut Ave	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	3.82	\N	\N	\N
Phillips Street Park	\N	Phillips St	Garden St	2114	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.115266	\N	\N	\N
Piemonte Park	\N	Lasell St	Addington Rd	2132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.089567	\N	\N	\N
Pier 10 Park	\N	Drydock Ave	Black Falcon Ave	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.56	\N	\N	\N
Pine Street Park	\N	Marginal Rd	Washington St	2111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.271661	\N	\N	\N
Podium Plaza	1 Seaport Lane	\N	\N	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.46	\N	\N	\N
Polcari Park	45 Prince St	\N	\N	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1.0	\N	0.288573	\N	\N	\N
Pope John Paul II Park	174 Hallet St	\N	\N	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	1	164.99	\N	\N	\N
Poplar Street Play Area	\N	Poplar St	Heathcote St	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.442114	\N	\N	\N
Portsmouth Street Playground	35 Portsmouth St	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	4.282346	\N	\N	\N
Porzio Park	14 Jeffries St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	1	2.37	\N	\N	\N
Prescott Square	\N	Trenton St	Prescott St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.2778	\N	\N	\N
Prince Street Park	\N	Causeway St	Prince St	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	\N	\N	1.28	\N	\N	\N
Public Garden	\N	Boylston St	Arlington St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	23.51	\N	\N	\N
Public Grounds	\N	Cambridge St	Henshaw St	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.06	\N	\N	\N
Puddingstone Park	\N	Seaver St	Normandy St	2121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.55	\N	\N	\N
Puopolo Playground	521 Commercial St	\N	\N	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	1.0	\N	2.09019	\N	\N	\N
Putnam Square	\N	Trenton St	Putnam St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.26354	\N	\N	\N
Quincy Market Square	\N	North St	Clinton St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.56	\N	\N	\N
Quincy Stanley Playground	\N	Quincy St	Stanley St	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.372409	\N	\N	\N
Quincy Street Play Area	65 Quincy St	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.53142	\N	\N	\N
Rachel Revere Square	210 North St	\N	\N	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.078592	\N	\N	\N
Ramler Park	124 Peterborough St	\N	\N	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.51	\N	\N	\N
Ramsay Park	1917 Washington St	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	5.493408	\N	\N	\N
Reilly Playground	355 Chestnut Hill Ave	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	1	\N	\N	\N	\N	6.966953	\N	\N	\N
Reservation Road Park	151 Reservation Rd	\N	\N	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	6.19563	\N	\N	\N
Revere Plaza	\N	Beverly St	Lovejoy Pl	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.391463	\N	\N	\N
RFK Greenway	\N	Suface Rd	Summer St	2110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.53	\N	\N	\N
Richardson Park	\N	Columbia Rd	Pond St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.120874	\N	\N	\N
Richmond & North Streets Park	201 North St	\N	\N	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.37	\N	\N	\N
Ringer Playground	\N	Allston St 	Price Rd	2134	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	10.25585	\N	\N	\N
Ringgold Park	\N	Ringgold St	Waltham St	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.380436	\N	\N	\N
Ripley Playground	35 Ripley Rd	\N	\N	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	\N	0.826727	\N	\N	\N
Robert E Ryan Playground	9 Harborview St	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.63	\N	\N	\N
Roberts Playground	56 Dunbar St	\N	\N	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	10.18916	\N	\N	\N
Rogers Park	\N	Foster St	Rogers Park Ave	2135	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	8.17117	\N	\N	\N
Rolling Bridge Park	\N	Dorchester Ave	Foundry St	2127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.05	\N	\N	\N
Ronan Park	\N	Mt Ida Rd	Homes Ave	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	11.27463	\N	\N	\N
Ross Playground	130 Westminster St	\N	\N	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	13.04039	\N	\N	\N
Rossmore/Stedman Park	\N	Rossmore St	Stedman St	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.073948	\N	\N	\N
Rotch Playground	60 Randolph St	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	2.74585	\N	\N	\N
Rutherford Union Playground	127 Old Rutherford Ave	\N	\N	2129	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	\N	0.25	\N	\N	\N
Rutland Square Park	Rutland Square	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.155807	\N	\N	\N
Ryan Playground	63 Alford St	\N	\N	2129	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	\N	1	8.78	\N	\N	\N
Savin Hill Cove	\N	William T Morrissey Blvd	Freeport St	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.774425	\N	\N	\N
Savin Hill Park	\N	Grampian Way	Evandale Terr	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1.0	1	8.294682	\N	\N	\N
Scarmella/Maverick Square	\N	Chelsea St	Maverick St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.398704	\N	\N	\N
School Street Park	289 Washington St	\N	\N	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.08	\N	\N	\N
Schroeder Plaza	\N	Tremont St	Ruggles St	2120	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.28	\N	\N	\N
Sharon's Park	\N	Buttonwood St	Mt Vernon St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.31	\N	\N	\N
Shempa Square	\N	Business St	River St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03	\N	\N	\N
Shubow Park	1825 Commonwealth Ave	\N	\N	2135	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.73	\N	\N	\N
Smith Playground	235 Western Ave	\N	\N	2134	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	1	14.79771	\N	\N	\N
Soldier's Monument	\N	Centre St	South St	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.132688	\N	\N	\N
Somerset Street Plaza	62 Somerset St	\N	\N	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.9303	\N	\N	\N
South Boston Maritime Park	\N	Northern Ave	D St	2127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.88	\N	\N	\N
South End Library Park	685 Tremont St	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.168102	\N	\N	\N
South Street Courts	12 Carolina Ave	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	\N	\N	0.338233	\N	\N	\N
South Street Mall	\N	South St	Carolina Ave	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.081388	\N	\N	\N
Southwest Corridor Park	\N	Columbus Ave	Heath St	2130	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	\N	49.24	\N	\N	\N
St Helena's Park	97 Union Park St	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.173014	\N	\N	\N
St James Street Park	37 St James St	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.384893	\N	\N	\N
Stanley-Bellevue Park	23 Bellevue St	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.351773	\N	\N	\N
State House Park / Ashburton Park	\N	Derne St	Bowdoin St	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.238705	\N	\N	\N
Statler Park	\N	Stuart St	Church St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.226751	\N	\N	\N
Sterling Square	50 Sterling Square	\N	\N	2127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.038765	\N	\N	\N
Stonehill Park / Coast Guard Park	\N	Raldne St	Stonehill Rd	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.317541	\N	\N	\N
Stony Brook Recreation Complex (Kelly Plgd/Factory Hill Plgd)	\N	Turtle Pond Pkwy	River St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	1	\N	1	\N	\N	27.39	\N	\N	\N
Suffolk Downs T Station Lawns	1240 Bennington St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.97	\N	\N	\N
Sullivan Square	\N	Alford St	West St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.620525	\N	\N	\N
Sumner & Lamson Street Playground	\N	Lamson St	Lamson Ct	2128	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.483576	\N	\N	\N
Sweeney Playground	180 W 5th St	\N	\N	2127	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	0.479658	\N	\N	\N
Symphony Community Park	\N	Edgerly Rd	Norway St	2115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.496796	\N	\N	\N
Tai Tung Park	\N	Tyler St	Tai Tung St	2111	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.033239	\N	\N	\N
Tebroc Street Playlot	\N	Treboc St	Bowdoin St	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.02	\N	\N	\N
Temple Street Park	46 Temple St	\N	\N	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.059115	\N	\N	\N
Tenean Beach	\N	Conley St	Tenean St	2122	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	\N	8.701531	\N	\N	\N
Tent City Courtyards	\N	Columbus Ave	Dartmouth St	2116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.53	\N	\N	\N
The Fenway II	\N	Brookline Ave	Fenway	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.0	\N	\N	\N
The Riverway	\N	Park Dr	Riverway	2215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.0	\N	\N	\N
Thetford/Evans Playground	\N	Thetford St	Evans St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	\N	0.68	\N	\N	\N
Thompson Square	\N	Main St	Austin St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14	\N	\N	\N
Titus Sparrow Park	89 W Rutland Square	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	1.751345	\N	\N	\N
Toohig Playground	\N	Gallivan Blvd	Marsh St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	2.124234	\N	\N	\N
Tremlett Square / Town Meeting Park	\N	Tremlett St	Waldeck St	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.16	\N	\N	\N
Trotter School Playground	\N	Humboldt Ave	Waumbeck St	2121	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	1.0	\N	1.243984	\N	\N	\N
Truman Parkway	\N	Truman Pkwy	Tyler St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.714762	\N	\N	\N
Tunnel Harborwalk	\N	Fid Kennedy Ave	Seafood Way	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.18	\N	\N	\N
Umana School Park	312 Border St	\N	\N	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	1.0	1	2.520441	\N	\N	\N
UMass Boston Athletic Fields	100 William T Morrissey Blvd	\N	\N	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	18.46778	\N	\N	\N
UMass Boston Campus Ctr Oval	\N	University Dr N	Columbia Pt	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.66	\N	\N	\N
UMass Harborwalk Park	\N	University Dr S	University Dr E	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	13.08531	\N	\N	\N
Union Park	24 Union Park	\N	\N	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.373479	\N	\N	\N
Union Park Street Playground	\N	Albany St	Union Park St	2118	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.56	\N	\N	\N
Union Square Plaza	\N	Cambridge St	Brighton Ave	2134	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.078612	\N	\N	\N
Union Street Park / Holocaust Memorial	\N	Union St	Hanover St	2108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.54	\N	\N	\N
Valenti Square	\N	Valenti Way	Beverly St	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09	\N	\N	\N
Ventura Playground / Lowermills VFW Memorial Post Playground	\N	Medway St	Ventura St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	1	1.0	\N	1.309906	\N	\N	\N
Veterans Memorial Park	\N	Devine Way	Carpenter St	2127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1.0	\N	0.201773	\N	\N	\N
Veterans Park	\N	Decatur St	London St	2128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.57	\N	\N	\N
VFW Parkway	\N	Veterans of Foreign Wars Pkwy	Baker St	2132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	13.16576	\N	\N	\N
Victory Road Park	\N	Victory Rd	Interstate 93	2122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.154657	\N	\N	\N
Walker Playground	550 Norfolk St	\N	\N	2126	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	1	5.953433	\N	\N	\N
Walnut Park Play Area	345 Walnut Ave	\N	\N	2119	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.317054	\N	\N	\N
Walsh Playground	\N	Clancy Rd	Washington St	2124	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	1	1.0	\N	6.945645	\N	\N	\N
Waltham Square	\N	Harrison Ave	Waltham St	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.118405	\N	\N	\N
Warren Street	\N	Warren St	Dale St	2119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.085573	\N	\N	\N
Washburn Street Green	\N	Washburn St	Howell St	2125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.23	\N	\N	\N
Watson Park	\N	Taylor St	Milford St	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.1	\N	\N	\N
Webster Avenue Playground	17 Unity St	\N	\N	2113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.06	\N	\N	\N
Webster Square	\N	Central Ave	Webster St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.05	\N	\N	\N
Weider Park	\N	Sherrin St	Dale St	2136	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	\N	\N	6.919311	\N	\N	\N
Wellesley Park	\N	Wellesley Park	Melville Ave	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.713386	\N	\N	\N
West End Park	\N	Nashua St	Martha Rd	2114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14	\N	\N	\N
West Roxbury HS Athletic Fields	1205 VFW Pkwy	\N	\N	2132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1.0	1	13.42	\N	\N	\N
West Roxbury Parkway	\N	W Roxbury Pkwy	Orange St	2131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	31.76	\N	\N	\N
Wharf District Park	\N	Atlantic Ave	Milk St	2109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	4.71	\N	\N	\N
White Stadium	450 Walnut Ave	\N	\N	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1.0	1	12.57331	\N	\N	\N
Whittier Playground	\N	Whittier St	Tremont St	2120	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	\N	\N	\N	\N	0.275503	\N	\N	\N
William S. Britton Square	\N	Tonawanda St	Waldeck St	2124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03	\N	\N	\N
Williams Square	\N	Williams Ave	Prospect St	2136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.038057	\N	\N	\N
Williams Tunnel Portal Park	\N	D St	Silver Line Way	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.2	\N	\N	\N
Willow Pond Meadow	\N	Jamaicaway	Willow Pond Rd	2130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.295543	\N	\N	\N
Wilson Park	\N	Commonwealth Ave	Wilson Park	2135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.097176	\N	\N	\N
Winthrop Playground	\N	Dacia St	Ingleside St	2125	\N	\N	Urban	MA	Suffolk	Boston	1.0	\N	1	\N	1.0	\N	1.560895	\N	\N	\N
Winthrop Square	1 Winthrop Square	\N	\N	2110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.152686	\N	\N	\N
Winthrop Square	\N	Winthrop St	Adams St	2129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.9	\N	\N	\N
Worcester Square	\N	Worcester Square	Washington St	2118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.343756	\N	\N	\N
Wormwood Park	\N	A St	Wormwood St	2210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.13	\N	\N	\N
Bellingham Hill Park	\N	Highland St	Cottage St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bosson Playground	\N	Bellingham St	Shawmut St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Carter Park	299 Everett Ave	\N	\N	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Chelsea Square (Winnisimmet Park)	\N	Broadway	2nd St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ciepela Park	\N	Tremont St	Medford St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cordero Park	\N	\N	\N	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
Creekside Common	\N	Gilooly St	Cabot St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Eden Street Park	\N	Eden St	Addison St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Highland Park	\N	Willow St	Maverick St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	1.0	1	\N	\N	\N	\N
Howard Park	\N	\N	\N	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
Island End Park	305 Commandants Way	\N	\N	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kaboom-Disney Park	\N	Heard St	Spruce St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kayem Park	\N	5th St	Chestnut St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mace Park	\N	Crescent Ave	Clinton St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mace Tot-Lot	59 Crescent Ave	\N	\N	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Malone Park	\N	Summit Ave	Lafayette Ave	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Mary C Burke Complex / Merrit Park	\N	Crescent Ave	Eastern Ave	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Mary O'Malley Park	\N	\N	\N	\N	42.38913	-71.051655	Urban	MA	Suffolk	Chelsea	1.0	\N	1	\N	\N	\N	\N	\N	\N	Coordinates
Mill Creek Riverwalk	\N	\N	\N	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldnﾒt Find
O'Neil Park	\N	Beacon St	Beacon Pl	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Paul A Dever Park	\N	Stockton St	Gillooly Rd	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Polonia Park	\N	Tremont St	Eldridge Pl	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Prattville-Fitzpatrick Development Park	\N	Burma Rd	Exeter St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Quigley Park	\N	Essex St	Hawthorne St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Recipi-Brenes Tot-Lot	\N	Watts St	Willow St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Scrivano Park	\N	Locke St	Parkway Ct	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Voke Park	540 Washington Ave	\N	\N	2150	\N	\N	Urban	MA	Suffolk	Chelsea	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Washington Park	\N	Washington Ave	Hancock St	2150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Abraham Lincoln School	68 Tuckerman St	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Ambrose Park	\N	Ambrose St	Pomona St	2151	\N	\N	Urban	MA	Suffolk	Revere	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Beachmont School/ Frederick's Park	15 Everard St	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Ciarlone Tot Lot	107 Newhall St	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Costa Park	\N	Shirley Ave	Walnut Ave	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Curtis Park	186 Garfield Ave	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
DeStoop Park	\N	Dashwood St	Oak Island St	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Garfield School	186 Garfield Ave	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Gibson Park	\N	Hayes Ave	Thayer Ave	2151	\N	\N	Urban	MA	Suffolk	Revere	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hill Park	Park Ave @ Foster Ave	Park Ave	Foster Ave	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Liberty Park	Breedens Lane @ Haywood St	Breedens Lane	Haywood St	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lighthouse Tot Lot (Paul Revere)	395 Revere St	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Louis Pasteur Park	Leverett Ave @ Dolphin Ave	Leverett Ave	Dolphin Ave	2151	\N	\N	Urban	Ma	Suffolk	Revere	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Revere Beach	Revere Beach Blvd @ Beach St	Revere Beach Blvd	Beach St	2151	\N	\N	Urban	MA	Suffolk	Revere	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Revere High School	101 School St	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Sonny Myers Park	120 Beach St	\N	\N	2151	\N	\N	Urban	MA	Suffolk	Revere	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cummings School	40 Hermon St	\N	\N	2152	\N	\N	Urban	MA	Suffolk	Winthrop	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fort Banks Elementary School And Cellucci Field	101 Kennedy Dr	\N	\N	2152	\N	\N	Urban	MA	Suffolk	Winthrop	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Ingleside Park	Walden St @ Lincoln St	Walden St	Lincoln St	2152	\N	\N	Urban	MA	Suffolk	Winthrop	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Miller Field	78 Cross St	\N	\N	2152	\N	\N	Urban	MA	Suffolk	Winthrop	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Parks and Recreation Office	151 Pauline St	\N	\N	2152	\N	\N	Urban	MA	Suffolk	Winthrop	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Winthrop High School	372 Main St	\N	\N	2152	\N	\N	Urban	MA	Suffolk	Winthrop	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Powderhouse Hill	West St @ Linden St	West St	Linden St	1503	\N	\N	Urban	MA	Worcester	Berlin	\N	\N	\N	\N	\N	\N	1.0	\N	\N	\N
South Commons	34 South St	\N	\N	1503	\N	\N	Urban	MA	Worcester	Berlin	1.0	\N	1	1	1.0	1	36.81	\N	\N	\N
Derby Field	100 Mechanic St	\N	\N	1740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Forbush Mill Field	200 Forbush Mill Rd	\N	\N	1740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Horse Ring Field	100 Main St	\N	\N	1740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Memorial Field	20 Wattaquadock Hill Rd	\N	\N	1740	\N	\N	Urban	MA	Worcester	Bolton	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Persons Park	149 Hudson Rd	\N	\N	1740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Pond Park	Main St @ Mechanic St	Main St	Mechanic St	1740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Tower Field	570 Main St	\N	\N	1740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Town Beach- Little Pond	75 Hudson Rd	\N	\N	1740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Ann Leeﾠﾠ	73 Ann Lee Rd	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Charlie Waiteﾠﾠ	19 Lancaster County Rd	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Harvard Parkﾠand McCurdy Track	34 Lancaster County Rd	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Hildreth ElementaryﾠﾠSchool	27 Mass Ave	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Middle Schoolﾠﾠﾠ	14 Mass Ave	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Pond Rd fieldﾠﾠ	13 Pond Rd	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Ryan Land	71 Depot Rd	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Upper and Lower Depotﾠﾠ	60 Depot Rd	\N	\N	1451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Adin Ballou Park	\N	\N	\N	\N	42.13110092	-71.54107858	Urban	MA	Worcester	Hopedale	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Adin St Triangle	Adin St @ Mendon Rd	Adin St	Mendon Rd	1747	\N	\N	Urban	MA	Worcester	Hopedale	\N	\N	\N	\N	\N	\N	1.08	\N	\N	\N
Phillips Field aka Mellen Field	\N	\N	\N	\N	42.11506232	-71.50842757	Urban	MA	Worcester	Hopedale	1.0	\N	\N	1	\N	1	29.21	\N	\N	Coordinates
Town Park	\N	\N	\N	1747	\N	\N	Urban	MA	Worcester	Hopedale	1.0	\N	1	1	1.0	\N	6.18	\N	\N	No address
Thayer Field Recreation Campus	39 Harvard Rd	\N	\N	1523	\N	\N	Dog	MA	Worcester	Lancaster	1.0	\N	1	1	1.0	1	\N	1	\N	\N
Brian McNally Park	Whalom Rd @ Lesure Ave	Whalom Rd	Lesure Ave	1462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	\N	\N	\N	\N	0.2	\N	\N	\N
Elementary School Annex	30 School St	\N	\N	1462	\N	\N	Urban	MA	Worcester	Lunenburg	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Lunenburg High School	1079 Massachusetts Ave	\N	\N	1462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Lunenburg Town Beach	Lake Front Ave @ Carousel Ln	Lake Front Ave	Carousel Ln	1462	\N	\N	Urban	MA	Worcester	Lunenburg	1.0	\N	\N	\N	\N	\N	0.5	\N	\N	\N
Marshall Park	\N	\N	\N	\N	42.598145	-71.729339	Urban	MA	Worcester	Lunenburg	\N	\N	1	1	\N	1	24.0	\N	\N	Coordinates
New Primary School	1401 Massachusetts Ave	\N	\N	1462	\N	\N	Urban	MA	Worcester	Lunenburg	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
T.C. Passios Elementary School	1025 Massachusetts Ave	\N	\N	1462	\N	\N	Urban	MA	Worcester	Lunenburg	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Turkey Hill Middle School	129 Northfield Rd	\N	\N	1462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Wallis Park	Whalom Rd @ Wallis Park	Whalom Rd	Wallis Park	1462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	\N	1	\N	\N	2.0	\N	\N	\N
Founders Park	Main St @ Hastings St	Main St	Hastings St	1756	\N	\N	Urban	MA	Worcester	Mendon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Memorial Park	29 Millville Rd	\N	\N	1756	\N	\N	Urban	MA	Worcester	Mendon	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Brookside & Woodland School Fieldsﾠ	110 Congress St	\N	\N	1757	\N	\N	Urban	MA	Worcester	Milford	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Cedar Swamp Pond	\N	\N	\N	\N	42.1467632	-71.5128406	Urban	MA	Worcester	Milford	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Draper Park	Main St @ Congress St	Main St	Congress St	1757	\N	\N	Urban	MA	Worcester	Milford	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fino Field & Fino Field Pool	80 Granite St	\N	\N	1757	\N	\N	Urban	MA	Worcester	Milford	\N	1	\N	1	\N	1	\N	\N	\N	\N
Louisa Lake Park	\N	\N	\N	\N	42.15611104	-71.52032216	Urban	MA	Worcester	Milford	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Milford High School Fields	31 West Fountain St	\N	\N	1757	\N	\N	Urban	MA	Worcester	Milford	\N	\N	1	1	\N	1	\N	\N	\N	\N
Plains Park	82 Cedar St	\N	\N	1757	\N	\N	Urban	MA	Worcester	Milford	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Rosenfeld Park / Plains Park	60 Cedar St	\N	\N	1757	\N	\N	Urban	MA	Worcester	Milford	1.0	\N	\N	1	\N	\N	20.0	\N	\N	\N
Town Park	Congress St @ Spruce St	Congress St	Spruce St	1757	\N	\N	Urban	MA	Worcester	Milford	1.0	\N	1	1	1.0	1	16.0	\N	\N	\N
911 Memorial Field	\N	\N	\N	\N	42.326796	-71.529965	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Choate Field at Woodward School	28 Cordaville Rd	\N	\N	1772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
DePietri Field	53 Parkerville Rd	\N	\N	1772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Fayville Memorial Park and Harold E. Fay Memorial Field	Central St	\N	\N	1772	\N	\N	Urban	MA	Worcester	Southborough	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Finn School & Mooney Fields	60 Richards Rd	\N	\N	1772	\N	\N	Urban	MA	Worcester	Southborough	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Kallander Field	Kallander Dr	\N	\N	1772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Liberty Estates Field	Liberty Rd	\N	\N	1772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Neary & Trottier Middle School & Lundblad Field	53 Parkerville Rd	\N	\N	1772	\N	\N	Urban	MA	Worcester	Southborough	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Kiwanis Beach Park	\N	\N	\N	\N	42.18267	-71.596506	Urban	MA	Worcester	Upton	\N	\N	1	1	1.0	1	\N	\N	\N	Coordinates
Lake Wildwood Park	\N	\N	\N	\N	42.17301999	-71.63647503	Urban	MA	Worcester	Upton	\N	\N	\N	\N	\N	\N	4.5	\N	\N	Coordinates
Memorial School	67 Main St	\N	\N	1568	\N	\N	Urban	MA	Worcester	Upton	1.0	\N	1	1	1.0	\N	\N	\N	\N	\N
Nipmuc Regional High School Athletic Fields	90 Pleasant St	\N	\N	1568	\N	\N	Urban	MA	Worcester	Upton	\N	\N	\N	1	\N	1	\N	\N	\N	\N
South Street Park	\N	\N	\N	1568	\N	\N	Dog	MA	Worcester	Upton	1.0	1	1	1	1.0	1	\N	1	\N	FUTURE PARK (Nov. 2013)
VFW Baseball Complex	15 Milford St	\N	\N	1568	\N	\N	Urban	MA	Worcester	Upton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
West River Soccer Complex	\N	\N	\N	\N	42.148201	-71.615269	Urban	MA	Worcester	Upton	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Annie Fales Elementary School	Eli Whitney St	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	\N	1	\N	1	14.5	\N	\N	\N
Armstrong Elementary SchoolandﾠGibbons Jr High School	18 Fisher St	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	1	1	1.0	1	23.7	\N	\N	\N
Chauncy Fields	\N	\N	\N	\N	42.298171	-71.607776	Urban	MA	Worcester	Westborough	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Haskell St Recreation Facility	50 Haskell St	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	1	1	1.0	1	30.1	\N	\N	\N
Hastings Elementary School	111 East Main St	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	\N	1	1.0	1	27.8	\N	\N	\N
Hennessey Field	1 Upton Rd	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	\N	\N	\N	\N	\N	1	5.5	\N	\N	\N
Hyder St Park	Hyder St @ Eric Dr	Hyder St	Eric Dr	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	\N	\N	\N	\N	2.8	\N	\N	\N
Lake Chauncy Beach	Lyman St @ Chauncy St	Lyman St	Chauncy St	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	\N	\N	\N	\N	5.2	\N	\N	\N
Mill Pond School	6 Olde Hickory Path	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	ﾠ	\N	\N	\N	\N	\N	32.0	\N	\N	\N
Minuteman Park/ Sandra Pond	Upton Rd @ Spring Rd	Upton Rd	Spring Rd	1581	\N	\N	Urban	MA	Worcester	Westborough	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Roger's Recreation Facility	6 Rogers Rd	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	\N	1	1.0	1	43.0	\N	\N	\N
Upton Recreation Field	66 Upton Rd	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	\N	\N	\N	1	\N	1	6.8	\N	\N	\N
Veteran's Freedom Park	169 W Main St	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
Westboro High School	West Main St	\N	\N	1581	\N	\N	Urban	MA	Worcester	Westborough	1.0	\N	1	1	\N	1	18.0	\N	\N	\N
Davol Field	Oak St @ Oak Ave	Oak St	Oak Ave	2780	\N	\N	Urban	NH	Bristol	Taunton	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Hartshorn Park	180 Longmeadow Rd	\N	\N	2780	\N	\N	Urban	NH	Bristol	Taunton	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Hopewell Park	Hopewell St @ Hamilton St	Hopewell St	Hamilton St	2780	\N	\N	Urban	NH	Bristol	Taunton	1.0	1	\N	1	1.0	1	\N	\N	\N	Coordinates
Memorial Park	Somerset Ave @ Forest St	Somerset Ave	Forest St	2780	\N	\N	Urban	NH	Bristol	Taunton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Sikorski Field	\N	\N	\N	\N	41.88154	-71.037678	Urban	NH	Bristol	Taunton	1.0	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
South Street	\N	\N	\N	\N	41.86479	-71.115477	Urban	NH	Bristol	Taunton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Taunton Green	Weir St @ Cohannet St	Weir St	Cohannet St	2780	\N	\N	Urban	NH	Bristol	Taunton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Walker Park	W Water St @ Staples Ave	W Water St	Staples Ave	2780	\N	\N	Urban	NH	Bristol	Taunton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Weir Park	1st St @ Presbrey Ct	1st St	Presbrey Ct	2780	\N	\N	Urban	NH	Bristol	Taunton	1.0	\N	\N	1	1.0	\N	\N	\N	\N	\N
Weir Riverfront Park	E Water St @ Agawam St	E Water St	Agawam St	2780	\N	\N	Urban	NH	Bristol	Taunton	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Westside Park	\N	\N	\N	\N	41.905934	-71.111015	Urban	NH	Bristol	Taunton	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Whittenton Field	Pleadwell St @ Richard St	Pleadwell St	Richard St	2780	\N	\N	Urban	NH	Bristol	Taunton	1.0	\N	\N	\N	1.0	1	\N	\N	\N	\N
Greeley Park	\N	\N	\N	\N	42.7724	-71.409647	Urban	NH	Hillsborough	Hudson	1.0	\N	\N	1	1.0	\N	\N	\N	\N	Coordinates
Jette Field	20 County Rd	\N	\N	\N	\N	\N	Urban	NH	Hillsborough	Hudson	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Merrifield Park	Ferry St @ Burnham Rd	Ferry St	Burnham Rd	3051	\N	\N	Urban	NH	Hillsborough	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Merrifield Parkﾠﾠ	Ferry St @ Marshmallow path	Ferry St	Marshmallow path	\N	\N	\N	Urban	NH	Hillsborough	Hudson	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Robinson Pond	\N	\N	\N	\N	42.799652	-71.381103	Urban	NH	Hillsborough	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Skate Park	Central St @ Melendy Rd	Central St	Melendy Rd	3051	\N	\N	Urban	NH	Hillsborough	Hudson	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Sousa Field	\N	\N	\N	\N	42.751967	-71.42506	Urban	NH	Hillsborough	Hudson	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
ARTILLERY LANE	Artillery Ln @ Greeley St	Artillery Ln	Greeley St	3064	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	1	\N	\N	\N	\N
ASH STREET PLAYLOT	\N	\N	\N	\N	42.757705	-71.469913	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
ATHERTON AVE PARK	ATHERTON AVE @ Lock St	ATHERTON AVE	Lock St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	1	\N	\N	\N	\N
BELVEDERE PARK	BRIDGE ST @ Warren St	BRIDGE ST	Warren St	3060	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
Bicentennial Park	Main St @ Pearson Ave	Main St	Pearson Ave	3060	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
BRIGHT SPOT	LEDGE ST @ Everett St	LEDGE ST	Everett St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
CROWN HILL POOL	\N	\N	\N	\N	42.750686	-71.452868	Urban	NH	Hillsborough	Nashua	\N	1	\N	1	\N	\N	\N	\N	\N	Coordinates
DAVID DEANE SKATEBOARD PARK	BRIDGE ST @ Bancroft St	BRIDGE ST	Bancroft St	3060	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
DEGASIS PARK	\N	\N	\N	\N	42.736503	-71.470469	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
DESCHENES OVAL	MAIN ST @ Canal St	MAIN ST	Canal St	3064	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
ELKS PLAYGROUND	RANCOURT ST @ Caron Ave	RANCOURT ST	Caron Ave	3064	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
ERION FIELD	ROBINSON RD @ Hulton St	ROBINSON RD	Hulton St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
FIELDS GROVE	FIELD ST @ Fernwood St	FIELD ST	Fernwood St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
FIREMANS MEMORIAL	CONCORD ST @ Orange St	CONCORD ST	Orange St	3064	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
FOUR CORNERS	SARGENT AVE @ Artillery Ln	SARGENT AVE	Artillery Ln	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
GREELEY PARK	108 CONCORD ST	\N	\N	3064	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	1	1	1	\N	1	\N	\N	\N	\N
GREENWICH COMMONS	\N	\N	\N	\N	42.728768	-71.441487	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
JEFF MORIN FIELD at ROBY PARK	SPIT BROOK RD @ E Dunstable Rd	SPIT BROOK RD	E Dunstable Rd	3062	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
KIRKPATRICK PARK	SHADY LN @ New Searles Rd	SHADY LN	New Searles Rd	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
LABINE PARK and ROTARY POOL	CLEVELAND ST @ Fairview Ave	CLEVELAND ST	Fairview Ave	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	1	1	1	\N	1	\N	\N	\N	\N
LINCOLN PARK	\N	\N	\N	\N	42.758819	-71.501309	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
LYONS FIELD	MARSHALL ST @ Harbor Ave	MARSHALL ST	Harbor Ave	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
MAIN DUNSTABLE SOCCER FIELDS	MAIN DUNSTABLE RD @ Conant Rd	MAIN DUNSTABLE RD	Conant Rd	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
MARK ROWLAND FIELD	\N	\N	\N	\N	42.772919	-71.482093	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
MASSACHUSETTS DR.	\N	\N	\N	\N	42.745288	-71.443976	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	Coordinates
MEMORIAL PARK	LEDGE ST @ N 7th St	LEDGE ST	N 7th St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	1.0	1	\N	\N	\N	\N
MINE FALLS PARK	\N	\N	\N	\N	42.763256	-71.491036	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
NAVAHO PARK	\N	\N	\N	\N	42.761126	-71.506459	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
NORTH COMMON	SARGENT AVE @ Artillery Ln	SARGENT AVE	Artillery Ln	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	1	1	\N	\N	\N	\N	\N	\N	\N
PARC DE NOTRE RENAISSANCE FRANCAIS	WATER ST @ Mechanic St	WATER ST	Mechanic St	3060	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
PINE STREET PLAYLOT	PINE ST @ Ledge St	PINE ST	Ledge St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
PROCTOR PARK	\N	\N	\N	\N	42.732692	-71.456575	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
ROUSSEL / GARDNER FIELDS	HAINES ST @ Tetreau St	HAINES ST	Tetreau St	3060	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Salem St Play Lot	Salem St @ Atwood Ct	Salem St	Atwood Ct	3064	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
SANDY POND	\N	\N	\N	\N	42.749601	-71.471491	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Shattuck St Playground	8 Shattuck St	\N	\N	3064	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
St Andrews Park	Harris Rd @ Palisade Dr	Harris Rd	Palisade Dr	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
SULLIVAN PARK	BOWERS St @ Marshall St	BOWERS St	Marshall St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
SUNSET HEIGHTS	15 Osgood Rd	\N	\N	3060	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	1	\N	1.0	\N	\N	\N	\N	\N
TEMPLE PLACE	Cottage Ave @ Temple Pl	Cottage Ave	Temple Pl	3060	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
THORTON RD PLAYGROUND	32 THORNTON RD	\N	\N	3063	\N	\N	Urban	NH	Hillsborough	Nashua	1.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
TOLLES ST STATION	\N	\N	\N	\N	42.766004	-71.46043	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
YUDICKY FARM / Southwest Park	Groton Rd @ Gregg Rd	Groton Rd	Gregg Rd	3062	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Dennis P. Lyons Memorial Park	6 Village Green	\N	\N	3076	\N	\N	Urban	NH	Hillsborough	Pelham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Elmer G. Raymond Memorial Park	35 Keyes Hill Rd	\N	\N	3076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	\N	\N	1	240.0	\N	\N	\N
George M. Muldoon Park	27 Muldoon Pkwy	\N	\N	3076	\N	\N	Urban	NH	Hillsborough	Pelham	1.0	\N	\N	1	\N	1	\N	\N	\N	\N
Golden Brook Park / Newcomb Field	52A Windham Rd	\N	\N	3076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Muldoon Park	Mammoth Rd @ Nashua Rd	Mammoth Rd	Nashua Rd	3076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	\N	\N	\N	58.0	\N	\N	\N
Pelham Veterans' Memorial Park	Mammoth Rd	\N	\N	3076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	\N	\N	\N	50.0	\N	\N	\N
Veterans Memorial Park	109 Veterans Memorial Pkwy	\N	\N	3076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	1	1	1.0	1	\N	\N	\N	\N
Woodlock Park	Woodlock Park Ln @ Oak Hill Cir	Woodlock Park Ln	Oak Hill Cir	3811	\N	\N	Urban	NH	Rockingham	Atkinson	1.0	\N	1	1	\N	1	\N	\N	\N	\N
Brickyard Park	\N	\N	\N	\N	42.97471684	-70.97326519	Urban	NH	Rockingham	Exeter	1.0	\N	\N	1	\N	1	12.75	\N	\N	Coordinates
Exeter Recreation Park	4 HAMPTON RD	\N	\N	\N	\N	\N	Urban	NH	Rockingham	Exeter	1.0	1	1	1	1.0	1	\N	\N	\N	\N
Founders Park	\N	\N	\N	\N	42.98149297	-70.94422611	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Gilman Park	35 Bell Ave	\N	\N	\N	\N	\N	Urban	NH	Rockingham	Exeter	1.0	\N	\N	1	1.0	\N	15.0	\N	\N	\N
Holland Common	Holland Way @ Route 27	Holland Way	Route 27	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Kids Park	Front St @ Winter St	Front St	Winter St	\N	\N	\N	Urban	NH	Rockingham	Exeter	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Littlefield Skate Parkﾠ	Lower Court St @ Route 108	Lower Court St	Route 108	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	1	\N	\N	\N	\N
Orchard Circle	Orchard Circle @ Towle Ave	Orchard Circle	Towle Ave	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Park St Common	Park St @ Epping Rd	Park St	Epping Rd	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Route 88 Common	Route 88 @ Route 27	Route 88	Route 27	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Town House Common	Court St @ Bow St	Court St	Bow St	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Water Street Park	Water St @ Summer St	Water St	Summer St	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Fremont Memorial Park	Main St @ Jackie Bernier Dr	Main St	Jackie Bernier Dr	3044	\N	\N	Urban	NH	Rockingham	Fremont	1.0	\N	\N	1	1.0	1	14.0	\N	\N	\N
Depot Rd Field Complex	\N	\N	\N	\N	42.906176	-71.198729	Urban	NH	Rockingham	Hampstead	1.0	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Ordway Park	Main St @ Depot Rd	Main St	Depot Rd	3841	\N	\N	Urban	NH	Rockingham	Hampstead	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Greenie Park	24 Heath St	\N	\N	3858	\N	\N	Urban	NH	Rockingham	Newton	1.0	\N	1	1	1.0	1	\N	\N	\N	\N
Pollard Park	Main St @ Park Ave	Main St	Park Ave	3865	\N	\N	Urban	NH	Rockingham	Plaistow	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Recreation Field	51 Old County Rd	\N	\N	3865	\N	\N	Urban	NH	Rockingham	Plaistow	1.0	\N	\N	1	1.0	1	21.0	\N	\N	\N
Smith field	\N	\N	\N	\N	42.842855	-71.096821	Urban	NH	Rockingham	Plaistow	1.0	\N	\N	1	1.0	1	2.16	\N	\N	Coordinates
Field of Dreamsﾠ	48 Geremonty Dr	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	1.0	\N	\N	\N	\N	1	\N	\N	\N	\N
Fisk Schoolﾠ	14 Main St	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	1.0	\N	\N	1	\N	\N	\N	\N	\N	\N
Hedgehog Park	53 Lowell Rd	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	1.0	1	\N	\N	\N	\N	\N	\N	\N	\N
Michele Memorial Parkﾠ	190 Lawrence Rd	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	1	1	\N	1	\N	\N	\N	\N
Morse Fieldﾠ	128 Cluff Crossing Rd	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Palmer Fieldﾠ	109 East Broadway	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Salem High Schoolﾠ	44 Geremonty Dr	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1	\N	1	\N	\N	\N	\N
Soule Schoolﾠ	173 South Policy St	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	1.0	\N	\N	\N	1.0	\N	\N	\N	\N	\N
Woodbury Middle Schoolﾠ	206 Main St	\N	\N	3079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1	\N	\N	\N	\N	\N	\N
Miller Recreation Area	Main St @ Griffin Hill Cir	Main St	Griffin Hill Cir	3873	\N	\N	Urban	NH	Rockingham	Sandown	1.0	\N	\N	1	1.0	1	\N	\N	\N	\N
Governor Weare Park	43 Gove Rd	\N	\N	3874	\N	\N	Urban	NH	Rockingham	Seabrook	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Veteran's Park	56 South Main St	\N	\N	3874	\N	\N	Urban	NH	Rockingham	Seabrook	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.
vacuum analyze msa;