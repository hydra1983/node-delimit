set client_encoding to UTF8;
set standard_conforming_strings to on;
create table msa (
	Name text,
	Address text,
	Street_1 text,
	Street_2 text,
	zip text,
	lat numeric,
	lng numeric,
	Class text,
	State text,
	County text,
	City text,
	Playground text,
	Pools text,
	Tennis text,
	Baseball text,
	Basketball text,
	Playing text,
	Acreage text,
	Dog text,
	Ice text,
	Notes text
);
copy msa (Name, Address, Street_1, Street_2, zip, lat, lng, Class, State, County, City, Playground, Pools, Tennis, Baseball, Basketball, Playing, Acreage, Dog, Ice, Notes) from stdin;
Pope Park	\N	Pope St	Addy Dr	02743	\N	\N	Urban	MA	Bristol	Acushnet	1	\N	\N	1	1
Dighton Community Playground	979 Somerset Ave	\N	\N	02715	\N	\N	Urban	MA	Bristol	Dighton	1	\N	\N	1	\N	1
Lane Field	\N	Main St	Water St	02715	\N	\N	Urban	MA	Bristol	Dighton	1	\N	\N	1
No. Dighton Playground and Ball Field	\N	Prospect St	School St	02764	\N	\N	Urban	MA	Bristol	Dighton	\N	\N	\N	1	1
Osprey landing	\N	Boat Ramp Rd	Park Ave	02715	\N	\N	Urban	MA	Bristol	Dighton
School Lane Playground	\N	School Ln	Palmer St	02715	\N	\N	Urban	MA	Bristol	Dighton	1	\N	\N	\N	1
Tennis and Basketball courts	1551 Somerset Ave	\N	\N	02715	\N	\N	Urban	MA	Bristol	Dighton	\N	\N	1	\N	1
Tri- Centennial Park	\N	Water St	Pleasant St	02715	\N	\N	Urban	MA	Bristol	Dighton
Edwin A Keach Park	49 Chestnut St	\N	\N	02356	\N	\N	Urban	MA	Bristol	Easton	1	\N	\N	1	\N	1
Tories Place Park	\N	\N	\N	\N	42.064308	-71.101536	Urban	MA	Bristol	Easton	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Unionville Field	184 Washington St	\N	\N	02356	\N	\N	Urban	MA	Bristol	Easton	1	\N	1	1	1
Anthony Field	\N	\N	\N	\N	41.649	-70.9079	Urban	MA	Bristol	Fairhaven	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Cushman Park	\N	Green St	Christian St	02719	\N	\N	Urban	MA	Bristol	Fairhaven	1	\N	1	1	1	1
Livesey Park	\N	Glenhaven Ave	Parker St	02719	\N	\N	Urban	MA	Bristol	Fairhaven	1	\N	1	1	1	1
Macomber Pimental Field	\N	\N	\N	\N	41.62085249	-70.86676323	Urban	MA	Bristol	Fairhaven	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Pease Park	\N	Middle St	Pease St	02719	\N	\N	Urban	MA	Bristol	Fairhaven
Willow Park	\N	South St	Chesnut St	02719	\N	\N	Urban	MA	Bristol	Fairhaven	1	\N	\N	1
ABBOTT COURT PLAYGROUND	\N	Birch St	King St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	1	1	1	4
AETNA STREET PLAYGROUND	\N	\N	\N	\N	41.68113685	-71.1615064	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	1	\N	1	\N	\N	Coordinates
BANK STREET TOT LOT	\N	Bank St	OGrady St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	\N	1	\N	1
BICENTENNIAL PARK	\N	Davol St	Bottom President Ave	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	4	\N	\N	\N	5
BRITLAND PARK	\N	Pleasant St	Fifteenth St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	2	\N	3	1	16
COLUMBUS PARK	\N	Bedford St	Stinziano St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	1	1	\N	1
DAVIS PLAYGROUND	703 Meridian St	\N	\N	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	1	1	\N	3	\N	\N	In the rear
DESMARAIS PLAYGROUND	\N	McGowan St	County St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	\N	\N	\N	1
DUMONT FIELD	\N	County St	Brogan Blvd	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	2	\N	\N	3
FATHER KELLY PARK	\N	SMain St	Globe St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	1	\N	\N	5
FATHER TRAVASSOS PARK	\N	Everett St	Alden St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	2	1	5
GRIFFIN PLAYGROUND	\N	Fourth St	Fifth St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	\N	2	\N	1
JOSE SILVA PARK	\N	Locust St	N Quarry St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	\N	\N	2
KENNEDY PARK	\N	SMain St	Middle St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	1	1	1	1	1	54
LAFAYETTE PARK	\N	Eastern Ave	County St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	1	1	1	1	1	11
MAPLEWOOD PARK	\N	Stafford Rd	Albert St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	1	1	1	\N	13
MASSASOIT TOT LOT	\N	Quequechan St	Wamsutta St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	\N	1	\N	1
NORTH PARK	\N	N Main St	Hood St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	1	1	1	25
PULASKI PLAYGROUND	\N	Warren St	Jackson St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	1	1	\N	\N	3
RUGGLES PARK	\N	Pine St	Seabury St	\N	\N	\N	Urban	MA	Bristol	Fall River	1	\N	\N	1	1	\N	9
SMALL SCHOOL BASEBALL FIELD	\N	\N	\N	\N	41.7019942	-71.13861219	Urban	MA	Bristol	Fall River	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
THOMAS CHEW FIELD	\N	Globe St	Slade St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	1	1	\N	4
TURNER PLAYGROUND	\N	Danforth St	Locust St	\N	\N	\N	Urban	MA	Bristol	Fall River	\N	\N	\N	\N	2	\N	2
Bandstand Park	\N	South Main St	Elm St	02702	\N	\N	Urban	MA	Bristol	Freetown
Central Park	\N	Memorial Dr	Bullock Rd	02717	\N	\N	Urban	MA	Bristol	Freetown	1	\N	\N	1	1	1
Hathaway Park	\N	\N	\N	\N	41.793992	-71.072482	Urban	MA	Bristol	Freetown	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Memorial Park	\N	Memorial Dr	Chace Rd	02717	\N	\N	Urban	MA	Bristol	Freetown
Porter's Shore	\N	Gramp Deane Rd	Jeffrey Ln	02702	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	\N	\N	\N	10
Rezendes Baseball Complex	13 Narrows Rd	\N	\N	02702	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	1
Town Beach	99 Long Pond Rd	\N	\N	02717	\N	\N	Urban	MA	Bristol	Freetown	\N	\N	\N	1
Fultons Pond	\N	West St	Rumford Ave	02048	\N	\N	Urban	MA	Bristol	Mansfield
Hutchinson Fields	\N	Pratt St	Granada Cir	02048	\N	\N	Urban	MA	Bristol	Mansfield	\N	\N	\N	1	\N	1
Kingman Pond	\N	Dean St	Spring St	02048	\N	\N	Urban	MA	Bristol	Mansfield
Memorial Park	111 Hope St	\N	\N	02048	\N	\N	Urban	MA	Bristol	Mansfield	1	\N	1	1	1	1
Plymouth St Fields	5 Plymouth St	\N	\N	02048	\N	\N	Urban	MA	Bristol	Mansfield	1	\N	1	1	1
South Common	\N	Union St	West St	02048	\N	\N	Urban	MA	Bristol	Mansfield
Burchill Fields	38 Plain St	\N	\N	02766	\N	\N	Urban	MA	Bristol	Norton	\N	\N	\N	1
Everett Leonard Park	6 Parker St	\N	\N	02766	\N	\N	Urban	MA	Bristol	Norton	1	1	\N	1	1	1
Lyons Field	\N	Dean	Harvey St	02766	\N	\N	Urban	MA	Bristol	Norton	\N	\N	\N	1
Trecentennial Park and Community Playground	217 West Main St	\N	\N	02766	\N	\N	Urban	MA	Bristol	Norton	1
Borden Colony Athletic Complex	2215 King Philip St	\N	\N	02767	\N	\N	Urban	MA	Bristol	Raynham	1	\N	1	1	1	1
Johnson Pond	\N	N Main St	Kenny Rd	02767	\N	\N	Urban	MA	Bristol	Raynham
L.B. Merrill School	687 Pleasant St	\N	\N	02767	\N	\N	Urban	MA	Bristol	Raynham	1	\N	1	1	1	1
LaLiberte Elementary School	777 Pleasant St	\N	\N	02767	\N	\N	Urban	MA	Bristol	Raynham	1	\N	\N	1	1	1
Raynham Middle School	420 Titicut Rd	\N	\N	02767	\N	\N	Urban	MA	Bristol	Raynham	\N	\N	1	1	1	1
Village Waterfront Park	\N	\N	\N	\N	41.769941	-71.124748	Urban	MA	Bristol	Somerset	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Swansea Project Playground	\N	Milford Rd	School St	02777	\N	\N	Urban	MA	Bristol	Swansea	1	\N	1	1	1	1
Amesbury Town Park and Skate Park	140 Friend St	\N	\N	01913	\N	\N	Urban	MA	Essex	Amesbury	1	\N	\N	1	1	1
Batchelder Park	\N	\N	\N	\N	42.866434	-70.939751	Urban	MA	Essex	Amesbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Collins St Field	\N	Collins St	Collins Ave	01913	\N	\N	Urban	MA	Essex	Amesbury	\N	\N	\N	1	1
Deer Island	1 Deer Island st	\N	\N	01913	\N	\N	Urban	MA	Essex	Amesbury
Lake Gardner Beach	\N	\N	\N	\N	42.86045	-70.937616	Urban	MA	Essex	Amesbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Woodsom Farm	222 Lions Mouth Rd	\N	\N	01913	\N	\N	Urban	MA	Essex	Amesbury	\N	\N	\N	\N	\N	1
Pomps Pond	\N	\N	\N	\N	42.636599	-71.149609	Urban	MA	Essex	Andover	1	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Recreation Park	9 Woburn St	\N	\N	01810	\N	\N	Urban	MA	Essex	Andover	1	\N	1	1
The Park	\N	Bartlet St	Chestnut St	01810	\N	\N	Urban	MA	Essex	Andover
Ahearn Park	\N	Fayette St	S Hardy St	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	\N	1
Ayers Ryal Side Elementary School	40 Woodland Ave	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	\N	1	1	9.7
Balch Park	\N	Cabot St	Balch St	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1	1
Bessie Baker Park	373R Cabot St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1
Beverly Common	\N	Essex St	Dane St	01915	\N	\N	Urban	MA	Essex	Beverly
Beverly Dog Park	\N	LP Henderson Rd	San Fonzo Dr	01915	\N	\N	Dog	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	1
Beverly High School	100 Sohier Rd	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1	1	1
Birch Plains Park	\N	Cabot St	LP Henderson Rd	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	1
Brackenberry Beach	\N	\N	\N	\N	42.550772	-70.851656	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Briscoe Middle School	7 Sohier Rd	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	1	1	6.5
Cahill Park and Centerville Playground	17 Hull St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	1	1	\N	1	12.48
Colgate Park	\N	Colgate Rd	Radcliffe Rd	01915	\N	\N	Urban	MA	Essex	Beverly	1
Cooney Field	105 Essex St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1	\N	1
Cove Elementary School	2 Eisenhower Ave	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	1	9.0
David S. Lynch Memorial Park	\N	Ober St	Oceanside Dr	01915	\N	\N	Urban	MA	Essex	Beverly	1
Dix Park	\N	Haskell St	Goodwin Rd	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1
Femino Park	\N	Lindsey Ave	Stewart Ave	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1
Gillis Park	98 Porter St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	\N	1
Hannah Elementary School	41 Brimbal Ave	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1	1	1
Harry Ball Field	406 Essex St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1
Hellard-Hubis Park	\N	McKay St	Sturtevant St	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	\N	1
Herlihy Park	15 Livingstone Ave	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1
Holcroft Park	\N	Gage St	Mill St	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	\N	1
Independence Park	\N	Lothrop St	Wilson Ave	01915	\N	\N	Urban	MA	Essex	Beverly
Innocenti Park	\N	McPherson Dr	River St	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	\N	1	1
Kimball-Haskell Park	\N	Cross St	Ray St	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	1	1	1
Longfellow Tot Lot	52 Middlebury Ln	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	\N	\N	1	\N	1
Lyons Park	111 Lothrop St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1
McArthur Park	34 Simon St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1
McKeown Elementary School	70 Balch St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	\N	1	6.5
Norman Gilbert Park	Stone St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1
North Beverly Elementary School	48 Putnam St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	\N	1	1	5.89
Oak Heights	\N	Old Town Rd	Deer Haven Rd	01915	\N	\N	Urban	MA	Essex	Beverly	1
Obear Park	145 Livingstone Ave	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	1	1	1
Odell Park	158 Rantoul St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly
Rice's Beach	\N	\N	\N	\N	42.54702	-70.858088	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Sally Milligan Park	86 Cross Ln	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly
Sam Carratu Park	154 Park St	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1
Sandy Point	\N	\N	\N	\N	42.54042	-70.877995	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Vittori Park	\N	Cabot St	Conant St	01915	\N	\N	Urban	MA	Essex	Beverly	1	\N	\N	1	1
Wardell Square	\N	Brimbal Ave	Colon St	01915	\N	\N	Urban	MA	Essex	Beverly
Wentworth Tot Lot	10 Wentworth Dr	\N	\N	01915	\N	\N	Urban	MA	Essex	Beverly	1
Woodbury Beach	\N	\N	\N	\N	42.546961	-70.862795	Urban	MA	Essex	Beverly	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Christopher Cargill Fields	26 Middleton Rd	\N	\N	01921	\N	\N	Urban	MA	Essex	Boxford	1	\N	\N	1
Eric Luther Boy Scout Park and Robert M Ackerman Playground	\N	Dana Rd	Cahoon Rd	01921	\N	\N	Urban	MA	Essex	Boxford	1	\N	\N	1	\N	1
Johnson and Chadwick Fields	19 Spofford Rd	\N	\N	01921	\N	\N	Urban	MA	Essex	Boxford	\N	\N	\N	1	\N	1
Keith R. Koster Park	15 Stiles Pond Rd 	\N	\N	01921	\N	\N	Urban	MA	Essex	Boxford	\N	\N	\N	1
Morse Field	188 Washington St	\N	\N	01921	\N	\N	Urban	MA	Essex	Boxford	\N	\N	\N	1	1
Spofford Pond School	31 Spofford Rd	\N	\N	01921	\N	\N	Urban	MA	Essex	Boxford	1	\N	\N	1
Bradstreet Park	21 Bradstreet Ave	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Choate Farm	401 Locust St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers
Danvers High School	60 Cabot Rd	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	\N	1
Endicott Park	57 Forest St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Folly Hill Park	12 Upland Rd	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	\N	1
Gates Field	15 Stone St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	\N	\N	\N	\N	\N	1
Great Oak School	76 Pickering St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	1
Highlands School	190 Hobart St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	1	1
John George Park	35 River St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	\N	1
Lawrence Street Park	46 Lawrence St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Plains Park	55 Conant St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	1	1
Preston Street Park	31 Preston St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Putnamville Park	11 Wenham Rd	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Rand Circle Park	12 Rand Cir	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Riverside School	95 Liberty St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	1	1
Sandy Beach	44 River St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Smith School	2 Orrantia Cir	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	1	1
Southwick Park	15 Tipert St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1
Tapley Park	139 Pine St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	\N	1
Thorpe School	30 Avon Rd	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1	\N	1
Williams School/Art Association	105 Elliot St	\N	\N	01923	\N	\N	Urban	MA	Essex	Danvers	1	\N	\N	1
Centennial Grove/Field of Dreams	46 Centennial Grove Rd	\N	\N	01929	\N	\N	Urban	MA	Essex	Essex	\N	\N	\N	1	\N	1
Essex Elementary School	12 Story St	\N	\N	01932	\N	\N	Urban	MA	Essex	Essex	1	\N	\N	\N	1	\N	10
Memorial Park	24 Martin St	\N	\N	01933	\N	\N	Urban	MA	Essex	Essex	1	\N	1	1	1	\N	16
American Legion Park	\N	Milton Way	Pentucket Ave	01833	\N	\N	Urban	MA	Essex	Georgetown	1	\N	1	1	1	1	9
Harry Murch Park	\N	Library St	E Main St	01835	\N	\N	Urban	MA	Essex	Georgetown	\N	\N	\N	\N	\N	\N	0.5
Joseph Soucy Memorial Playground / Penn Brook School	68 Elm St	\N	\N	01833	\N	\N	Urban	MA	Essex	Georgetown	1	\N	\N	1	1	1	48
Wellfields	\N	\N	\N	\N	42.721385	-71.020582	Urban	MA	Essex	Georgetown	\N	\N	\N	\N	\N	1	100.8	\N	\N	Coordinates
Apple Street Playground	1 Apple St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	1	2.9
Babson Playground	\N	Poplar St	Russell Ave	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	\N	0.2
Bayview Playground	891 Washington St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	\N	0.8
Beeman School Playground	138 Cherry St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	1	1	\N	2.2
Ben Smith Playground	East Main St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	\N	0.4
Burke Playground	620 Western Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	1	\N	1	6.6
Burnham's Field	75 Pleasant St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	1	1	\N	6.7
Ciaramitaro/Gemellaro Playground	25 Fort Square	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	1	\N	1
East Gloucester Elementary School Field and Parsons Playground	9 Davis St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	1	2.66
Elizabeth Road Playground and Para Research Field	11 Abbott Rd	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	1	2.21
Ellery House Field	247 Washington St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	2.9
Fuller School Fields	4 School House Rd	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	\N	1	13.4
Ganine H. Doucette Playground / Green St Park	6 Green St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	1	1	\N	5.8
Gloucester High School Fields and Courts	32 Leslie O Johnson Rd	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	1	\N	\N	1	21.2
Gordon Thomas Park	5 EAST MAIN ST	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester
Governors Hill Park / Lookout Park	20 Commonwealth Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	1.13
Keith Trefry Park / Rocky Neck Park	Rocky Neck Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	2.1
Kettle Cove Field	644 Western Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	5.2
Knowlton Park / Viera Park	32 Fuller St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	0.3
Magnolia Park	\N	Magnolia Ave	Raymond St	01930	\N	\N	Urban	MA	Essex	Gloucester
Magnolia Woods Recreational Area	472 Western Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	259.5
Middleton Playground	\N	Friend St	Friend Ct	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	1	\N	0.6
Newell Stadium	26 Centennial Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	8.2
O'Maley School Fields and Skatepark	32 Cherry St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	1	1	30.1
Plum Cove Recreation Area and Sepalla Field	1007 Washington St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	\N	\N	55.85
Plum Cove School	15 Hickory St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	\N	16.3
Ravenswood	481 Western Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	598.7
Rebecca's Playground	\N	Washington St	Morgan Ave	01930	\N	\N	Urban	MA	Essex	Gloucester	1
St. Peters Park / Gilbert's Landing	2 Commercial St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	1
Stacy Boulevard	\N	Western Ave	 Middle St	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	1
Stage Fort Park	24 Hough Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	1	1	\N	1	61
Surf Park	6 Magnolia Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	\N	0.64
Swinsons Field/Farm	\N	\N	\N	\N	42.605002	-70.648769	Urban	MA	Essex	Gloucester	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
The Oval Playground / Palazola Playground	92 CENTENNIAL Ave	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	1	\N	\N	2.71
Veterans Memorial School and Mattos Field	11 Webster St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	\N	\N	1	6.3
West Parish School and Science Park	10 Concord St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	1	\N	\N	1	1	\N	20.1
Wilson's Field	353 Washington St	\N	\N	01930	\N	\N	Urban	MA	Essex	Gloucester	\N	\N	\N	1	\N	\N	16.8
Elm Park	\N	Elm Park	Gardner St	01834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	\N	1.2
Perry Park	\N	Main St	King St	01834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	\N	2.4
Pines Recreation Area	222 Main St	\N	\N	01834	\N	\N	Urban	MA	Essex	Groveland	1	\N	\N	1	1	1	21
Shanahan Field	423 Main St	\N	\N	01834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	1	9.3
South Groveland Fire Station	181 Main St	\N	\N	01834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	1
Veasey Memorial Park	201 Washington St	\N	\N	01834	\N	\N	Urban	MA	Essex	Groveland	\N	\N	\N	\N	\N	\N	47.5
Washington Park	89 Center St	\N	\N	01834	\N	\N	Urban	MA	Essex	Groveland	1	\N	\N	1	1	\N	11.3
Cutler School	237 Asbury St	\N	\N	01982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1
Donovan Field	\N	\N	\N	\N	42.63013	-70.823557	Urban	MA	Essex	Hamilton	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Fairhaven Field	\N	Linden St	Marjorie St	01982	\N	\N	Urban	MA	Essex	Hamilton	1	\N	\N	\N	\N	1
Hailton-Wenham Regional High School	775 Bay Rd	\N	\N	01982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1	\N	1
Middle School	787 Bay Rd	\N	\N	01982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1
Patton Park	340 Bay Rd	\N	\N	01982	\N	\N	Urban	MA	Essex	Hamilton	1	1	1	1	1	1
Pingree School	537 Highland St	\N	\N	01982	\N	\N	Urban	MA	Essex	Hamilton	1	\N	1	1	\N	1
Winthrop School	325 Bay Rd	\N	\N	01982	\N	\N	Urban	MA	Essex	Hamilton	\N	\N	\N	1
Riverside Park	\N	Lincoln Ave	Nettleton Ave	01830	\N	\N	Urban	MA	Essex	Heverhill	1	\N	1	1	1	1
Wainnekini Park	\N	Kenoza Ave	Shore Dr	01830	\N	\N	Urban	MA	Essex	Heverhill	1	\N	1
Bialek Park	\N	Linebrook Rd	Maple Ave	01938	\N	\N	Urban	MA	Essex	Ipswich	1	\N	1	1	1	1
Doyon School	216 Linebrook Rd	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	1	\N	\N	1	1	1
Father Rye Playground	29 Kimball St	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	1
Giles Firman Playground	\N	\N	\N	\N	42.673047	-70.836075	Urban	MA	Essex	Ipswich	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Great Neck Park / Pavillion Beach	128 Little Neck Rd	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	1	\N	\N	\N	1	1
Green Street Town Hall	25 Green St	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	1	1	1
Howe St Playground	11 Howe St	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	1
Middle School and High School Fields	130 High St	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	1	1	\N	1
Miles Lane Ball Fields	65 Mile Ln	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	1	\N	1
Nichols Field	60 Labor in Vain Rd	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	15
Pocket Park	County St	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
Saw Mill Point Pocket Park	County St	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
Strawberry Hill	56 Jeffreys Neck Rd	\N	\N	01938	\N	\N	Urban	MA	Essex	Ipswich	\N	\N	\N	\N	\N	\N	91
Bourgoin Square Park	\N	West St	Wendell St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1	\N	1
Campagnone Common	\N	Common St	Lawrence St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1
Costello Park	\N	Crawford St	Abbott St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	1	\N	1
Den Rock Park	\N	\N	\N	\N	42.68074775	-71.13997697	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Donovan Park	\N	Andover St	Beacon St	\N	\N	\N	Urban	MA	Essex	Lawrence	1
Dr. Nina Scarito Park	\N	\N	\N	\N	42.714029	-71.15372513	Urban	MA	Essex	Lawrence	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Durant Square	\N	Berkeley St	East Haverhill St	\N	\N	\N	Urban	MA	Essex	Lawrence
Frank W. Rowell Park	\N	Auburn St	Cedar St	\N	\N	\N	Urban	MA	Essex	Lawrence	1
Gagnon Park	\N	Providence St	Shawmut St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1
Hayden Schofield Playstead	\N	Lawrence St	Myrtle St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1
Highland Park	\N	Park St	Broadway	\N	\N	\N	Urban	MA	Essex	Lawrence
Howard Playstead	\N	Lawrence St	Hampshire St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1
Immigrant Place	\N	Chesnut St	Short St	\N	\N	\N	Urban	MA	Essex	Lawrence
Jeremiah J. Cronin Park	\N	Alder St	Poplar St	\N	\N	\N	Urban	MA	Essex	Lawrence	1
Manchester Street Park	77 Manchester St	\N	\N	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	\N	\N	1	5
McDermott Park	\N	Bailey St	Parker St	\N	\N	\N	Urban	MA	Essex	Lawrence	1
Misserville Park	\N	Allen St	Summer St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	\N	\N	1
Mount Vernon Park	\N	Crestshire Dr	Barnard Rd	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1	1
N. Common Neighborhood Reviviendo	\N	Newbury St	Summer St	\N	\N	\N	Urban	MA	Essex	Lawrence	1
O'Connell South Common	\N	South Union St	Market St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1	\N	1
O'Neill Park	\N	Lawrence St	Oak St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	\N	1	\N	1
Plainsman Park	\N	White St	Chestnut St	\N	\N	\N	Urban	MA	Essex	Lawrence
Reservoir Park	\N	Reservoir St	Ames St	\N	\N	\N	Urban	MA	Essex	Lawrence	\N	\N	1
Shawsheen Park	\N	\N	\N	\N	42.69468938	-71.1447617	Urban	MA	Essex	Lawrence	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Stockton Park	\N	Route 114	Union St	\N	\N	\N	Urban	MA	Essex	Lawrence
Storrow Park	\N	High St	Pleasant St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	\N	1
Sullivan Park	\N	Route 114	North Parish Rd	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	1	\N	1
Van Doorne Park	\N	Doyle St	School St	\N	\N	\N	Urban	MA	Essex	Lawrence	1
William Kennedy Community Park	\N	Holly St	Daisy St	\N	\N	\N	Urban	MA	Essex	Lawrence	1	\N	\N	1
Ames Playground	\N	Strawberry Ave	Chester Pl	01904	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	\N	1
Barry Park	\N	Waterford St	Batchelders Ct	01905	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1	1
Bennett Street Playground	\N	Bennett St	Elmwood Ave)	01905	\N	\N	Urban	MA	Essex	Lynn	1	\N	\N	\N	1
Breed Park	\N	O�Callaghan Way	Breed Jr High	01905	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	1	1
Camp Kiwanis	\N	\N	\N	\N	42.476457	-70.9877	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Clark Street Playground	\N	Pacific St	Boylston St	01902	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1
Cook Street Playground	\N	Cook St	Eade St	01902	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	\N	1
Elm Street Playground	\N	\N	\N	\N	42.461289	-70.9632	Urban	MA	Essex	Lynn	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Filene Playground	630 Western Ave	\N	\N	01905	\N	\N	Urban	MA	Essex	Lynn	1
Flax Pond Playground	37 Towns Ct	\N	\N	01904	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	\N	1
Floating Bridge Park	\N	Western Ave	Eastern Ave	01904	\N	\N	Urban	MA	Essex	Lynn
Frasier Field	76 Locust St	\N	\N	01904	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	1	\N	1
Frey Playground	\N	Walnut St	Tranfaglia Rd	01905	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1
G.E.A.A. Field	671 Summer St	\N	\N	01905	\N	\N	Urban	MA	Essex	Lynn	\N	\N	1	1	1	1
Gallagher Playground	\N	Ontario St	Tapley St	01904	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1	1
Goldfish Pond/Lafayette Park	31 Lafayette Park	\N	\N	01902	\N	\N	Urban	MA	Essex	Lynn
Gowdy Park	\N	Maple Valley Rd	Tuscan Rd	01904	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1	1
Henry Avenue Playground	\N	Henry Ave	Nichols Ave	01902	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	\N	1
High Rock Park	30 Circuit Ave	\N	\N	01902	\N	\N	Urban	MA	Essex	Lynn	1	\N	\N	\N	\N	1
Hood Park	\N	Winnepurkit Ave	Holyoke St	01905	\N	\N	Urban	MA	Essex	Lynn	1	\N	\N	\N	1	1
Keaney Park	\N	Memorial Park Ave	Adams St	01902	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1	1
Kiley Playground	81 Burrill Ave	\N	\N	01902	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1
Lynn Commons	\N	\N	\N	\N	42.463225	-70.9596	Urban	MA	Essex	Lynn	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Lynn Woods Playground	\N	\N	\N	\N	42.477035	-70.9862	Urban	MA	Essex	Lynn	\N	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Magnolia Ave. Playground	\N	Magnolia Ave	Meadow Ct	01904	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	1	1	1
Neptune Blvd. Park	\N	Bennet St	Commercial St	01902	\N	\N	Urban	MA	Essex	Lynn	\N	\N	\N	1	\N	1
Northern Ave. Playground	\N	Northern Ave	Blanchard St	01904	\N	\N	Urban	MA	Essex	Lynn	1	\N	\N	\N	1
River St. Playground	\N	River St	Cooper St	01905	\N	\N	Urban	MA	Essex	Lynn
Sagamore St. Playground	\N	Sagamore St	Newhall St	01902	\N	\N	Urban	MA	Essex	Lynn	1
Sheridan Street Playground	26 Sheridan St	\N	\N	01902	\N	\N	Urban	MA	Essex	Lynn	1
Smith Street Playground	\N	Smith St	School St	01902	\N	\N	Urban	MA	Essex	Lynn	1	\N	\N	\N	1
Warren Street Playground	\N	Warren St	George St	01905	\N	\N	Urban	MA	Essex	Lynn	1	\N	1	\N	1
Williams Ave. Playground	81 Williams Ave	\N	\N	01902	\N	\N	Urban	MA	Essex	Lynn
Freeman Park	\N	Main St	Summer St	01940	\N	\N	Urban	MA	Essex	Lynnfield
Glen Meadow Park	\N	\N	\N	\N	42.523696	-71.02644	Urban	MA	Essex	Lynnfield	1	\N	1	1	1	\N	\N	\N	\N	Coordinates
Huckleberry Hill School	5 Knoll Rd	\N	\N	01940	\N	\N	Urban	MA	Essex	Lynnfield	1	\N	\N	1	1
Jordan/Pioneer Park	\N	Wildwood Dr	Pillings Pond Rd	01940	\N	\N	Urban	MA	Essex	Lynnfield	1	\N	\N	\N	1	1
Lynnfield High School	257 Essex St	\N	\N	01940	\N	\N	Urban	MA	Essex	Lynnfield	\N	\N	1	1	1	1
Lynnfield Middle School	505 Main St	\N	\N	01940	\N	\N	Urban	MA	Essex	Lynnfield	\N	\N	1	1	1	1
Lynnfield South School	525 Salem St	\N	\N	01940	\N	\N	Urban	MA	Essex	Lynnfield	1
Lynnfield Town Common	\N	Main St	Summer St	01940	\N	\N	Urban	MA	Essex	Lynnfield	1
Newhall Park at Suntaug	7 Oak St	\N	\N	01940	\N	\N	Urban	MA	Essex	Lynnfield	1	\N	1	1
Pine Hill Lot	\N	\N	\N	\N	42.54613958	-71.03613441	Urban	MA	Essex	Lynnfield	1	\N	\N	\N	\N	\N	9.5	\N	\N	Coordinates
Summer Street School	262 Summer St	\N	\N	01940	\N	\N	Urban	MA	Essex	Lynnfield	1	\N	\N	1	1
Black Beach	\N	\N	\N	\N	42.579121	-70.73196	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Coach Field Playground	\N	Norwood Ave	Brook St	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	1	\N	1	\N	\N	1
Hinckley Park	\N	Pleasant St	School St	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea
Masconomo Park	\N	Tappan St	Beach St	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	1	\N	\N	1
Reed Park & Pier	\N	\N	\N	\N	42.573314	-70.770322	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Singing Beach	119 Beach St	\N	\N	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea
Surf Park	Raymond St	\N	\N	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
Sweeney Park	113 Summer St	\N	\N	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	1	1	1
Tuck�s Point	17 Tucks Point Rd	\N	\N	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea	1
West Manchester Beach	\N	\N	\N	\N	42.565262	-70.786623	Urban	MA	Essex	Macheter-by-the-Sea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
White Beach	\N	Ocean St	Crow Island	01944	\N	\N	Urban	MA	Essex	Macheter-by-the-Sea
Castle Rock Park	377 Ocean Ave	\N	\N	01945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	1.2
Chandler Hovey Park / Lighthouse Point	\N	Follet St	Lighthouse Ln	01945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	3.74
Crocker Park	1 Front St	\N	\N	01945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	2.82
Fort Sewall	\N	Fort Sewall Ln	Front St	01945	\N	\N	Urban	MA	Essex	Marblehead
Fountain Park	\N	\N	\N	\N	42.510666	-70.845157	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Gatchell Playground	60 Lafayette St	\N	\N	01945	\N	\N	Urban	MA	Essex	Marblehead	1	\N	\N	1	1	1	8.33
Gerry Playground	\N	Stramski Way	West Shore Dr	01945	\N	\N	Urban	MA	Essex	Marblehead	1	\N	\N	\N	\N	\N	6.85
Hammond Park	\N	Commercial St	Cliff St	01945	\N	\N	Urban	MA	Essex	Marblehead
Hobbs Playground	\N	Clifton Ave	Brook Rd	01945	\N	\N	Urban	MA	Essex	Marblehead	1	\N	\N	1	\N	\N	1.14
Memorial Park	\N	Essex St	Pleasant St	01945	\N	\N	Urban	MA	Essex	Marblehead	\N	\N	\N	\N	\N	\N	0.32
Orne Playground	20 Shepard St	\N	\N	01945	\N	\N	Urban	MA	Essex	Marblehead	1	\N	\N	1	\N	\N	5.22
Reynolds Playground	\N	Lime St	Farrell Ct	01945	\N	\N	Urban	MA	Essex	Marblehead	1	\N	\N	1	\N	1	5.45
Seaside Park	92 Atlantic Ave	\N	\N	01945	\N	\N	Urban	MA	Essex	Marblehead	1	\N	1	1	1	1	33.7
Carey Park	\N	\N	\N	\N	42.825362	-70.984694	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	0.8	\N	\N	Coordinates
Carriagetown Park	\N	\N	\N	\N	42.830231	-70.978761	Urban	MA	Essex	Merrimac	\N	\N	\N	1	\N	1	17.94	\N	\N	Coordinates
Cobbler's Brook	\N	Broad St	Lancaster Ct	01860	\N	\N	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	4.9
Donahue School/Stevens Athletic Fields	\N	Locust St	Union St	01860	\N	\N	Urban	MA	Essex	Merrimac	1	\N	1	1	1	\N	16.3
Indian Head Park	\N	\N	\N	\N	42.840345	-70.98891	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	31	\N	\N	Coordinates
Kimball Park	\N	W Main St	Union St	01860	\N	\N	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	0.7
River Road Peninsula	\N	\N	\N	\N	42.825513	-70.982591	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	\N	0.8	\N	\N	Coordinates
Sweetsir School	\N	Church St	Hansom Dr	01860	\N	\N	Urban	MA	Essex	Merrimac	1	\N	\N	\N	\N	\N	10.7
Town Forest Park	\N	\N	\N	\N	42.838964	-71.016473	Urban	MA	Essex	Merrimac	\N	\N	\N	\N	\N	1	286.2	\N	\N	Coordinates
ASHFORD STREET	\N	\N	\N	\N	42.72774508	-71.15	Urban	MA	Essex	Methuen	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
BICENTENNIAL PARK	BROADWAY PARK	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
CENTRAL BUILDING	\N	\N	\N	\N	42.72296219	-71.18	Urban	MA	Essex	Methuen	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
CGS SCHOOL	100 Howe St	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	1	\N	1
CHELMSFORD ST	\N	CHELMSFORD ST	Lawrence St	01844	\N	\N	Urban	MA	Essex	Methuen	1
FOREST LAKE	\N	\N	\N	\N	42.73103366	-71.25	Urban	MA	Essex	Methuen	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
FRANCIS MORSE PARK	25 Burnham Rd	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	1	\N	1
GILL AVENUE	\N	Gill Ave	Railroad St	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	\N	1	1
MARSH SCHOOL	309 Pelham St	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	\N	1
METHUEN HIGH SCHOOL	1 RANGER RD	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	1	\N	1	1
NEIL PLAYSTEAD	\N	LAWRENCE ST	 East St	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	1
OAKLAND SCHOOL	125 Oakland Ave	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	1
PLEASANT VALLEY SCHOOL	180 Pleasant Valley St	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1
POTTERS FIELD	\N	\N	\N	\N	42.72731616	-71.2	Urban	MA	Essex	Methuen	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
RAYMOND MARTIN PARK	\N	RIVERSIDE DR	Burham Rd	01844	\N	\N	Urban	MA	Essex	Methuen	1
RIVERWALK PARK	\N	\N	\N	\N	42.726961	-71.19	Urban	MA	Essex	Methuen	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
SARGENT FIELD	\N	WEST AYER ST	Holly St	01844	\N	\N	Urban	MA	Essex	Methuen	\N	\N	\N	1	1
SHORTYS PARK	\N	Mystic St	Lindberg Ave	01844	\N	\N	Urban	MA	Essex	Methuen	1
SHRUENDER PARK	\N	Riverview Blvd	Jason Rd	01844	\N	\N	Urban	MA	Essex	Methuen
TENNEY MIDDLE SCHOOL	75 PLEASANT ST	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	\N	1	1
TENNEY ST	\N	\N	\N	\N	42.722087	-71.18	Urban	MA	Essex	Methuen	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
TENNIS COURT	\N	COPLEY DR	OLD HOMESTEAD Rd	01844	\N	\N	Urban	MA	Essex	Methuen	\N	\N	1
TIMONY SCHOOL	45 PLEASANT VIEW ST	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	\N	\N	1
VETERANS PARK	\N	\N	\N	\N	42.737313	-71.15	Urban	MA	Essex	Methuen	1	\N	\N	1	1	1	\N	\N	\N	Coordinates
YMCA FIELDS	129 Haverhill St	\N	\N	01844	\N	\N	Urban	MA	Essex	Methuen	1	\N	\N	1	1
16 James Ave Steps	\N	James Ave	Lennox Rd	01908	\N	\N	Urban	MA	Essex	Nahant
Bailys Hill	\N	Trimountain Rd	Bass Point Rd	01908	\N	\N	Urban	MA	Essex	Nahant
East Point / Lodge Park	\N	\N	\N	\N	42.418669	-70.903991	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Flash Road Playground	55 Flash Rd	\N	\N	01908	\N	\N	Urban	MA	Essex	Nahant	1	\N	1	1	1	1
Little Nahant Playground	\N	\N	\N	\N	42.433417	-70.935094	Urban	MA	Essex	Nahant	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Lowlands Playground	\N	\N	\N	\N	42.428133	-70.931581	Urban	MA	Essex	Nahant	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Marjoram Park	\N	Willow Rd	Wharf St	01908	\N	\N	Urban	MA	Essex	Nahant
Pleasant Street Playground	\N	Pleasant St	Central St	01908	\N	\N	Urban	MA	Essex	Nahant	1
Spring Road Basketball Court	\N	\N	\N	\N	42.426848	-70.930392	Urban	MA	Essex	Nahant	\N	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Swallow Cave	\N	\N	\N	\N	42.416362	-70.910418	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Veterans Park	\N	\N	\N	\N	42.429632	-70.933485	Urban	MA	Essex	Nahant	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Central St Complex	\N	Central St	Fatherland Dr	01922	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	\N	\N	1
Kent Way / Lunt St Complex	\N	Lunt St	Main St	01922	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	1
Lower Green	\N	High Rd	Newman Rd	01951	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	1
Newbury Elementary School	63 Hanover St	\N	\N	01951	\N	\N	Urban	MA	Essex	Newbury	1	\N	\N	1	1	1
Upper Green	\N	High Rd	Hanover St	01951	\N	\N	Urban	MA	Essex	Newbury	\N	\N	\N	1
Atkinson Common	\N	Mosley Ave	High St	01950	\N	\N	Urban	MA	Essex	Newburyport	1	\N	1	1	1
Atwood Park	\N	Lime St	Atwood St	01950	\N	\N	Urban	MA	Essex	Newburyport	\N	\N	\N	\N	1
Bartlet Mall and Frog Pond Playground�	\N	Auburn St	High St	01950	\N	\N	Urban	MA	Essex	Newburyport	1	\N	\N	\N	1
Brown Square	\N	Titcomb St	Pleasant St	01950	\N	\N	Urban	MA	Essex	Newburyport
Cashman Park	5 Pop Crowley Way	\N	\N	01950	\N	\N	Urban	MA	Essex	Newburyport	1	\N	1	1	1	1
City Forest	\N	Hale St	Lavalley Ln	01950	\N	\N	Urban	MA	Essex	Newburyport
Cushing Park and Ayers Playground	\N	Congress St	Buck St	01950	\N	\N	Urban	MA	Essex	Newburyport	1	\N	\N	\N	1
Inn Street Playground	\N	\N	\N	\N	42.810774	-70.870645	Urban	MA	Essex	Newburyport	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Jason Sawyer Playground	\N	\N	\N	\N	42.815829	-70.81774	Urban	MA	Essex	Newburyport	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Joppa Park	212 Water St	\N	\N	01950	\N	\N	Urban	MA	Essex	Newburyport
March's Hill	\N	High Rd	Bromfield St	01950	\N	\N	Urban	MA	Essex	Newburyport
Moseley Woods	\N	Merrimac St	Spofford St	01950	\N	\N	Urban	MA	Essex	Newburyport	1
Perkins Playground	\N	Lincoln St	Beacon Ave	01950	\N	\N	Urban	MA	Essex	Newburyport	1	\N	1	1	1
Woodman Park	50 Crow Ln	\N	\N	01950	\N	\N	Urban	MA	Essex	Newburyport	1	\N	\N	1	1	1
APLIN	\N	Water St	Claredon St	01845	\N	\N	Urban	MA	Essex	North Andover	1	\N	\N	1	1
CARL THOMAS	\N	Dana St	Beverly St	01845	\N	\N	Urban	MA	Essex	North Andover	1	\N	\N	1
FOSTER FARM	\N	\N	\N	\N	42.667444	-71.1	Urban	MA	Essex	North Andover	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
GALLAGHER	\N	\N	\N	\N	42.683083	-71.1	Urban	MA	Essex	North Andover	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
GROGIES	\N	Baldwin St	Gilbert St	01845	\N	\N	Urban	MA	Essex	North Andover	1	\N	\N	1	1
MCEVOY/CHADWICK	\N	Chadwick St	Moody St	01845	\N	\N	Urban	MA	Essex	North Andover	1	\N	\N	1	1
North Andover MIDDLE SCHOOL Fields	495 Main St	\N	\N	01845	\N	\N	Urban	MA	Essex	North Andover	\N	\N	\N	1	1	1
REYNOLDS Park	\N	Johnson St	Rea St	01845	\N	\N	Urban	MA	Essex	North Andover	\N	\N	\N	\N	\N	1
SHARPNERS	\N	\N	\N	\N	42.628504	-71.1	Urban	MA	Essex	North Andover	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Bartholomew Pond P.G.	\N	\N	\N	\N	42.508036	-70.96351	Urban	MA	Essex	Peabody	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Brown School	150 Lynn St	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1
Buckley Field	\N	\N	\N	\N	42.531647	-70.925277	Urban	MA	Essex	Peabody	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Burke School	127 Birch St	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	\N	1
Castle Circle	\N	\N	\N	\N	42.533504	-70.942309	Urban	MA	Essex	Peabody	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Center School	18 Irving St	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1
Corbeil Park	\N	Russel St	Hoover Terr	01960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	1	1	1
Cottage St Playground	14 COTTAGE ST	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1
Emerson Park	\N	Perkins St	James St	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	1	1
Farnham Park	\N	Endicott St	Noble Ln	01960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	1
Forest St. Playground	\N	Forest St	Dudley St	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	\N	1
Higgins Middle School	\N	Allens Ln	Perkins St	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	\N	1
Kennedy Athletic Fields	\N	\N	\N	\N	42.545074	-71.002622	Urban	MA	Essex	Peabody	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Kiley Brothers Memorial School	21 Johnson St	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	1
Lakeshore Park	\N	Lakeshore Rd	Bay State Rd	01960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	\N	1	1
Lalikos Park	\N	Nancy Ave	Raylen Ave	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	1
Leather City Common	\N	Lowell St	School St	01960	\N	\N	Urban	MA	Essex	Peabody
Lt. Ross Park	\N	\N	\N	\N	42.544615	-70.992193	Urban	MA	Essex	Peabody	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
MacArthur Park	17 Macarthur Circle	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	1
Marrs Park	\N	Home St	Clement Ave	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	1	1
McCarthey School	76 Lake St	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1
Peabody Veterans Memorial High School Fields	485 Lowell St	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	1	1	\N	1
Pierpont Playground	\N	Piermont St	Fountain St	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	\N	1
Raddin Park	\N	Lynnfield St	Corwin St	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	1	1	1
South Memorial School and Carroll Savage Park	16 Maple St Ext	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1
Squanto Park	\N	\N	\N	\N	42.541673	-71.019139	Urban	MA	Essex	Peabody	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Symphony Park	\N	Symphony Rd	Catherine Dr	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	1
Thomas Carrol Schol and Connolly Park	\N	Dark Ln	Connolly Terr	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	1	1	1
Tot Lot- Loris Rd.	\N	Loris Rd	Blake St	01960	\N	\N	Urban	MA	Essex	Peabody	1
Welch School	50 Swampscott Ave	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	1	1
West Memorial School	15 Bow St	\N	\N	01960	\N	\N	Urban	MA	Essex	Peabody	1	\N	\N	\N	1
Whitney Playground	\N	\N	\N	\N	42.516578	-70.983168	Urban	MA	Essex	Peabody	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Willowbrae Park	\N	Willowbrae Dr	Livingston Dr	01960	\N	\N	Urban	MA	Essex	Peabody	\N	\N	\N	\N	1
Evans Field	32 Pooles Ln	\N	\N	01966	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	1	\N	1
Harvey	\N	\N	\N	01966	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Manning Park	\N	Squam Rd	Granite Rd	01960	\N	\N	Urban	MA	Essex	Rockport
Millbrook Meadow Park	\N	King St	Forest St	01966	\N	\N	Urban	MA	Essex	Rockport
Millbrook Pond Park	\N	\N	\N	\N	42.657778	-70.623443	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Pingree Park	\N	\N	\N	\N	42.674331	-70.625841	Urban	MA	Essex	Rockport	1	\N	1	1	1	\N	\N	\N	\N	Coordinates
School Playing Fields	26 Jerdens Ln	\N	\N	01966	\N	\N	Urban	MA	Essex	Rockport	1	\N	1	1	1	1
Seafencibles	\N	\N	\N	01966	\N	\N	Urban	MA	Essex	Rockport	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Eiras Park	477 Haverhill St	\N	\N	01969	\N	\N	Urban	MA	Essex	Rowley	1	\N	\N	1	\N	1	17.5
Haley Field	435 Haverhill St	\N	\N	01969	\N	\N	Urban	MA	Essex	Rowley
Pine Grove Elementary School	191 Main St	\N	\N	01969	\N	\N	Urban	MA	Essex	Rowley	1	\N	\N	1	1	1	16
Rowley Town Common	\N	Main St	Independent St	01969	\N	\N	Urban	MA	Essex	Rowley	\N	\N	\N	1	\N	1	2
33 Proctor St	33 Proctor St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.44
Bertram Field	1 Powder House Ln	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	1	5.5
Broad Street Park	Broad St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.5	\N	\N	Couldn�t Find
Camp Naumkeag	56 Memorial Dr	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	4.7
Castle Hill Playground	14 Story Rd	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	1	1	3.8
Collins Cove	2 Collins St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	32.6
Collins Cove Playground	31 Collins St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	1	1	1	\N	4.2
Common	\N	Washington Square	Winter St	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	1	\N	10.05
Curtis Park	19 March St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	1	\N	0.62
Dibiase Park	\N	\N	\N	\N	42.511174	-70.920246	Urban	MA	Essex	Salem	1	\N	\N	\N	1	\N	0.47	\N	\N	Coordinates
Forest River Park	38 Clifton Ave	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	1	1	1	1	\N	29
Fort Lee	100 Memorial Dr	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	16.03
Furlong Park	20 Franklin St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	1	\N	5.5
Gallows Hill Park and Playground	53 Hanson St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	1	1	22.21
Gonyea Park	41 Northey St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	\N	\N	0.14
Highland Park,	199 Highland Ave	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	270.63
Hight St. Park,	2 High St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	1	\N	0.51
Juniper Park	28 Beach Ave	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	1	\N	0.5
Kernwood Marina & McCabe Park	24 Kernwood St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	4.3
Lafayette Park	124 Lafayette St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.5
Lappin Park	112 Washington St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.11
Mack Park	\N	Mason St	Tremont St	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	1	\N	25.8
Mansell Park	50 Proctor St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	\N	1	1.5
Mary Jane Lee Park / Prince St Playground)	41 Palmer St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	1	\N	0.73
McGlew Park	\N	North St	Nursery St	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	1	1	2.4
McGrath Park	46 Marlborough Rd	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	1	\N	1	1	22.3
Memorial Park (Irzyk)	17 Fort Ave	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	1	1	7.4
Palmer Cove Park	30 Leavitt St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	1	1	1	\N	7.2
Patten Park	41 Buffum St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.08
Pickrnan Park	20 Lincoln Rd 	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	1	1	1	1	3.01
Splaine Park	23 May St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	1	1	\N	1.85
Swiniuch Park	128 Derby St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	\N	\N	\N	\N	0.03
Willows Park	\N	Fort Ave	Bayview Ave	01970	\N	\N	Urban	MA	Essex	Salem	\N	\N	1	\N	1	1	24.62
Winter Island	50 Winter Island Rd	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	\N	\N	27.1
Witchcraft Heights	1 Frederick St	\N	\N	01970	\N	\N	Urban	MA	Essex	Salem	1	\N	\N	\N	1	\N	15
Beach Road Field	215 Beach Rd	\N	\N	01952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	1
Lions Park	39 Lafayette Rd	\N	\N	01952	\N	\N	Urban	MA	Essex	Salisbury	1	\N	1	1	1	\N	\N	\N	\N	Coordinates
Memorial School	18 Maple St	\N	\N	01952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Salisbury Elementary School	100 Lafayette Rd	\N	\N	01952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	1	1	1
Skateboard Park	380 Beach Rd	\N	\N	01952	\N	\N	Urban	MA	Essex	Salisbury	\N	\N	\N	\N	\N	1
Anna Parker Playground	\N	Essex St	School St	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	1	1	1	1
Belmonte Middle School and World Series Park	25 Dow St	\N	\N	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	1	1	\N	1
Bristow Park�	\N	Bristow St	Barressi Ln	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	\N	1	1
Elks Field�	\N	Main St	Hickory Ln	01906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Grabowski Field	\N	Hurd Ave	Pelham St	01906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1
Lynnhurst Elementary School Field	10 Elm St	\N	\N	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	1	1	1
Oaklandvale Elementary School Field�	266 Main St	\N	\N	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	\N	1	1
Parcher Field at Kasabuski Rink	201 Forest St	\N	\N	01906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Saugus High School Fields	1 Pearce Memorial Dr	\N	\N	01906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	1
Stackpole Field	\N	Appleton St	Summer St	01906	\N	\N	Urban	MA	Essex	Saugus	\N	\N	\N	1	\N	1
Stocker Playground	\N	Winter St	Stocker St	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	\N	1	1
Veterans Elementary School	39 Hurd Ave	\N	\N	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	\N	\N	1	1
Waybright Elementary School Field	25 Talbot St	\N	\N	01906	\N	\N	Urban	MA	Essex	Saugus	1	\N	\N	1
Abbott Park	\N	Paradise Rd	Norfolk Ave	01907	\N	\N	Urban	MA	Essex	Swampscott	1	\N	\N	1	1
Hadley Playground	24 Redington St	\N	\N	01907	\N	\N	Urban	MA	Essex	Swampscott	1	\N	\N	1
Linscott Park	\N	Humphrey St	Monument Ave	01907	\N	\N	Urban	MA	Essex	Swampscott
Lower Jackson Park	1 Essex St	\N	\N	01907	\N	\N	Urban	MA	Essex	Swampscott	\N	\N	\N	1
Phillips Park	\N	Humphrey St	Pleasant St	01907	\N	\N	Urban	MA	Essex	Swampscott	1	\N	\N	1	1	1
Stanley School Park	2 Whitman Rd	\N	\N	01907	\N	\N	Urban	MA	Essex	Swampscott	1	\N	\N	1	1
Swampscott Middle School Field	207 Forest Ave	\N	\N	01907	\N	\N	Urban	MA	Essex	Swampscott	\N	\N	1	1
Upper Jackson Park	1 The Greenway	\N	\N	01907	\N	\N	Urban	MA	Essex	Swampscott	\N	\N	\N	\N	\N	1
Klock Park	17 North St	\N	\N	01983	\N	\N	Urban	MA	Essex	Topsfield	\N	\N	\N	1	\N	1
Proctor Elementary School	60 Main St	\N	\N	01983	\N	\N	Urban	MA	Essex	Topsfield	1	\N	1	1	1
Pye Brook Community Park	124 Haverhill Rd	\N	\N	01983	\N	\N	Urban	MA	Essex	Topsfield	1	\N	1	1	1	1
Steward School	261 Perkins Row	\N	\N	01983	\N	\N	Urban	MA	Essex	Topsfield	1	\N	1	1
Buker Elementary	1 School St	\N	\N	01984	\N	\N	Urban	MA	Essex	Wenham	1	\N	\N	1	1	1	7.1
Iron Rail Fields	\N	Grapevine Rd	Essex St	01984	\N	\N	Urban	MA	Essex	Wenham	\N	\N	\N	1	\N	1
Pingree Park	211 Main St	\N	\N	01984	\N	\N	Urban	MA	Essex	Wenham	1	\N	1	1	\N	1	8
West Wenham Park (Higgenson Bicentennial Playground)	122 Topsfield Rd	\N	\N	01984	\N	\N	Urban	MA	Essex	Wenham	\N	\N	1	\N	1	1	3.2
Cammett Park	\N	\N	\N	\N	42.799467	-70.987312	Urban	MA	Essex	West Newbury	1	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Page School	694 Main St	\N	\N	01985	\N	\N	Urban	MA	Essex	West Newbury	1	\N	\N	1	1
Pentucket Regional High School	24 Main St	\N	\N	01985	\N	\N	Urban	MA	Essex	West Newbury	\N	\N	1	1	\N	1
Pipestave Hill Recreation Area	\N	\N	\N	\N	42.805863	-70.960586	Urban	MA	Essex	West Newbury	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Concord Rd. Field	104 Concord Rd	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	1
Elm St. Fields	21 Elm St	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	1	\N	1	1	1	1
Gardner Field	\N	\N	\N	\N	42.47546	-71.47	Urban	MA	Middlesex	Acton	1	\N	\N	\N	1	1	\N	\N	\N	Coordinates
Goward Playground	486 Main St	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	1	\N	\N	\N	1
Great Hill and Little Great Hill	54 School St	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	1	\N	\N	\N	\N	1
Ice House Pond	\N	\N	\N	\N	42.477258	-71.41	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Jones Field	54 Martin St	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	1	\N	\N	1	\N	1
MacPherson Field and Hart Field	80 Taylor Rd	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	1	\N	\N	1
Morrison Farm Community Gardens	116 Concord Rd	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton
NARA Park	25 Ledge Rock Way	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	1	\N	\N	1	\N	1
North Acton Community Gardens	845 Main St	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton
School St. Fields	323 School St	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	1
T.J. O�Grady Skate Park	66 Hayward Rd	\N	\N	01720	\N	\N	Urban	MA	Middlesex	Acton	\N	\N	\N	\N	\N	1
Veteran�s Field	\N	Main St	Great Rd	01720	\N	\N	Urban	MA	Middlesex	Acton	1	\N	\N	1
Bishop Field	25 Columbia Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	1	1	1
Brackett School	66 Easter Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	\N	1
Buck Field	422 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1
Buzzell Field	29 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	1	1
Crosby School Tennis Courts	\N	Oxford St	Raleigh St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	1	\N	\N	1
Cutter School	\N	Robbins Rd	Howard St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1
Florence Field and Dallin School	185 Florence Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	1	1	1
Hardy School	52 Lake St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	\N	1
Hibbert Playground�	Hibbert St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1
Hill's Hill	422 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington
Hurd and Reservoir Fields	\N	Mass Ave	Drake Rd	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1	\N	1
Locke School Playground�	88 Park Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1
Lussiano Field and Thompson School	60 North Union St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	1	\N	1	1	1
Magnolia Park	\N	Herbert St	Magnolia St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	\N	1	1
McClennen Park	664 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	1	\N	1
Menotomy Rocks Park	\N	Jason St	Brantwood Rd	\N	\N	\N	Urban	MA	Middlesex	Arlington	1
Ottoson Middle School	63 Acton St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1
Parmenter Park	17 Irving St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	\N	1
Peirce School	85 Park Ave Extension	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	\N	1
Poet�s Corner Park	175 Dow Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	1	1	1
Robbins Farm Park	51 Eastern Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	1	\N	1
Robbins Library	700 Mass Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1
Scannell Field	90 Linwood St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1
Spy Pond Park�	\N	Pond Ln	Wellington St	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	1	1	\N	1
Stratton School	180 Mountain Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	\N	1
Summer Street Park	422 Summer St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1	\N	\N	1	1	1
The Great Meadows	\N	\N	\N	\N	42.432215	-71.201191	Urban	MA	Middlesex	Arlington	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Thorndike Field	99 Margaret St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	\N	\N	1
W. A. Peirce Field	869 Mass Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	\N	\N	\N	1	1	1
Whittemore Robbins House Park	700 Mass Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Arlington	1
Allen Field	92 Breed Rd	\N	\N	01431	\N	\N	Urban	MA	Middlesex	Ashby	1	\N	\N	1	\N	1
Ashby Elementary School	911 Main St	\N	\N	01431	\N	\N	Urban	MA	Middlesex	Ashby	1	\N	1	1	1	1
Ashby Town Common	\N	Main St	Common Rd	01431	\N	\N	Urban	MA	Middlesex	Ashby
Ashland Middle School	87 West Union St	\N	\N	01721	\N	\N	Urban	MA	Middlesex	Ashland	\N	\N	1	1	\N	1
Stone Park	\N	Park Rd	Cherry St	01721	\N	\N	Urban	MA	Middlesex	Ashland	1	\N	\N	1	1	1
Ayer Middle and Senior High Schools	141 Washington St	\N	\N	01432	\N	\N	Urban	MA	Middlesex	Ayer	\N	\N	1	1	\N	1
Nonaicoicus Park	\N	\N	\N	\N	42.561208	-71.5953	Urban	MA	Middlesex	Ayer	\N	\N	\N	\N	\N	\N	7	\N	\N	Coordinates
Page-Hilltop Elementary School	115 Washington St	\N	\N	01432	\N	\N	Urban	MA	Middlesex	Ayer	1
Pirone Park	\N	Bligh St	School St	01432	\N	\N	Urban	MA	Middlesex	Ayer	1	\N	\N	1	1	1
Sandy Pond Beach	\N	Sandy Pond Rd	Snake Hill Rd	01432	\N	\N	Urban	MA	Middlesex	Ayer	1	\N	\N	\N	1	1
Davis Elementary School	410 Davis Rd	\N	\N	01730	\N	\N	Urban	MA	Middlesex	Bedford	1
Depot Park	\N	Loomis St	S Rd	01730	\N	\N	Urban	MA	Middlesex	Bedford
Eliot Park	\N	\N	\N	\N	42.472694	-71.2684	Urban	MA	Middlesex	Bedford	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
High School & Middle School Complex	9 Mudge Way	\N	\N	01730	\N	\N	Urban	MA	Middlesex	Bedford	1	\N	1	1	1	1
Memorial Park	\N	Great Rd	Bacon Rd	01730	\N	\N	Urban	MA	Middlesex	Bedford
Page Field	\N	Loomis St	Deangelo Dr	01730	\N	\N	Urban	MA	Middlesex	Bedford	\N	\N	\N	1
South Road Fields	\N	S Rd	Fayette Rd	01730	\N	\N	Urban	MA	Middlesex	Bedford	\N	\N	\N	\N	\N	1
Springs Brook Park	\N	\N	\N	\N	42.499215	-71.2724	Urban	MA	Middlesex	Bedford	1	1	\N	1	1	1	\N	\N	\N	Coordinates
Belmont High School	221 Concord Ave	\N	\N	02478	\N	\N	Urban	MA	Middlesex	Belmont	\N	1	1	1	\N	\N	38
Burbank School	266 School St	\N	\N	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	\N	1
Butler School	90 White St	\N	\N	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	\N	1
Chenery School	95 Washington St	\N	\N	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	1	1
Grove Street	\N	Grove St	Huron Ave	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	1	1	\N	1	10
Payson Park	\N	Payson Rd	Elm St	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	\N	1
Pequosette Park	\N	Maple St	Chesnut St	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	1	\N	\N	1	7	\N	\N	East
Town Field	\N	Waverly	Beech Sts	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	\N	1	\N	1
Underwood	\N	School	Cottage Sts	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	1
Wellington School	121 Orchard St	\N	\N	02478	\N	\N	Urban	MA	Middlesex	Belmont	1
Winn Brook School	97 Waterhouse Rd	\N	\N	02478	\N	\N	Urban	MA	Middlesex	Belmont	1	\N	1	1	\N	\N	7
KIDS KONNECTION	\N	\N	\N	\N	42.560019	-71.2659	Urban	MA	Middlesex	Billerica	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
KOHLRAUSCH PARK	12 Colson St	\N	\N	01862	\N	\N	Urban	MA	Middlesex	Billerica	1	\N	\N	1
LAMPSON RECREATION COMPLEX	20 Campbell Rd	\N	\N	01862	\N	\N	Urban	MA	Middlesex	Billerica	1	\N	1	1	1	1
MICOZZI BEACH�	\N	\N	\N	\N	42.535625	-71.2652	Urban	MA	Middlesex	Billerica	1	\N	\N	\N	1	1	\N	\N	\N	Coordinates
PINEHURST PARK	793 Boston Rd	\N	\N	01862	\N	\N	Urban	MA	Middlesex	Billerica	1	\N	\N	\N	1	1
VIETNAM VETERANS PARK	\N	Treble Cove Rd	Farm Rd	01862	\N	\N	Urban	MA	Middlesex	Billerica	1	\N	\N	\N	\N	1	200
Blanchard Memorial School	493 Massachusetts Ave	\N	\N	01719	\N	\N	Urban	MA	Middlesex	Boxborough	1	\N	\N	1	1
Fifers Field	\N	\N	\N	\N	42.510205	-71.534	Urban	MA	Middlesex	Boxborough	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Flerra Meadows	\N	Stow Rd	Chester Rd	01719	\N	\N	Urban	MA	Middlesex	Boxborough	1	\N	\N	1	\N	1
Liberty Fields	1100 Liberty Square Rd	\N	\N	01719	\N	\N	Urban	MA	Middlesex	Boxborough	\N	\N	\N	1	\N	1
Marvin Field	South Bedford St	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	\N	\N	\N	1
Overlook Park	1 Edgemere Ave	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	\N	\N	1
Pathwoods Tot Lot	Pathwoods Ave	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	\N	\N	1
Rahanis Park	84 Mill St	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	1	1	1	1
Regan Park	88 Sumpter Rd	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	\N	1	1
Rotary Field	118 South Bedford St	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	\N	\N	\N	1
Simonds Park	\N	Bedford St	Cambridge St	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	1	1	1	1
Town Common	\N	Cambridge St	Center St	01803	\N	\N	Urban	MA	Middlesex	Burlington
TRW Park	\N	Mall Rd	Stoney Brook Rd	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	\N	1	\N	1
Veteran�s Park	Wilmington Rd	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	\N	1	1
Wildmere Playground	Wildmere Ave	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington
Wildwood Park	114 Bedford St	\N	\N	01803	\N	\N	Urban	MA	Middlesex	Burlington	1	\N	\N	\N	1	1
Ahern Field and Kennedy/Longfellow School	\N	Fulkerson St	Charles St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	1	1
Alberico Park	\N	Pleasant St	Allston St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1
Alden Park and Baldwin School	\N	Oxford St	Sacramento St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Anderson Courts	\N	Pemberton St	Yerxa Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	1	\N	1
Bergin Park	\N	Pemberton St	Haskell St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Cambridge Common	\N	Garden St	Waterhouse	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	\N	1
Cambridge Rindge & Latin School and War Memorial	459 Broadway	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Cambridgeport School	89 Elm St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Centanni Way	\N	Third St	Otis St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Charles Park	\N	Land Blvd	Rogers St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Clarendon Avenue Playground	\N	Mass Ave	Clarendon Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	\N	\N	1.5
Clement G. Morgan Park	\N	Columbia St	Washington St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1
Comeau Field	\N	\N	\N	\N	42.394131	-71.1377	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Cooper Park	\N	Hancock St	Centre St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Corporal Burns Park	\N	Memorial Dr	Flagg St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1	1	0.08
Costa Lopez Taylor Park	\N	Charles St	Lopez Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1	\N	16
Dana Park	\N	Magazine St	McTernan St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1	\N	0.75
Danehy Park	\N	Garden St	Field St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	1	\N	\N	1	\N	1	\N	1
David Nunes Park	\N	Brookline St	Allston St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1	1
Donnelly Field and King Open School	\N	Berkshire St	York St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	1
Elm/Hampshire Plaza	\N	Hampshire St	Elm St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Father Callanan Playground and Tobin School	\N	Concord Ave	Fern St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1
Flagstaff Park	\N	Mass Ave	Garden St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Fletcher/Maynard Academy	225 Windsor St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Fort Washington Park	95 Waverly St	\N	\N	\N	\N	\N	Dog	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	1
Franklin Street Park	\N	Franklin St	Bay St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Front Park	67 Cambridge Pkwy	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Fulmore Park	\N	Sidney St	Putnam Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Gannett/Warren Pals Park	\N	Harding St	Jefferson St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Garden Street Glen/Roethlisberger Memorial Park	\N	Garden St	Hazel St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Gibbons Park	\N	Columbus Ave	Kimball St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Glacken Field	\N	Huron Ave	Holworthy St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	1	1	1	1
Gold Star Mothers Park	\N	Gore St	Sixth St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	1	\N	\N	1	1	1	\N	1
Gold Star Mothers Pool	\N	Cambridge St	Berkshire St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	1
Graham and Parks School	44 Linnaean St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Greene � Rose Heritage Park	\N	Harvard St	Moore St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	1
Haggerty School	110 Cushing St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Hastings Square	\N	Brookline St	Henry St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Hoyt Field	\N	Western Ave	Howard St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	1	1	1
Hurley Park	\N	Hurley St	Fourth St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Joan Lorentz Park	\N	Broadway	Ellery St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
King School	100 Putnam Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Kingsley Park	Fresh Pond Pkwy	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Larch Road Park	119 Larch Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1
Lechmere Canal Park	\N	First St	Otis St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Lindstrom Field and Morse School	\N	Brookline St	Granite St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	1
Linear Park	\N	Harvey St	Clifton St	02140	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	\N	\N	\N	\N	Linear Park
Longfellow Park	\N	Mount Auburn St	Willard St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Lopez Street Park	34 Lopez St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Lowell School Park	\N	Mount Auburn St	Lowell St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1
Maple Avenue Park	\N	Maple Ave	Marie Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Market Street Park	\N	Market St	Bristol St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
McMath Park	\N	Pemberton St	Haskell St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
New Riverside Neighborhood Park	\N	Memorial Dr	Western Ave	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Old Longfellow School (High School Ext.)	359 Broadway 	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Pacific Street Open Space	\N	Pacific St	Sidney St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	1	\N	1
Paine Park	\N	Amory St	St Mary Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1
Pine Street Park	\N	School St	Pine St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Rafferty Park	\N	\N	\N	\N	42.39274	-71.1549	Urban	MA	Middlesex	Cambridge	1	\N	1	1	1	\N	\N	\N	\N	Coordinates
Raymond Park/Corcoran Field	\N	Upland Rd	Raymond St	\N	\N	\N	Dog	MA	Middlesex	Cambridge	1	\N	\N	1	1	1	\N	1
Reverend Williams Park	\N	Dudley St	Cedar St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	\N	1
Rindge Field and Peabody School	\N	Pemberton St	Yerxa Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1
Riverside Press Park	\N	Memorial Dr	River St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	1	\N	1
Russell/Samp Field	\N	Clifton St	Dudley St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	\N	1
Sacramento Field	9 Sacramento St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	1	1
Sennott Park	\N	Broadway	Norfolk St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	1	1
Silva Park	\N	Otis St	Sciarappa St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
Squirrel Brand Park	\N	Broadway	Boardman St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
St Peter's Field	\N	Sherman St	Cadbury Rd	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1	\N	\N	1	1
Tobin Field	\N	Concord Ave	Fern St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	1
Wilder-Lee Park	\N	Lee St	West St	\N	\N	\N	Urban	MA	Middlesex	Cambridge	1
William G. Maher Park	650 Concord Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Cambridge	\N	\N	\N	\N	\N	1
Winthrop Square	\N	JFK St	Winthrop St	\N	\N	\N	Urban	MA	Middlesex	Cambridge
Banta Davis Recreation Area	304 Bedford Rd	\N	\N	01741	\N	\N	Urban	MA	Middlesex	Carlisle	1	\N	\N	1	\N	1	39
Carlisle Castle	\N	Church St	School St	01741	\N	\N	Urban	MA	Middlesex	Carlisle	1
Carlisle Tennis Courts	\N	\N	\N	\N	42.526735	-71.347127	Urban	MA	Middlesex	Carlisle	\N	\N	1	\N	\N	\N	\N	\N	\N	Coordinates
Center Park	\N	\N	\N	\N	42.530079	-71.348342	Urban	MA	Middlesex	Carlisle	\N	\N	\N	\N	\N	\N	0.6	\N	\N	Coordinates
Diment Park and Spalding Field	225 Church St	\N	\N	01741	\N	\N	Urban	MA	Middlesex	Carlisle	1	\N	\N	1	\N	1	5
110 Baseball Fields	\N	Chelmsford St	Fletcher St	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	1
Byam School	25 Maple Rd	\N	\N	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	\N	1
Chelmsford High School	200 Richardson Rd	\N	\N	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	\N	\N	1	1	1	1
Chelmsford Town Common	4 North Rd	\N	\N	01824	\N	\N	Urban	MA	Middlesex	Chelmsford
East School Field	\N	Carlisle Rd	Albina St	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	\N	1	1
Harrington School	120 Richardson Rd	\N	\N	01863	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	\N	\N	\N	1
Heart Pond	\N	\N	\N	\N	42.568652	-71.381819	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Lime Quarry	151 Littleton Rd	\N	\N	01824	\N	\N	Urban	MA	Middlesex	Chelmsford
McCarthy Middle School	250 North Rd	\N	\N	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	1	1	\N	1
Parker Middle School	75 Graniteville Rd	\N	\N	01863	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	\N	1
Roberts Field	\N	Old Westford Rd	School St	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	\N	1	\N	1
Russell Mill Pond and Town Forest	\N	\N	\N	\N	42.577221	-71.329755	Urban	MA	Middlesex	Chelmsford	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
South Row School	250 Boston Rd	\N	\N	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	1	\N	1	1
Southwell Field Complex	\N	\N	\N	\N	42.642393	-71.379526	Urban	MA	Middlesex	Chelmsford	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Varney Playground	\N	Adams St	Sherman St	01863	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	\N	1
Vinal Square Common	\N	Princeton St	Vinal Square	01863	\N	\N	Urban	MA	Middlesex	Chelmsford
Westlands Community Education Office	170 Dalton Rd	\N	\N	01824	\N	\N	Urban	MA	Middlesex	Chelmsford	1	\N	\N	1	1
Artificial Turf Fields Complex and Concord Carlisle High School	500 Walden St	\N	\N	01742	\N	\N	Urban	MA	Middlesex	Concord	\N	\N	1	1	\N	1
Emerson Playground	\N	Stow St	Everett St	01742	\N	\N	Urban	MA	Middlesex	Concord	1	1	1	1	1	1	1
Rideout Playground	\N	Lawsbrook Rd	Warner St	01742	\N	\N	Urban	MA	Middlesex	Concord	1	\N	1	1	1
Ripley School	120 Meriam Rd	\N	\N	01742	\N	\N	Urban	MA	Middlesex	Concord	1	\N	\N	1	1	1
South Meadow Field	10A Riverdale Cir	\N	\N	01742	\N	\N	Urban	MA	Middlesex	Concord	\N	\N	\N	\N	\N	1
Carrick Park	\N	\N	\N	\N	42.685901	-71.353557	Urban	MA	Middlesex	Dracut	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Dillion Center Fields	833 Hildreth St	\N	\N	01826	\N	\N	Urban	MA	Middlesex	Dracut	\N	\N	\N	1	\N	1
Hovey Field	\N	Pleasant St	Huron Ave	01826	\N	\N	Urban	MA	Middlesex	Dracut	\N	\N	\N	1
Monahan Park	499 Pleasant St	\N	\N	01826	\N	\N	Urban	MA	Middlesex	Dracut	\N	\N	\N	1	\N	1
Varnum Park	\N	Broadway Rd	Arlington St	01826	\N	\N	Urban	MA	Middlesex	Dracut
Veteran�s Memorial Park	80 Broadway Rd	\N	\N	01826	\N	\N	Urban	MA	Middlesex	Dracut	1	\N	\N	1	\N	1
Dunstable Town Field	\N	\N	\N	\N	42.672329	-71.4823	Urban	MA	Middlesex	Dunstable	1	\N	1	1	1	1	15.88	\N	\N	Coordinates
Horse Hill Quarry	\N	Hall St	Camp Massapoag Rd	01827	\N	\N	Urban	MA	Middlesex	Dunstable	\N	\N	\N	\N	\N	\N	6.25	\N	\N	Future Park
Larter Field	\N	Groton St	Hall St	01827	\N	\N	Urban	MA	Middlesex	Dunstable	1	\N	\N	1	1	1	26.3
Anna Murphy Playground	\N	Cove Ave	Lake Ave	01702	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	1	1	1
Arlington St Park	\N	Arlington St	Gordon St	01702	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	\N	1
Barbieri Elementary School	100 Dudley Rd	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1
Bates Park	\N	Bates Rd	Brackett Rd	01702	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	1
Bowditch Field	475 Union Ave	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	1	1	1	1
Brophy Elementary School	575 Pleasant St	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	1	1
Butterworth Park	261 Grant St	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	1	1	1	1
Cameron Middle School	215 Elm St	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1
Charlotte A Dunning School	48 Frost St	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	1	1
Danforth Playground	\N	Danforth St	Cottage St	01701	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	1
Fuller Middle School	31 Flagg Dr	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1
Furber Park	\N	Fairbanks Rd 	Cohituate Rd	01701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1
Galvani Fields	99 Guadalcanal Rd	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1
Hemenway Elementary School	729 Water St	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	1	1
Juniper Hill Elementary School	29 Upper Jocelyn Ave	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1
Keefe Technical High School	750 Winter St	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1
King Builidings Field	454 Water St	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	\N	1
Longs Playground	\N	Stedmen Park Rd	Fountain St	01702	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	1	1
Mary Dennison Playground	54 Beaver St	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	1	1
Miriam F McCarthy School	8 Flagg Dr	\N	\N	01702	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1
Oakvale Park	46 Hadley Rd	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1
Potter Rd Elementary School and Lundy Field	492 Potter Rd	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1	1	1
Reardon Park	\N	Laclede Ave	Vanderventer Ave	01701	\N	\N	Urban	MA	Middlesex	Framingham	1	\N	\N	1
Victory Field	\N	\N	\N	\N	42.30244	-71.430879	Urban	MA	Middlesex	Framingham	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Walsh Middle School	301 Brook St	\N	\N	01701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	\N	1	\N	1
Winch Park and Framingham High School	\N	A St	Winch Park Rd	01701	\N	\N	Urban	MA	Middlesex	Framingham	\N	\N	1	1	1	1
Amory A Lawrence Memorial Playground	\N	Broad Meadow Rd	Playground Rd	01450	\N	\N	Urban	MA	Middlesex	Groton	1	\N	1	1	1	\N	14.4
Boutwell School	\N	Boutwell St	Certer Ln	01450	\N	\N	Urban	MA	Middlesex	Groton	1	\N	1	1	1
Carol Wheeler Memorial Park	\N	Groton Rd	Townsend Rd	01450	\N	\N	Urban	MA	Middlesex	Groton
Cow Pond Brook Facilities	\N	\N	\N	\N	42.623286	-71.503841	Urban	MA	Middlesex	Groton	\N	\N	\N	1	\N	1	110.0	\N	\N	Coordinates
Cutler Field	\N	Townsend Rd	Windmill Hill Rd	01450	\N	\N	Urban	MA	Middlesex	Groton	1	\N	\N	1	1	1	7
George and Agnes Rider Park	\N	Lost Lake Dr	Indian Rd	01450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	\N	\N	1	\N	1.7
Groton Dunstable Regional High School	703 Chicopee Row	\N	\N	01450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	1	1	\N	1	186
Groton Dunstable Regional Middle School North	344 Main St	\N	\N	01450	\N	\N	Urban	MA	Middlesex	Groton	1	\N	\N	1	\N	1
Hazel Grove Park	\N	Jenkins Rd	Fairgrounds Rd	01450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	\N	\N	\N	\N	28
Stonebridge Farm Recreation Area	\N	Stonebridge Way	Forge Village Rd	01450	\N	\N	Urban	MA	Middlesex	Groton	\N	\N	1	1	\N	1	11.0
Tarbell School	73 Pepperell Rd	\N	\N	01450	\N	\N	Urban	MA	Middlesex	Groton	1	\N	\N	\N	\N	\N	1.44
Adams and Damigella Fields	323 Woodland St	\N	\N	01746	\N	\N	Urban	MA	Middlesex	Holliston	1	\N	\N	1
Flagg Field	\N	Linden St	Avon St	01746	\N	\N	Urban	MA	Middlesex	Holliston	\N	\N	\N	1
Goodwill Park	30 Green St	\N	\N	01746	\N	\N	Urban	MA	Middlesex	Holliston	1	\N	1	1	\N	1
High School Fields & Kamitian Field	370 Hollis St	\N	\N	01746	\N	\N	Urban	MA	Middlesex	Holliston	\N	\N	\N	1	\N	1
Mission Springs Recreation Area	100 Summer St	\N	\N	01746	\N	\N	Urban	MA	Middlesex	Holliston	\N	\N	\N	1	1
Patoma Park	\N	\N	\N	\N	42.192471	-71.418053	Urban	MA	Middlesex	Holliston	\N	\N	1	1	1	\N	\N	\N	\N	Coordinates
Stoddard Park	880 Stoddard Park Rd	\N	\N	01746	\N	\N	Urban	MA	Middlesex	Holliston	1	\N	\N	1	\N	1
Aikens Park	\N	Cordaville Rd	Aikens Rd	01748	\N	\N	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	0.75
Berry Acres	\N	\N	\N	\N	42.219317	-71.534257	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	30	\N	\N	Coordinates
Carrigan Park	\N	Main St	Summer St	01748	\N	\N	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	1
College Rock Park	\N	\N	\N	\N	42.1943	-71.49941	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	11	\N	\N	Coordinates
Daniel Shays Field	\N	\N	\N	\N	42.246336	-71.553378	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
EMC Park	\N	\N	\N	\N	42.216723	-71.513046	Urban	MA	Middlesex	Hopkinton	1	\N	\N	1	\N	\N	15	\N	\N	Coordinates
Emerald Hills East Field	\N	\N	\N	\N	42.252112	-71.546032	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Fruit St Athletic Complex and Victory Field	66 Fruit St	\N	\N	01748	\N	\N	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	1	\N	1
Reed Park, Woodville	\N	\N	\N	\N	42.239206	-71.568621	Urban	MA	Middlesex	Hopkinton	\N	\N	1	1	\N	1	10	\N	\N	Coordinates
Sandy Island - Town Beach	\N	Lakeshore Dr	Hayward St	01748	\N	\N	Urban	MA	Middlesex	Hopkinton
Terry Park	\N	\N	\N	\N	42.238209	-71.537304	Urban	MA	Middlesex	Hopkinton	\N	\N	\N	\N	\N	\N	13	\N	\N	Coordinates
Apsley Park	\N	\N	\N	\N	42.38585	-71.577049	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
BOUTWELL COMPLEX	119 CHAPIN Rd	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson
CELLUCCI Skate Park	29 SOUTH St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	1	\N	\N	\N	\N	1
CHERRY STREET Field & Playground	61 CHERRY St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1
FARINA Field	72 COX St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1
FARLEY ELEMENTARY	106 Packard St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson
FOREST AVENUE ELEMENTARY	136 FOREST Ave	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	1	\N	1	1	1
HUBERT KINDERGARTEN	119 Broad St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	1
Hudson High School and Busch Memorial Field	69 BRIGHAM St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	1	1	\N	1
INTEL	92 TECHNOLOGY Dr	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	\N	\N	1
JFK MIDDLE SCHOOL	201 MANNING St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1	\N	1
LAMSON PARK AT TRIPPS POND	65 GREEN St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson
LIBERTY PARK	5 WASHINGTON St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson
MOULTON'S Field	21 MARION St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	1	\N	\N	1	1
MULREADY ELEMENTARY School	306 COX St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	1	\N	\N	1	1
RIVERSIDE Park	122 Chapin Rd	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	\N	\N	\N	1
SAUTA COMPLEX	538 MAIN St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	1	\N	\N	1	\N	1
WOOD PARK	65 PARK St	\N	\N	01749	\N	\N	Urban	MA	Middlesex	Hudson	1
Adams Playground	739 Massachusetts Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	\N	1	\N	1	1
Baskin Playground	\N	\N	\N	\N	42.471559	-71.24033	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Bow/Oxford Street Park	\N	Bow St	Cliff Ave	\N	\N	\N	Urban	MA	Middlesex	Lexington	1
Bowman Park	\N	Pleasant St	Watertown St	\N	\N	\N	Urban	MA	Middlesex	Lexington
Bowman School	\N	Phillip Rd	Rockville Ave	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1
Bridge School	55 Middleby Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1
Center Recreation Complex	100 Worthen Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	1	1	1	1	1
Clarke Middle School	17 Stedman Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	1	1	\N	1
Diamond Middle School	99 Hancock St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	\N	1
Estabrook School	117 Grove St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	1
Fiske School	55 Adams St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	1
Franklin Playground	3 Stedman Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	\N	\N	1
Freemont Street Play Area	\N	\N	\N	\N	42.453818	-71.25258	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Garfield Street Playground	\N	Garfield St	Hickory St	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	\N	\N	1
Harrington School	328 Lowell St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	1	1
Hastings Park	\N	Massachusetts Ave	Worthem Rd	\N	\N	\N	Urban	MA	Middlesex	Lexington
Hastings School	7 Crosby Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1
Justin Street Park	\N	Justin St	Bernard St	\N	\N	\N	Urban	MA	Middlesex	Lexington	1
Kinneens Park	\N	Burlington St	Preston Rd	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	\N	\N	1
Lexington High School Fields	251 Waltham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	1	\N	1
Lincoln Park	136 Lincoln St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	\N	\N	1	\N	1
Marvin Park	\N	\N	\N	\N	42.483871	-71.25039	Urban	MA	Middlesex	Lexington	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Munroe School Yard	1403 Massachusetts Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	\N	\N	1
Muzzey Field	\N	Massachusetts Ave	Rowland Ave	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	1
Poplar Street Playground	\N	\N	\N	\N	42.462966	-71.24335	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Rindge Avenue Playfield	\N	\N	\N	\N	42.429957	-71.19159	Urban	MA	Middlesex	Lexington	1	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Sutherland Park	\N	Sutherland St	Aerial St	\N	\N	\N	Urban	MA	Middlesex	Lexington	1	\N	\N	1	1
Teresa & Roberta Lee Fitness Path	\N	\N	\N	\N	42.444212	-71.23989	Urban	MA	Middlesex	Lexington	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Tower Park	\N	Massachusetts Ave	Pelham Rd	\N	\N	\N	Urban	MA	Middlesex	Lexington
Valleyfield Play Area	23 Valley Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lexington	\N	\N	1
Bumblebee Park	\N	Foster St	Harwood St	01460	\N	\N	Urban	MA	Middlesex	Littleton
Castle in the Trees Playground	300 King St	\N	\N	01460	\N	\N	Urban	MA	Middlesex	Littleton	1	\N	1	\N	1
Fay Park	\N	Foster St	Wilderness Rd	01460	\N	\N	Urban	MA	Middlesex	Littleton	1
Long Lake Town Beach	\N	\N	\N	\N	42.53241	-71.46562	Urban	MA	Middlesex	Littleton	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Oak Hill	\N	\N	\N	\N	42.536196	-71.52576	Urban	MA	Middlesex	Littleton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Alumni/Martin Complex	438 Douglas Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	\N	1
Armory Park	50 Westford St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1
Bourgeois Park	113 University Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Callery Park	200 B St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	1	1
Campbell Park	30 Courtland St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	1
Carter St Park	25 Carter Av	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	1
Centerville Memorial Park	711 Aiken St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Circuit Av Park	136 Circuit Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Clemente Park	803 Middlesex St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1	1
Coburn Park	845 Chelmsford St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Doane St Park	69 Doane St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	1	\N	\N	1	1
Donahoe Park	2 Stratham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1
Dubner Park	23 Rogers St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Ducharme Park	\N	Commonwealth Ave	Woburn St	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1
Durkin Park	294 Chelmsford St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	1	1
Edwards St Park	50 Edwards St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1
Father Grillo Park	853 Central St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Father Maguire Park	80 Woodward Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	1	1	1
Fayette St Playground	246 Fayette St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1
Fels Playground	260 Riverside St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	1
Ferry Landing Park	3 First St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Festival Field	381 Pawtucket Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1
Finneral Park	\N	Lincoln Pkwy	Van Greenby Rd	\N	\N	\N	Urban	MA	Middlesex	Lowell
First St Playground	61 First St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Fort Hill Park	201 Rogers St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Fr Kirwin Playground	889 Lawrence St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1
Gage Park	78 13th St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	1	1	1	1
Hadley Park	1650 Middlesex St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	1	1	1
Harmony Park	\N	Cork St	Cross St	\N	\N	\N	Urban	MA	Middlesex	Lowell
Highland Park	150 Fleming St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	1	1
Hovey Field	266 Aiken St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1
Kerouac Park	93 Bridge St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Kittredge Park	44 Nesmith St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1
Knott Park	150 Douglas Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Koumantzeus Field/Francis Gate Park	490 Pawtucket St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	\N	1
Lincoln Square Park	\N	Washington St	Hale St	\N	\N	\N	Urban	MA	Middlesex	Lowell
Lowell Memorial Auditorium Greenspace	52 East Merrimack St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Lucy Larcom Park	255 Merrimack St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Manning Field	303 Boston Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1
Martin Portuguese Park	424 Central St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
McDermott Reservoir	197 Beacon St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
McInerney Playground	213 West London St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1
McNamara Field/LeBlance Park/Pawtucket Memorial Park	475 West Meadow Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	1	\N	1
McPherson Park	45 Richardson St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	1	1	1	1
Monsignor Keenan	\N	W Sixth St	Hampshire St	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1
Moody St Playground	497 Moody St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1
Mulligan Park	89 Plain St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	1	\N	\N	1
Nieves, Olga Playground	123 Adams St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1
Noonan Family Park	\N	Washington Pkwy	Gibson St	\N	\N	\N	Urban	MA	Middlesex	Lowell
North Common	413 Fletcher St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	1	\N	1	1	1
O'Donnell Park	1170 Gorham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	1	1	1	1
Oliveria Park	84 Newhall St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	1	1
Perry Playground	36 Dover St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1
Reilly School Community Playground	115 Douglas Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	\N	1
Rotary Club Park	16 Richmond Av	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1
Rynne Beach	160 Pawtucket Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Scullin Park	50 Morey St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1
Shedd Park	433 Rogers St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	1	1	1	1
Sheehy Park	501 Pawtucket St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
South Common	272 South St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	1	1	\N	1	1
St Louis Playground	406 West Sixth St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1	\N	\N	1	1
Suffolk St Park	140 Suffolk St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Tenth St Reservior	191 Mt Pleasant St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Thomas L Crowley Park	78 Wedge St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	1
Tyler Park	\N	Westford St	Tyler Park	\N	\N	\N	Urban	MA	Middlesex	Lowell
Varnum Park	\N	3rd St	Vernon St	\N	\N	\N	Urban	MA	Middlesex	Lowell
Veterans Memorial Park	17 Ennell St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Victory Park	21 Woburn St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Walter J Lemieux Park	8 Mill St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell
Wang Park	850 Pawtucket Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Lowell	\N	\N	\N	\N	\N	1
Wannalancit Park	\N	Varnum Ave	Mammoth Rd	\N	\N	\N	Urban	MA	Middlesex	Lowell
Amerige Park	\N	Fellsway E	 Savin St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	1	1	1	1
Bell Rock Park	\N	Main St	Wigglesworth St	02148	\N	\N	Urban	MA	Middlesex	Malden
Callahan Park	\N	Pearl St	Hubbard St	02148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	1	\N	1
Coytemore Lea Park	\N	Mountain Ave	Linden Ave	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	\N	1
Devir Park	\N	Fellsway	Malden St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	1	1	1	1
Fellsmere Pond	\N	Fellsmere Rd	W Border Rd	02148	\N	\N	Urban	MA	Middlesex	Malden
Forestdale Park	70 Sylvan St	\N	\N	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	1	\N	1
Holland Memorial Pool	\N	Mountain Ave	Dartmouth St	02148	\N	\N	Urban	MA	Middlesex	Malden	\N	1
Hunting Field (Linden Park)	29 Westcott St	\N	\N	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	1	1	1
Kierstead Park	\N	Eastern Ave	Willow St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	1
Lincoln Commons and Anderson Field	\N	Cross St	Bryant St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	1
MacArthur Park (Green Street Park)	\N	Green St	Wadsworth St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	1	1
Macdonald Stadium	\N	Pearl St	Centre St	02148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	\N	1
Maplewood Park and Donovan Field	99 Crystal St	\N	\N	02148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	1	\N	1
Miller Park	\N	Harvard St	Lyme St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	\N	1
Newman Park	150 Cross St	\N	\N	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	1	\N	1
O'Connell Park	\N	West St	Medford St	02148	\N	\N	Urban	MA	Middlesex	Malden
Patchell Park	\N	\N	\N	\N	42.439516	-71.073339	Urban	MA	Middlesex	Malden	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Pearl Street Park	\N	Pearl St	Malden St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	\N	1
Pine Banks Park	1087 Main St	\N	\N	02148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	1	\N	1	107.5
Roosevelt Park	529 Salem St	\N	\N	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	1	\N	1
South Broadway Park	\N	\N	\N	\N	42.426735	-71.043745	Urban	MA	Middlesex	Malden	1	\N	\N	1	1	1	\N	\N	\N	Coordinates
Tartikoff Park	\N	Willow St	Lyme St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	\N	\N	\N	1
Trafton Park	\N	Granite St	Jacob St	02148	\N	\N	Urban	MA	Middlesex	Malden	1	\N	1	1	1
Waitt's Mount	\N	Leonard St	Tremont St	02148	\N	\N	Urban	MA	Middlesex	Malden	\N	\N	\N	\N	1
Wallace Park	403 Pleasant St	\N	\N	02148	\N	\N	Urban	MA	Middlesex	Malden
Byrne Field	\N	\N	\N	\N	42.361006	-71.485822	Urban	MA	Middlesex	Marlborough	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
City of Marlborough Boat Ramp	Reservoir St	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough
Colaianni Playground	\N	\N	\N	\N	42.370916	-71.547467	Urban	MA	Middlesex	Marlborough	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Duca Playground	\N	Rice St	Bolton St	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1
Farrell Field (Hildreth School)	85 Sawin St	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	1	\N	1
Ghiloni Park	\N	\N	\N	\N	42.353287	-71.521865	Urban	MA	Middlesex	Marlborough	1	\N	\N	1	1	1	\N	\N	\N	Coordinates
Holt's Grove	\N	Stevens St	Andrews Rd	01752	\N	\N	Urban	MA	Middlesex	Marlborough	\N	\N	\N	\N	\N	1
Jaworek School	444 Hosmer St	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	1	1	1
Jericho Hill	\N	\N	\N	\N	42.32981	-71.559464	Urban	MA	Middlesex	Marlborough	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
John Street Playground	38 John St	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	\N	1
Kane School	520 Farm Rd	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	1	1	1
Kelleher Field	\N	Jefferson St	Hudson St	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	\N	1	1
Korean Veterans Field	\N	Milham St	Dudley St	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	\N	1	1
Marlborough High School Facilities	431 Bolton St	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough	\N	\N	1	1	\N	1
Marlborough Middle School Facilities	25 Union St	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	1	1	1
Memorial Beach	\N	Hosmer St	Miles Standish Dr	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1
Richer School	80 Foley Rd	\N	\N	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	1	1
Simpson Playground	\N	\N	\N	\N	42.372995	-71.52547	Urban	MA	Middlesex	Marlborough	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Stevens Park	\N	Martin St	Broad St	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	1	1	1
Union Common	\N	Main St	Bolton St	01752	\N	\N	Urban	MA	Middlesex	Marlborough
Ward Park	\N	Orchard St	Hayden St	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	1	1	\N	1	1
Williams Street Baseball Fields	\N	WIlliams St	Lizotte Dr	01752	\N	\N	Urban	MA	Middlesex	Marlborough	1	\N	\N	1
Barry Park	\N	Summer St	Marston St	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	1	1	\N	3.6
Brook Park	\N	Brooks Park	Main St	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.36
Capen Park	199 Capen St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	\N	\N	1	\N	0.77
Carr Park	22 Winslow Ave	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	1	1	\N	11.5
Columbus Park	64 E Albion St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	1	1	\N	5
Cummings Park	\N	Cotting St	Lyman Ave	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	\N	\N	1	\N	0.45
Dugger Park	\N	Mystic River Rd	Harvard Ave	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	\N	1	1	3.2
Grant Park	Boston Ave	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.23	\N	\N	Cant Find
Harris Park	\N	2nd St	Bradbury Ave	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	1	1	\N	2.8
Hastings Heights	\N	Allston St	Laurel St	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	1.3
Hickey Park	\N	Brogan Rd	Park St	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	1	1	\N	4.4
Hormel Stadium Facility Riverbend Park	97 Locust St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	\N	1	\N	1	43.9
Logan Park	35 Otis St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	\N	\N	\N	\N	1.3
Magoun Park	40 Pembroke St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	\N	\N	1	\N	1.3
McNally Park	\N	Webster St	Ash St	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	\N	1	\N	\N	1.7
Memorial Park	\N	Winthrop St	Mystic Valey Pkwy	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	1	\N	\N	9.6
Morrison Park	\N	Central Ave	Linwood St	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	1	1	\N	4.4
Playstead Park	101 Playstead Rd	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	1	1	1	12.3
Prescott Park	1 St James Ave	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.25
Royall Park	\N	George St	Main St	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	0.76
Thomas Brooks Park	281 Grove St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	6
Tufts Park	449 Main St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	1	\N	1	1	1	10.6
Victory Park	437 Winthrop St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	1	\N	1	\N	1	1	12
Wright�s Pond	162 Elm St	\N	\N	02155	\N	\N	Urban	MA	Middlesex	Medford	\N	\N	\N	\N	\N	\N	148
Bowden Park	\N	W Emerson St	Vinton St	02176	\N	\N	Urban	MA	Middlesex	Melrose
Colby Park	\N	Lynn Fells	Larchmont Rd	02176	\N	\N	Urban	MA	Middlesex	Melrose
Conant Field	\N	\N	\N	\N	42.456497	-71.079247	Urban	MA	Middlesex	Melrose	1	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Crystal St Tennis Courts	\N	Crystal St	Lynn Fells Pkwy	02176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	1
DesForges Park	\N	Crystal St	Melrose St	02176	\N	\N	Urban	MA	Middlesex	Melrose
Drinkwater Tot Lot	\N	Ellis Farm Lane	Porter St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1
Dunton Park	\N	Franklin St	Pratt St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1
ElI Pond Park	\N	Main St	Lebanon St	02176	\N	\N	Urban	MA	Middlesex	Melrose
Foss Park	\N	Lynde St	Malvern St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	1	1
Franklin Field	\N	Greenleaf Pl	Franklin St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	\N	\N	1
Fred Green Field	360 Lynn Fells Pkwy	\N	\N	02176	\N	\N	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	1
Gooch Park	\N	Maple St	Florence St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	\N	1
Hesseltine Park	\N	Ruggles St	Hesseltine Ave	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	1	1
Knoll Soccer Complex	\N	\N	\N	\N	42.462513	-71.06692	Urban	MA	Middlesex	Melrose	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Lebanon Park	\N	Lebanon St	Sylvan St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	1	1
Lewis Monk Field	\N	\N	\N	\N	42.461799	-71.069154	Urban	MA	Middlesex	Melrose	\N	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Lincoln Park	80 W Wyoming Ave	\N	\N	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	1	1
Livermore Park	\N	Upham St	Felton Pl	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	\N	1
Lyons Courts	\N	\N	\N	\N	42.462539	-71.069055	Urban	MA	Middlesex	Melrose	\N	\N	1	\N	\N	\N	\N	\N	\N	Coordinates
Mary Foley Park	\N	Grove St	Myrtle St	02176	\N	\N	Urban	MA	Middlesex	Melrose
Melrose Common	\N	E Foster St	Larrabee St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1	\N	\N	1	1	1
Messengers Field	\N	\N	\N	\N	42.465899	-71.070353	Urban	MA	Middlesex	Melrose	1	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Milano Park	\N	Main St	Grove St	02176	\N	\N	Urban	MA	Middlesex	Melrose
Morelli Field	\N	\N	\N	\N	42.463272	-71.069017	Urban	MA	Middlesex	Melrose	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Poplar Island	\N	Poplar St	Prospect St	02176	\N	\N	Urban	MA	Middlesex	Melrose
Warren Park	\N	Warren St	Melrose St	02176	\N	\N	Urban	MA	Middlesex	Melrose	1
Bennett-Hemenway School	22 East Evergreen Rd	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	\N	1	1	1
Brown School	1 Jean Burke St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	\N	1	1	1
Coolidge Field/Woods	\N	Chester St	Lincoln St Ext	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	1	1
East Natick School	\N	\N	\N	\N	42.303876	-71.3	Urban	MA	Middlesex	Natick	1	\N	1	1	1	\N	\N	\N	\N	Coordinates
Grove Park	\N	Pleasant St	Merrill Rd	01760	\N	\N	Urban	MA	Middlesex	Natick
Henry Wilson Memorial	\N	Mill St	W Central St	01760	\N	\N	Urban	MA	Middlesex	Natick
Hunnewell Fields	24 Pleasant St S	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	\N	1
John J. Lane Park	185 Speen St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	1
Johnson School	99 South Main St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	\N	1	\N	1
Kennedy Middle School	1 Philip J Lucier Dr	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	1	1
Lilja School	41 Bacon St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	\N	1	1	1
Loker Park	\N	Walnut St	Bacon St	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	\N	\N	1	1
Mary Bunker Community Park	\N	N Main St	Rutledge Rd	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	\N	1
Memorial Beach (Dug Pond)	\N	\N	\N	\N	42.274395	-71.4	Urban	MA	Middlesex	Natick	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Memorial School	107 Eliot St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	1	1	1
Natick High School	15 West St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	1	1	1	1
Navy Yard Field	41 Washington Ave	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	1	\N	\N	1	1	1
NHS Fields	\N	West St	Redmen Dr	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	\N	1
Sargent Field	17 Oak St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	\N	1
Shaw Park	53 Eliot St	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick
South Natick Dam Park	\N	Mill Ln	Pleasant St S	01760	\N	\N	Urban	MA	Middlesex	Natick
South Natick Multi-Purpose Area	23 Pleasant St S	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	\N	1	1
Town Common	\N	E Central St	S Main St	01760	\N	\N	Urban	MA	Middlesex	Natick
West Hill Park	\N	W Hill Park	Mill St	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1
Wilson Middle School	22 Rutledge Rd	\N	\N	01760	\N	\N	Urban	MA	Middlesex	Natick	\N	\N	\N	1	1	1
Angier School	1697 Beacon St	\N	\N	02468	\N	\N	Urban	MA	Middlesex	Newton	1
Auburndale Playground / The Cove	\N	W Pine St	Edgewater Park	02466	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	1	29.9
Boyd Park	Jackson Rd	\N	\N	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	4.8
Brown & Oak Hill School Playgrounds	\N	Wheeler Rd	Sharpe Rd	02459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	1	\N	1	11.3
Bullough's Pond	\N	Commonwealth Ave	Walnut St	02460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	1.4
Burr Park	136 Park St	\N	\N	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	1	5.1
Burr School	171 Pine St	\N	\N	02466	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	1	10
Cabot Park	101 Eastside Pkwy	\N	\N	02458	\N	\N	Dog	MA	Middlesex	Newton	\N	\N	1	\N	1	\N	\N	1
Captain Ryan Park	\N	Washington St	Cherry St	02465	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.5
Carleton Park	\N	Carleton St	Pearl St	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	\N	\N	\N	0.1
Carr School Playground	225 Nevada St	\N	\N	02460	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	\N	7.8
Chaffin Park	\N	Vernon St	Centre St	02458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.75
Charlesbank Playground	\N	Nonantum Pl	Charlesbank Rd	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	\N	\N	\N	0.5
Claflin Playground	\N	\N	\N	\N	42.341323	-71.2119	Dog	MA	Middlesex	Newton	\N	\N	\N	\N	\N	1	1.2	1	\N	Coordinates
Cold Springs Park	1198 Beacon St	\N	\N	02461	\N	\N	Dog	MA	Middlesex	Newton	\N	\N	1	1	1	1	65	1
Coletti-Magni Park	\N	Watertown St	Bridge St	02458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.46
Countryside School Playground	191 Dedham St	\N	\N	02461	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	2
Crystal Lake	230 Lake Ave	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	2
Edmand's Park	\N	Blake St	Mill St	02459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	32.6
Elmwood Park	\N	Lowell Ave	Highland Ave	02465	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	1.5
Farlow Park	\N	Eldredge St	Church St	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	5
Franklin School	125 Derby St	\N	\N	02465	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	\N	2.7
Gath Memorial Pool	256 Albermale Rd	\N	\N	02460	\N	\N	Urban	MA	Middlesex	Newton	\N	1
Hunnewell Park	\N	\N	\N	\N	42.356853	-71.1717	Dog	MA	Middlesex	Newton	1	\N	\N	1	\N	1	4.6	1	\N	Coordinates
Hyde Playground	\N	Lincoln St	Bowdon St	02461	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	\N	1	1
Joanne C. Pellegrini Park	11 Hawthorn St	\N	\N	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	\N	1	4.2
John W. Weeks Playground	\N	Hereward Rd	Locksley Rd	02459	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	\N	1	11.1
Kennard Park	\N	\N	\N	\N	42.312783	-71.1795	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	14	\N	\N	Coordinates
Lowell Park	\N	Waterton St	Walnut St	02460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.6
Lower Falls Playground (Hamilton Playground)	\N	Pine Grove Ave	Cornell St	02462	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	1	4.3
Lyons Playground	\N	Commonwealth Ave	Islington Rd	02466	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	1	\N	\N	29.9
Mason Rice School	149 Pleasant St	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	\N	1	1	4
Memorial Spaulding School	250 Brookline St	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	2
Nahanton Park	455 Nahanton St	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	1	\N	1	57
Newton Center Green	\N	Centre St	Langley Rd	02459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	2
Newton Centre Playground	81 Tyler Terr	\N	\N	02459	\N	\N	Dog	MA	Middlesex	Newton	1	\N	1	1	1	1	17.9	1
Newton Highlands Playground	\N	Dedham St	Upland Ave	02461	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	1	12.6
Newton North High School	425 Walnut St	\N	\N	02460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	1	1	\N	1	18.4
Newton South High School	140 Brandeis Rd	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	1	1	1	1	7
Newton Veterans Memorial Park	\N	Washington St	Lewis Terr	02458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.1
Peirce School	170 Temple Ste	\N	\N	02465	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	2
Reverend Ford Playground	\N	Crescent St	Robinhood St	02465	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	\N	\N	\N	2
Richard J. Forte Park	235 California St	\N	\N	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	6
Richard J. McGrath Park	1600 Washington St	\N	\N	02465	\N	\N	Dog	MA	Middlesex	Newton	1	\N	1	1	\N	1	10.1	1
Richardson Playground	\N	Allen Ave	Pine Ridge Rd	02468	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	\N	1	5.4
River Street Playground	\N	River St	Smith Ct	02465	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	\N	\N	\N	0.5
Russ Halloran Sports Complex (Albemarle Park)	250 Albemarle Rd	\N	\N	02460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	1	\N	1	\N	24.9
Solomon Schecter Playground (Memorial Playground)	60 Stein Cir	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	1	3
Spears Park	\N	Washington St	Walnut Park	02458	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	0.25
Stearns Park	54 Jasset St	\N	\N	02458	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	\N	3.4
Thompsonville Playground and Bowen Field	280 Cypress St	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	8.8
Tom Torchia Playgroung and Davis Playground	\N	Watertown St	Eden St	02465	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	1	2
Upper Falls Playground (Officer Bobby Braceland Playground)	\N	Pennsylvania Ave	Chestnut St	02464	\N	\N	Dog	MA	Middlesex	Newton	1	\N	1	1	1	1	8.8	1
Waban Playground	\N	Manitoba Rd	Beacon St	02468	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	\N	4.7
Ward School Playground and Ward Park	10 Dolphin Rd	\N	\N	02459	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	1	1	1	6.6
Warren Lincoln Playground	\N	Montclair St	Moffat Rd	02468	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	\N	1	5.4
Warren Street Playground	\N	\N	\N	\N	42.32913	-71.1833	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Washington Park	\N	Washington Park	Harvard St	02460	\N	\N	Urban	MA	Middlesex	Newton	\N	\N	\N	\N	\N	\N	1
Wellington Street Playground	\N	Kilburn Rd	Henshaw Pl	02465	\N	\N	Urban	MA	Middlesex	Newton	1	\N	1	\N	1	1	1.9
West Newton Commons	\N	Elm Rd	Webster St	02465	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	\N	1	3.7
Williams School Playground	141 Grove St	\N	\N	02466	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	1	1	\N	1.1
Zervas School	30 Beethoven St	\N	\N	02468	\N	\N	Urban	MA	Middlesex	Newton	1	\N	\N	\N	1	1	1
Benevento Park	251 Central St	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	10.6
Chestnut Street Complex Maguire Field	168 Chestnut St	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	1	\N	\N	1	1	1	4.5
Clarke Park	61 Burroughs Rd	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	1	\N	\N	\N	1	1	1.7
High School Arthur J. Kenney Field	191 Park St	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	\N	\N	1	2.7
Hood, JT School Field���	298 Haverhill St	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	15.6
Ipswich River Park	15 Central St	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	1	\N	1	1	1	1	49.9
Little School Complex	7 Barberry Lane	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	\N	\N	\N	13.4
Middle School Complex	19 Sherman Rd	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	1	1	\N	1	43.4
Murphy Field	235 North St	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	10.5
Rita J. Mullin Field	96 Lowell St	\N	\N	01864	\N	\N	Urban	MA	Middlesex	North Reading	\N	\N	\N	1	\N	\N	9.5
Bartelson Fields Athletic Complex	11 Jersey St	\N	\N	01463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	1
Comiskey Fields	14 Hollis St	\N	\N	01463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	\N	\N	1
Kennedy Fields	\N	Crescent St	Main St	01463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	\N	\N	1
Nissitissit Middle School Fields and Glow Fields	33 Chace Ave	\N	\N	01463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	\N	1	\N	1
Town Field	\N	Hollis St	Franklin St	01463	\N	\N	Urban	MA	Middlesex	Pepperell	1	\N	\N	1	1	1
Varnum Brook School Fields	10 Hollis St	\N	\N	01463	\N	\N	Urban	MA	Middlesex	Pepperell	\N	\N	1	1	\N	1
Barrows Elementary School Field	16 Edgemont Ave	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	1	\N	1	1	1	1
Coolidge Middle School Field	89 Birch Meadow Dr	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1
Hunt Park	\N	Pleasant St	Eaton St	01867	\N	\N	Urban	MA	Middlesex	Reading	1	\N	\N	1
Joshua Eaton Elementary School Field	365 Summer Ave	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	1	\N	\N	1	\N	1
Killam Elementary School Field	333 Charles St	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	1	\N	\N	1	1	1
Longwood Park	\N	Pearl St	Belmont St	01867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1
Memorial Park	\N	Charles St	Harrison St	01867	\N	\N	Urban	MA	Middlesex	Reading	1	\N	\N	\N	\N	1
Reading Memorial High School	62 Oakland Rd	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1
Sturges Park	South St	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	1	1	1	1
Symonds Way Field	Symonds Way	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	1	\N	1
Washington Park	Washington St	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	1	1	1
Wood End Elementary School Field	85 Sunset Rock Ln	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading	\N	\N	\N	\N	\N	1
Birch Meadow Complex w/ Castine and Morton Fields	\N	Bancroft Ave	Hartshorn St	01867	\N	\N	Urban	MA	Middlesex	Reading 	1	\N	1	1	1	1
Collins Field at Parker Middle School	45 Temple St	\N	\N	01867	\N	\N	Urban	MA	Middlesex	Reading 	\N	\N	\N	\N	\N	1
Fessenden Fields	\N	Western Ave	Pleasant St	01770	\N	\N	Urban	MA	Middlesex	Sherborn	\N	\N	\N	1	\N	1	27
Jamison Fields	\N	Eliot St	Pine Hill Ln	01770	\N	\N	Urban	MA	Middlesex	Sherborn	1	\N	1	1	\N	\N	167
Laurel Farm Fields	139 N Main St	\N	\N	01770	\N	\N	Urban	MA	Middlesex	Sherborn	\N	\N	\N	1	\N	1	32
Pine Hill Elementary School	10 Pine Hill Ln	\N	\N	01770	\N	\N	Urban	MA	Middlesex	Sherborn	1	\N	\N	\N	1	1	10.7
Benjamin Park	93 Benjamin Rd	\N	\N	01464	\N	\N	Urban	MA	Middlesex	Shirley	1	1
Parker Rd Fields (Center School Fields)	9 Parker Rd	\N	\N	01464	\N	\N	Urban	MA	Middlesex	Shirley	1	\N	\N	\N	\N	1
Shirley Middle School Field	\N	Front St	Hospital Rd	01464	\N	\N	Urban	MA	Middlesex	Shirley	\N	\N	\N	1	\N	1
Whitley Memorial Park	\N	Front St	Whiteley St	01464	\N	\N	Urban	MA	Middlesex	Shirley
Wilde Rd Fields	\N	Wilde Rd	Shaker Rd	01464	\N	\N	Urban	MA	Middlesex	Shirley	\N	\N	\N	\N	\N	1
111 South Street	111 South St	\N	\N	\N	\N	\N	Dog	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.36	1	\N	Future Park
Albion Playground	\N	Albion St	Lowell St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	1	0.87
Assembly Square Park	Assembly Square	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville
Bailey Park	\N	Lowell St	Brastow St	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.39	1
Brown School Community Playground	201 Willow Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.22
Central Hill Park/Somerville High School	\N	Highland Ave	Vinal Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	8.94
Conway Park	\N	Somerville Ave	Bleachery Ct	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	1	1	1	5.66
Corbett-McKenna Park	\N	Prospect Hill Ave	Munroe St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.61
Cummings School Community Playground	93 School St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.41
Dickerman Playground	\N	Kimball St	Craigie St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.41
East Somerville School Community Playground	115 Pearl St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	1.4
Edgerly Education Center	8 Bonair St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.1
Edward Leathers Community Park	\N	Walnut St	Gilman St	\N	\N	\N	Dog	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.71	1
Florence Playground	23 Florence St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.26
Glen Park/James McCarthy Field	150 Glen St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	1	2.34
Grimmons Park	87 Governor Winthrop Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.46
Harris Playground	\N	Cross St E	Pennsylvania Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.29
Healey School Community Playground	5 Meacham St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	1	\N	1	1	0.16
Henry Hansen Memorial Park	\N	Medford Ave	Partridge Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.06
Highland Road Gardens	\N	Community Path	Highland Rd	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.21
Hodgkins-Curtin Park	\N	Holland St	Paulina St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	1	\N	\N	1.5
Hoyt-Sullivan Playground	115 Central St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.52
Kennedy School Community Playground	5 Cherry St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	1	\N	\N	1	\N	0.5
Kenney Park	\N	Highland Ave	Grove St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.3
Lexington Park	\N	Lexington St	Hancock St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.31
Lincoln Park and Argenziano School Playground	\N	Wyatt St	Perry St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	1	1	1	9.36
Marshall Street Playground	\N	Marshall St	Mortimore Pl	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.24
Morse-Kelley Playground	\N	Craigie St	Summer St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	1	0.45
Nathan Tufts Park (Powderhouse Park)	\N	Liberty Ave	Broadway	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	1	\N	\N	1	4.3	1
North Street/Veterans Playground	\N	North St	Broadway	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.22
Nunziato Field and Dog Park	\N	Summer St	Vinal Ave	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	1	1.1	1
Osgood Park	\N	Osgood St	Granite St	\N	\N	\N	Dog	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.27	1
Otis Playground	\N	Otis St	Dana St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.1
Palmacci Playground	\N	Hanson Ave	Skehan St	\N	\N	\N	Dog	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.08	1
Paul Revere Park	\N	Broadway	Main St	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.02
Perkins Playground	\N	Perkins St	Perkins Pl	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.15
Perry Park	\N	Washington St	Magnus Ave	\N	\N	\N	Dog	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	1.25	1
Powderhouse Community School Playground	\N	Broadway	Packard Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	1.03
Prospect Hill Park	\N	Prospect Hill Ave	Munroe St	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	2.1	1
Quincy Street Lot	14 Quincy St	\N	\N	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.11	1
Seven Hills Park	\N	Meacham Rd	Dover St	\N	\N	\N	Dog	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.69	1
Somerville Junction Park	\N	Woodbine St	Centre St	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.5
Stone Place Park	\N	Stone Pl	Stone Ave	\N	\N	\N	Urban	MA	Middlesex	Somerville	\N	\N	\N	\N	\N	\N	0.12
Trum Field	\N	Broadway	Cedar St	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	1	1	\N	4.78
Trum Playground	\N	Cedar St	Franey Rd	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.46
Walnut Street Park	\N	Walnut St	Giles Park	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.22
West Somerville Neighborhood School Playground	177 Powderhouse Blvd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.2
Winter Hill School Community Playground	115 Sycamore St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.98
Woodstock Street Playground	\N	Woodstock St	Alewife Brook Pkwy	\N	\N	\N	Urban	MA	Middlesex	Somerville	1	\N	\N	\N	1	\N	0.22
Zero New Washington Street Dog Park	\N	New Washington St	Inner Belt Rd	\N	\N	\N	Dog	MA	Middlesex	Somerville	1	\N	\N	\N	\N	\N	0.75	1	\N	Future Park
Whip Hill Park	1 Whip Hill Rd	\N	\N	02180	\N	\N	Urban	MA	Middlesex	Stoneham
Center School	403 Great Rd	\N	\N	01775	\N	\N	Urban	MA	Middlesex	Stow	1	\N	1	1	\N	1
Hale Middle School	55 Hartley Rd	\N	\N	01775	\N	\N	Urban	MA	Middlesex	Stow	\N	\N	\N	1	1	1
Memorial Field	\N	\N	\N	\N	42.430833	-71.48911	Urban	MA	Middlesex	Stow	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Pine Bliff Recreation Area	\N	Sudbury Rd	Queens Ln	01775	\N	\N	Urban	MA	Middlesex	Stow	1	\N	\N	\N	\N	1
Pompositticut School	511 Great Rd	\N	\N	01775	\N	\N	Urban	MA	Middlesex	Stow	1	\N	\N	\N	\N	1
Stow Community Park	60 Old Bolton Rd	\N	\N	01775	\N	\N	Urban	MA	Middlesex	Stow	\N	\N	1	1	1	1
Atkinson Pool	40 Fairbank Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	1	\N	\N	1	1
Crime Lab Fields	59 Horse Pond Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1
Cutting Field	429 Maynard Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	\N	\N	1
Davis Field	195 North Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	\N	\N	1
Ephraim Curtis Middle School Fields	22 Pratts Mill Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1	1	1
Featherland Park	491 Concord Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	1	1	\N	1
Frank Feeley Field	200 Raymond Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	1	1	\N	1
General John Nixon Elementary School Fields	1 Morse Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1	1
Haskell Field	\N	Hudson Rd	Fairbank Rd	01776	\N	\N	Urban	MA	Middlesex	Sudbury	1	\N	\N	1	\N	1
Haynes Elementary School Fields	169 Haynes Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	1	\N	\N	1	1	1
Israel Loring Elementary School Fields	80 Woodside Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	1	\N	1
Lincoln-Sudbury Regional High School Fields	390 Lincoln Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	1	\N	1	1	1	1
Peter Noyes Elementary School Fields	278 Old Sudbury Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	1	\N	\N	1	1
Ti-Sales Fields	36 Hudson Rd	\N	\N	01776	\N	\N	Urban	MA	Middlesex	Sudbury	\N	\N	\N	\N	\N	1
Common St Park	\N	Main St	Pleasant St	01876	\N	\N	Urban	MA	Middlesex	Tewksbury
Dewing School	1469 Andover St	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	1	\N	\N	\N	\N	1
East St Park	\N	East St	Chandler St	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1
Foster Park	\N	\N	\N	\N	42.579883	-71.20986	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Heath Brook School	165 Shawsheen St	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	1	\N	\N	1	1
Livingston St Park	\N	\N	\N	\N	42.598855	-71.208851	Urban	MA	Middlesex	Tewksbury	1	\N	1	1	1	1	31.0	\N	\N	Coordinates
Melrose Ave Park	Melrose Ave	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury
Melvin Rogers Park	\N	Rogers St	Marston St	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	1
North St School	133 North St	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	1
North St Soccer Field	\N	\N	\N	\N	42.616607	-71.2	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Ryan School	135 Pleasant St	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	1	\N	1	\N	\N	1
Tewksbury High School	320 Pleasant St	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1	\N	1
Tewksbury Middle School	1 Griffin Way	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	\N	\N	\N	1	\N	1
Trahan School	12 Salem Rd	\N	\N	01876	\N	\N	Urban	MA	Middlesex	Tewksbury	1	\N	\N	1
Craven Field	\N	\N	\N	\N	42.675739	-71.745175	Urban	MA	Middlesex	Townsend	\N	\N	\N	1	\N	\N	2.87	\N	\N	Coordinates
Howard Park	\N	\N	\N	\N	42.672765	-71.70682	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	\N	40.8	\N	\N	Coordinates
Kids Kountry Playground	\N	Turnpike Rd	Eastman St	01469	\N	\N	Urban	MA	Middlesex	Townsend	1
Library Field	\N	\N	\N	\N	42.675952	-71.70285	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Memorial Common	\N	Turnpike Rd	Main St	01469	\N	\N	Urban	MA	Middlesex	Townsend
Old Meetinghouse Park	\N	\N	\N	\N	42.662683	-71.682658	Urban	MA	Middlesex	Townsend	\N	\N	\N	\N	\N	\N	247.85	\N	\N	Coordinates
Townsend Ballfield	\N	\N	\N	\N	42.643227	-71.684364	Urban	MA	Middlesex	Townsend	\N	\N	\N	1	\N	\N	14.53	\N	\N	Coordinates
Townsend Town Common	\N	Main St	School St	01469	\N	\N	Urban	MA	Middlesex	Townsend
Bicentennial Fields Complex	205 Westford Rd	\N	\N	01879	\N	\N	Urban	MA	Middlesex	Tyngsborough	1	\N	1	1	1	1
Bridge Meadow Fields	\N	\N	\N	\N	42.643177	-71.440294	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
CC Fields	\N	Lakeview Ave	Poplar Ave	01879	\N	\N	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1	\N	1
Lakeview School Fields	135 Coburn Rd 	\N	\N	01879	\N	\N	Urban	MA	Middlesex	Tyngsborough	1	\N	\N	\N	\N	1
Pierce Field and Tyngsborough High School Fields	36 Norris Rd	\N	\N	01879	\N	\N	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1	\N	1
Wicassee Fields	17 Wicassee Rd	\N	\N	01879	\N	\N	Urban	MA	Middlesex	Tyngsborough	\N	\N	\N	1
Blatz field and Woodville School	30 Farm St	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	1	\N	1	3.11
Dolbeare School	340 Lowell St	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	\N	1	1	7.87
Doyle School Fields	\N	Doyle Ave	Paul Ave	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	1	\N	1	7.77
Fernald Field (Little League Fields)	\N	Del Carmine St	Vinton St	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	1	\N	\N	2.38
Gertrude Spaulding Park and COL Connolly Playground	147 Lowell St	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	\N	\N	\N	1.08
Greenwood School	907 Main St	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	\N	1	\N	4.54
Hall Park	\N	North Ave	Lakeside Ave	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	1.28
JJ Round Memorial Park	738 Main St	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	1	1	\N	15.74
Landrigan Field	65 Hemlock Rd	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	1	3
Lower Common	\N	Main St	Lawrence St	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	8.3
Mapleway Playground	\N	Maple Way	Greenwood Ave	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	1	1	1	1	16.78
Moulton Playground	\N	Harrington Ct	Gould St	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	1	1	\N	5.53
Nasella Playground	\N	Water St	Melvin St Ext	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	1	\N	\N	4.69
Spaulding St Playground	\N	Spaulding St	Lake Ave	01880	\N	\N	Urban	MA	Middlesex	Wakefield	1	\N	\N	\N	\N	\N	1.39
Spring St Park	\N	\N	\N	\N	42.476228	-71.076897	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	10.64	\N	\N	Coordinates
Sullivan Playground	\N	\N	\N	\N	42.511966	-71.053128	Urban	MA	Middlesex	Wakefield	1	\N	\N	1	\N	1	19.8	\N	\N	Coordinates
Upper Common	\N	Common St	Crescent St	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	\N	\N	\N	2.6
Veterans Field	411 North Ave	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	1	1	\N	\N	3.15
Walsh Field, Beasly Field and Wakefield Memorial High School	60 Farm St	\N	\N	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	1	1	\N	1	45.26
Walton Field and Galvin Middle School	\N	North Ave	Armory St	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	1	\N	1	15.16
Yeuell School Field	\N	Greenwood St	Glendale Ave	01880	\N	\N	Urban	MA	Middlesex	Wakefield	\N	\N	\N	1	\N	\N	7.29
Bobby Connors Playground	20 Sunnyside St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	1	1	\N	2.98
Cedarwood Playground	25 Intervale Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	\N	\N	7
Chemistry Park	110 Pine St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham
Cornelia Warren Field	210 Waverly Oaks Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	1	\N	1	4.84
Drake Playground	3 Hazel St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	1	1	\N	2.16
Elsie Turner Field	421 Trapelo Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	1	\N	\N	6
Fitch Spray Park	14 Ash St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham
Graverson Playground	16 Pine Vale Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	1	1	1	1	4.44
Hillcroft Playground	25 Hillcroft Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	\N	\N	2.42
Jack Koutoujian Playground	910 Moody St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	1	1	1	11.09
James P. Falzone Memorial Park	901 Trapelo Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	\N	\N	1	10.54
Lazazzero Playground	7 Shore Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	1	1	\N	4.3
Logan Park	120 Woerd Ave	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	\N	\N	0.45
Lowell Field	190 Grove St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	1	1	1	1	5.35
McDonald Playground	8 Cutter St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	1	\N	0.67
McKenna Playground	10 Whitcomb St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	1	1	\N	3.15
Msgr. McCabe/ Warrendale Playground	90 Charlotte Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	1	1	1	\N	4.86
Nipper Maher Park	65 Dartmouth St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	1	1	1	\N	18.5
Peter Gilmore Playground	90 Hall St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	1	\N	1.35
Pond End Tot Lot	93 Winter St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	\N	\N	1.42
Prospect Hill Park	314 Totten Pond Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	\N	\N	252.22
Thompson Playground	95 Charles St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	1	\N	\N	\N	1
Veterans Memorial Athletic Complex	385 Forest St	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	1	\N	1	25
Veterans Memorial Skating Rink	295 Totten Pond Rd	\N	\N	\N	\N	\N	Urban	MA	Middlesex	Waltham	\N	\N	\N	\N	\N	1
Arsenal Park�	485 Arsenal St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	1	1	1	1	13.2
Bemis Park�	76 Bridge St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	1	1	1	1.8
Browne School Playground�	552 Main St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	\N	\N	\N	1	\N	1	2.7
Casey (W.O. James P.) Park�	124 Watertown St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	1	1	1	1	6.1
Cunniff School Playground�	246 Warren St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	1	1	\N	1
Dealtry Pool	114 Pleasant St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	\N	1
Farren Playground�	151 Charles River Rd	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	\N	1
Filippello (Domenick) Park�	109 Arlington St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	1	1	1
How Park	\N	Pleasant St	Bacon St	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	\N	1	1	1.6
Lowell�School Playground�	175 Orchard St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	1	1	1	3.6
Moxley (Priv. Richard) Park	31 Westminster Ave	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	1	1	1	\N	5.8
O'Connell (Cpt. Richard) Park	341 Mt Auburn St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	1	1	1	4.7
Saltonstall Park�	149 Main St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	1	1	1	4.2
Sullivan Playground�	\N	Mt Auburn St	Arlington St	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	\N	1	1	1	1.2
Victory Field	40 Orchard St	\N	\N	02472	\N	\N	Urban	MA	Middlesex	Watertown	1	\N	1	1	1	1	14.2
Alpine Field	24 Alpine Rd	\N	\N	01778	\N	\N	Urban	MA	Middlesex	Wayland	1	\N	\N	1	\N	1
Art King Field (Town Building Field)	53 Cochituate Rd	\N	\N	01778	\N	\N	Urban	MA	Middlesex	Wayland	1	\N	\N	1	\N	1
Claypit Hill Field	40 Adams Ln	\N	\N	01778	\N	\N	Urban	MA	Middlesex	Wayland	1	\N	\N	1	1	1
Cochituate Field	22 W Plain St	\N	\N	01778	\N	\N	Urban	MA	Middlesex	Wayland	1	\N	\N	1	1
Happy Hollow School	63 Pequot Rd	\N	\N	01778	\N	\N	Urban	MA	Middlesex	Wayland	1	\N	\N	1	1
Loker School	47 Loker St	\N	\N	01778	\N	\N	Urban	MA	Middlesex	Wayland	1	\N	\N	1	1
Riverview Field	\N	Riverview Ave	Overlook Rd	01778	\N	\N	Urban	MA	Middlesex	Wayland	\N	\N	\N	1
Abbot/Millenium School	23 Depot St	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	\N	\N	1
American Legion Field, Graniteville	\N	River St	1st St	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	1	1	1
Blanchard Middle School	14 West St	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	\N	\N	\N	\N	1
Crisafulli School	13 Robinson Rd	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	1	1
Day School	75 E Prescott St	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	\N	1	1
Edward's Beach	\N	Williams Ave	Edwards Ave	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	\N	\N	1
Forge Beach	\N	\N	\N	\N	42.578627	-71.49	Urban	MA	Middlesex	Westford	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Frost Field and Whitney Tennis Courts	73 Main St	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	1	1	\N	1
Greystone Field	\N	\N	\N	\N	42.631535	-71.427	Urban	MA	Middlesex	Westford	\N	\N	1	1	1	\N	\N	\N	\N	Coordinates
Hamilton Field	\N	Oak Hill	Plain Rd	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	1	1	1	1
Jack Walsh Field	\N	Carlisle Rd	Texas Rd	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	1	\N	1	1
Kimball Farm	400 Littleton Rd	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford
Miller School	\N	Vineyard Rd	Mitchell Way	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	\N	1	1
Nabnasset School	99 Plain Rd	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	\N	1	1
Robinson School	60 Concord Rd	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	1	1	1	1
Veterans Memorial Complex and Stony Brook Middle School	9 Farmer Way	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	\N	\N	1	1	1	1
VFW Field-Forge Village Ballfield	\N	W Prescott St	Village View Rd	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	1	1	1
Westford Academy Track	Patten Rd	\N	\N	01886	\N	\N	Urban	MA	Middlesex	Westford	1	\N	\N	1	\N	1
Westford Town Common	\N	Main St	Lincoln St	01886	\N	\N	Urban	MA	Middlesex	Westford
Alphabet Field	\N	Alphabet Ln	School St	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	\N	\N	1
Brook School Field	44 School St	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	\N	\N	1
Buchard Park	269 Concord Rd	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	1
Burt Field	\N	\N	\N	\N	42.328878	-71.285428	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Cambridge School	45 Georgian Rd	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	1
Cherry Brook Field	\N	Cherry Brook Rd	Pollywog Ln	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1	1	1
Country School Field	2 Alphabet Ln	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	1	\N	\N	\N	1	1
Czarnowski Field	\N	Brook Rd	Viles St	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	\N	1	1
Ferrelli Field	45 Bogle St	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1
Malone Field	\N	\N	\N	\N	42.387522	-71.280649	Urban	MA	Middlesex	Weston	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Meadowbrook School	10 Farm Rd	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	1	\N	\N	1	\N	1
Memorial Pool	6 Alphabet Ln	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	1
Regis College	235 Wellesley St	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	\N	1
Rivers School	333 Winters St	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	\N	1
Weston High School	444 Wellesley St	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	1	1
Weston Middle School	456 Wellesley St	\N	\N	02493	\N	\N	Urban	MA	Middlesex	Weston	\N	\N	1	1	1	1
Aprile Field and Town Park	\N	\N	\N	\N	42.534295	-71.160583	Urban	MA	Middlesex	Wilmington	\N	\N	\N	1	\N	\N	61	\N	\N	Coordinates
Boutwell-West Intermediate-Middle School Campus	\N	Boutwell St	Carter Ln	01887	\N	\N	Urban	MA	Middlesex	Wilmington	1	\N	1	1	1	1	41.3
North Intermediate School	\N	Salem St	Ballardvale st	01887	\N	\N	Urban	MA	Middlesex	Wilmington	1	\N	1	1	1	1	14
Robert Palmer Park	121 Glen Rd	\N	\N	01887	\N	\N	Urban	MA	Middlesex	Wilmington	1	\N	\N	1	1	1	8
Rotary Park	\N	Adelaide St	Church St	01887	\N	\N	Urban	MA	Middlesex	Wilmington	1	\N	\N	1	\N	\N	6.5
Shawsheen Elementary School	298 Shawsheen Ave	\N	\N	01887	\N	\N	Urban	MA	Middlesex	Wilmington	1	\N	1	1	1	1	20.5
Wildwood Street School	\N	Wildwood St	Senpek Rd	01887	\N	\N	Urban	MA	Middlesex	Wilmington	1	\N	1	\N	1	1
Wilmington High School	159 Church St	\N	\N	01887	\N	\N	Urban	MA	Middlesex	Wilmington	\N	\N	1	1	1	1	17
Woburn Street School	\N	Woburn St	North St	01887	\N	\N	Urban	MA	Middlesex	Wilmington	1	\N	1	1	1	1	10
Ambrose School	27 High St	\N	\N	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	\N	1	1	1
Bellino Park	\N	Main St	Swanton St	01890	\N	\N	Urban	MA	Middlesex	Winchester
Borggaard Beach Park and Packer-Ellis Tennis Courts	17 Palmer St	\N	\N	01890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	1
Chefalo Park	\N	Washington St	Myrtle St	01890	\N	\N	Urban	MA	Middlesex	Winchester
Davidson Park	\N	Cross St	Forest St	01890	\N	\N	Urban	MA	Middlesex	Winchester
Elliot Park	\N	Main St	Lake St	01890	\N	\N	Urban	MA	Middlesex	Winchester
Ginn Field	\N	Bacon St	Mystic Valley Pkwy	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	\N	1	\N	1
Leonard Field	\N	Washington St	Grayson Rd	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	1	\N	1	1
Lynch School	10 Brantwood Rd	\N	\N	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	\N	1	\N	1
McCall Middle School	458 Main St	\N	\N	01890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	\N	1	1
McDonald Field	\N	Hill St	Fitzgerald Ave	01890	\N	\N	Urban	MA	Middlesex	Winchester
Mullen Field	\N	Ridge St	Lockeland Rd	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	1	1	1
Muraco School	33 Bates Rd	\N	\N	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	\N	\N	1	1
Parkhurst School	\N	Samoset St	Andrews Rd	01890	\N	\N	Urban	MA	Middlesex	Winchester	\N	\N	\N	1	1
Skillings Field	\N	\N	\N	\N	42.457629	-71.1	Urban	MA	Middlesex	Winchester	\N	\N	\N	1	1	1	\N	\N	\N	Coordinates
Vinson-Owen Elementary School	75 Johnson Rd	\N	\N	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	\N	\N	1	1
Washington St Park	\N	Washington St	Sunset Rd	01890	\N	\N	Urban	MA	Middlesex	Winchester
West Side Fields	\N	Wildwood St	Albamont Rd	01890	\N	\N	Urban	MA	Middlesex	Winchester	1	\N	\N	1
Town Common	\N	Church St	Waterfield St	01890	\N	\N	Urban	MA	Middlesex	Winchester
Altavesta School	990 Main St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	1	\N	\N	1	1	1
Ferullo Field	880 Main St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	1	1	1	1	1
Gillis Park	240 Lexington St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	1	\N	\N	1
Gonsalves Field	46 S Bedford St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	\N	\N	1	1	1
Green Street Playground	60 Green St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	1	1	\N	\N	1	1
Higgins Field	36 Bow St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	\N	\N	1	1
Kennedy Middle School Field	\N	\N	\N	\N	42.491842	-71.144559	Urban	MA	Middlesex	Woburn	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Leland Park	87 Central St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	1	1	\N	1	1	1
Library Park	\N	\N	\N	\N	42.480747	-71.156243	Urban	MA	Middlesex	Woburn	1	\N	1	1	1	1	\N	\N	\N	Coordinates
Ryan Park	\N	Russell St	Squanto Rd	01801	\N	\N	Urban	MA	Middlesex	Woburn	1	\N	\N	\N	\N	1
Veteran�s Field	144 School St	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	\N	\N	\N	1
Weafer Park	40 Forest Park Rd	\N	\N	01801	\N	\N	Urban	MA	Middlesex	Woburn	1	\N	\N	1
Arcand	156 Lake St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	\N	\N	1
Crooks Corner	1 South Main St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham
High School /Blackstone	106 Blackstone Rd	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	1	1	1
High Street Complex	33 High St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	1	\N	1
Macy School	60 Monique Dr	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	1	\N	1
North Field	415 Hartford Ave	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	\N	1	1
Richardson Field	55 Harpin St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	1	\N	1
RobertsField /Peneau Field	70 Harpin St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	1	\N	1
Silver Lake	100 Cross St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	\N	\N	1
Stall Brook School	342 Hartford Ave	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	1	1	1	1
The Town Common	15 Mendon St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham
Trottier Field	66 Harpin St	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	\N	\N	\N	1	\N	1
Tuttle Field	63 HarpinSt	\N	\N	02019	\N	\N	Urban	MA	Norfolk	Bellingham	1	\N	\N	1	\N	1
Adams Park	\N	Adams St	Commercial St	02184	\N	\N	Urban	MA	Norfolk	Braintree	1	\N	\N	1	1
Daily Field	\N	Washington St	Woodsum Dr	02184	\N	\N	Urban	MA	Norfolk	Braintree	\N	\N	\N	\N	\N	1
Dyer Hill Park	\N	Washington St	Shepard Rd	02184	\N	\N	Urban	MA	Norfolk	Braintree	1	\N	\N	\N	1
Erwin Davis	\N	Faxon St	Commercial St	02184	\N	\N	Urban	MA	Norfolk	Braintree	1
French Commons	773 Washington St	\N	\N	02184	\N	\N	Urban	MA	Norfolk	Braintree	1	\N	1	1	1
Harris Park	\N	Perry Rd	Elmlawn Rd	02184	\N	\N	Urban	MA	Norfolk	Braintree	1	\N	\N	\N	1
Hollingsworth Park	\N	Pond St	Delta Rd	02184	\N	\N	Urban	MA	Norfolk	Braintree	\N	\N	\N	1	1
Hollis Field	\N	Webster Rd	Wilmarth Rd	02184	\N	\N	Urban	MA	Norfolk	Braintree	\N	\N	1	1	1	1
Pond Meadow Park	\N	\N	\N	\N	42.206953	-70.976164	Urban	MA	Norfolk	Braintree	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Watson Field	\N	Gordon Rd	Arthur St	02184	\N	\N	Urban	MA	Norfolk	Braintree	1	\N	1	1	1
Amory Playground	\N	Freeman St	Armory St	02446	\N	\N	Dog	MA	Norfolk	Brookline	\N	\N	1	1	\N	1	8.28	1
Baker School Playground	205 Beverly Rd	\N	\N	02467	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	1	1	1	1	11.27
Baldwin School Playground	490 Heath St	\N	\N	02467	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	\N	\N	\N	\N	1.25
Beacon Street Mall	\N	Beacon St	Marion St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	14.25
Billy Ward Playground	11 Brook St	\N	\N	02445	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	\N	\N	1	\N	0.54
Boylston Street Playground	\N	Cameron St	Leverett St	02445	\N	\N	Dog	MA	Norfolk	Brookline	1	\N	\N	1	1	1	1.16	1
Brington Road Island	49 Brington Rd	\N	\N	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.08	\N	\N	Nearest
Brookline Avenue Playground	\N	Brookline Ave	Aspinwall Ave	02445	\N	\N	Dog	MA	Norfolk	Brookline	1	\N	\N	1	\N	1	4.05	1
Brookline Reservoir Park	\N	Boylston St	Lee St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	32.21
Clark Playground	\N	Cypress St	Mulford St	02445	\N	\N	Urban	MA	Norfolk	Brookline	1	1	\N	\N	1	\N	1.08
Coolidge Playground	\N	Columbia St	Kenwood St	02446	\N	\N	Dog	MA	Norfolk	Brookline	1	1	1	\N	1	\N	1.68	1
Corey Farm Circle	\N	\N	\N	\N	42.34007	-71.139752	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.06	\N	\N	Coordinates
Corey Hill Park	174 Summit Ave	\N	\N	02446	\N	\N	Dog	MA	Norfolk	Brookline	1	\N	\N	\N	\N	\N	4.16	1
Cypress Street Playground	\N	Cypress St	Davis Ave	02445	\N	\N	Urban	MA	Norfolk	Brookline	1	1	\N	1	1	1	5.22
Dane Park	\N	Hammond St	Woodland Rd	02467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	17.23
Daniel F Ford Playground at Emerson Garden	\N	Davis Ave	Emerson St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	1	\N	\N	\N	\N	2.05
Daniel W Warren, Jr Playground	\N	Chestnut Hill Ave	Ackers Ave	02445	\N	\N	Urban	MA	Norfolk	Brookline	1	1	1	1	1	1	11.1
Devotion School Playground	345 Harvard St	\N	\N	02446	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	1	1	1	1	6.72
Driscoll School Playground	64 Westbourne Terr	\N	\N	02446	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	1	\N	1	1	4.03
Dudley Triangle	\N	Dudley St	Lee St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.81
Dwight Square	\N	Dwight St	Babcock St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.16
Eliot @ Crafts Triangle	\N	Eliot St	Crafts Rd	02467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.26
Emerald Necklace I - Riverway Park	\N	Brookline Ave	Parkway Rd	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	13.8
Emerald Necklace II - Olmsted Park	\N	Jamaicaway	Willow Pond Rd	02130	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	12.94
Francis J. Hickey Square	\N	Harvard St	Kent St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.06
Francis X. Ryan Circle	\N	\N	\N	\N	42.303285	-71.151356	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.71	\N	\N	Coordinates
Freeman Square	\N	Freeman St	Babcock St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.15
Griggs Park	\N	Griggs Rd	Griggs Terr	02446	\N	\N	Dog	MA	Norfolk	Brookline	1	\N	\N	\N	\N	\N	3.34	1
Harry Downes Field	\N	Jamaica Rd	Pond Ave	02445	\N	\N	Dog	MA	Norfolk	Brookline	1	\N	\N	1	\N	1	8.73	1
Heath School Playground	100 Eliot St	\N	\N	02467	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	\N	\N	1	\N	6.51
Horace James Circle	\N	\N	\N	\N	42.3103755	-71.1633867	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.71	\N	\N	Coordinates
Jean B Waldstein (Dean) Playground	21 Dean Rd	\N	\N	02445	\N	\N	Dog	MA	Norfolk	Brookline	1	1	1	1	1	1	5.63	1
John E Murphy Playground	\N	Kent St	Bowker St	02445	\N	\N	Urban	MA	Norfolk	Brookline	1	1	\N	\N	1	\N	0.51
Judge Henry Crowley Park at Saint Mark's Square	\N	Marion St	Veron St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.4
Juniper Street Playground	\N	\N	\N	\N	42.330016	-71.117359	Urban	MA	Norfolk	Brookline	1	1	\N	\N	\N	\N	0.41	\N	\N	Coordinates
Knyvet Square	\N	Ewe St	St Paul St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	2.8
Larz Anderson Park	350 Goddard Ave	\N	\N	02446	\N	\N	Dog	MA	Norfolk	Brookline	1	\N	\N	1	\N	1	61.13	1
Lawton Playground	\N	Lawton St	Thorndike St	02446	\N	\N	Urban	MA	Norfolk	Brookline	1	1	\N	\N	1	\N	1.08
Linden Park	\N	Linden Pl	Linden St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.28
Linden Square	\N	Linden Pl	Perry St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.19
Little Field Park	\N	Eliot St	Eliot Crescent	02467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.84
Longwood Mall	\N	Kent St	Beech Rd	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	2.55
Longwood Playground	\N	Longwood Ave	Marshal St	02446	\N	\N	Urban	MA	Norfolk	Brookline	1	1	1	1	1	1	4.99
Lotta Bradburn Schick Park	153 Addington Rd	\N	\N	02445	\N	\N	Dog	MA	Norfolk	Brookline	1	\N	\N	\N	1	\N	1.1	1
Margaret E Robinson Playground	\N	Cypress St	Franklin St	02445	\N	\N	Dog	MA	Norfolk	Brookline	1	1	\N	1	1	1	2.38	1
Mason Square	\N	Mason St 	Essex St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	1.14
Monmouth Street Park	\N	\N	\N	\N	42.344597	-71.106614	Urban	MA	Norfolk	Brookline	1	\N	\N	\N	\N	\N	0.16	\N	\N	Coordinates
Philbrick Square	\N	Upland Rd	Maple St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.28
Pierce School Playground	50 School St	\N	\N	02446	\N	\N	Urban	MA	Norfolk	Brookline	1	1	\N	1	1	1	2.37
Pleasant Street Triangle	\N	Pleasant St	Waldo St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.05
Reservoir Road Extension	\N	Reservoir Rd	Middlesex Rd	02467	\N	\N	Dog	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.09	1
Runkle School Playground	50 Druce St	\N	\N	02445	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	\N	\N	1	\N	3.05
Single Tree Road Circle	\N	\N	\N	\N	42.323208	-71.150652	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.33	\N	\N	Coordinates
Skyline Park	\N	\N	\N	\N	42.310855	-71.167261	Urban	MA	Norfolk	Brookline	1	\N	\N	\N	\N	1	15.15	\N	\N	Coordinates
Town Hall Lot	\N	Washington St	Holden St	02445	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	1.99
VFW Parkway Median	\N	VFW Pkwy	South St	02467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	1.17
Webster Street Triangle	\N	Webster St	Beacon St	02446	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	0.08
West Roxbury Parkway	\N	Newton St	Wolcott Rd	02467	\N	\N	Urban	MA	Norfolk	Brookline	\N	\N	\N	\N	\N	\N	2.16
William H Lincoln School	19 Kennard Rd	\N	\N	02445	\N	\N	Urban	MA	Norfolk	Brookline	1	\N	\N	\N	1	\N	5.75
Winthrop Square (Minot Rose Garden)	\N	St Paul St	Browne St	02446	\N	\N	Urban	MA	Norfolk	Brookline	1	1	\N	\N	\N	1	1.93
Blue Hills Regional School	800 Randolph St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	\N	\N	\N	1	\N	1
Bolivar Swimming Pool	\N	\N	\N	\N	42.151493	-71.13917	Urban	MA	Norfolk	Canton	\N	1	\N	\N	\N	\N	\N	\N	\N	Coordinates
Canton High School and Fields	900 Washington St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	1	1	\N	1
Devoll Playground	\N	Pine St	Bolivar St	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1	\N	1
Galvin Middle School	55 Pecunit St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	\N	\N	\N	\N	\N	1
Hansen Elementary School	25 Pecunit St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1	1	1
JFK Elementary School	100 Dedham St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1	1	1
Luce Elementary School	45 Independence St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1
Memorial Fields & Playground	\N	Reynolds St	Vaughn St	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1	\N	1
Messinger Playground	21 Messinger St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1
Metropolis Skating Rink	2167 Washington St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	\N	\N	\N	\N	\N	1
Pequitside Farm	79 Pleasant St	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	\N	\N	1
Ponkapoag Playground	\N	Sutcliffe Ave	Cedar Dr	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1	1
Tilden Playground	7 Tilden Rd	\N	\N	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	1
Windsor Woods Soccer / Lacrosse	\N	Washington St	Windsor Woods Ln	02021	\N	\N	Urban	MA	Norfolk	Canton	1	\N	\N	\N	\N	1
Cohasset Common	\N	N Main St	Robert Jason Rd	02025	\N	\N	Urban	MA	Norfolk	Cohasset
Cohasset Middle-High School	143 Pond St	\N	\N	02025	\N	\N	Urban	MA	Norfolk	Cohasset	\N	\N	\N	\N	\N	1
Cohasset Town Hall	41 Highland Ave	\N	\N	02025	\N	\N	Urban	MA	Norfolk	Cohasset
Deer Hill School	208 Sohier St	\N	\N	02025	\N	\N	Urban	MA	Norfolk	Cohasset	1	\N	\N	1	1	1
Joseph Osgood School	210 Sohier St	\N	\N	02025	\N	\N	Urban	MA	Norfolk	Cohasset	1
Milliken Field	Bancroft Rd	\N	\N	02025	\N	\N	Urban	MA	Norfolk	Cohasset	\N	\N	1	1	\N	1
Paul Pratt Library	35 Ripley Rd	\N	\N	02025	\N	\N	Urban	MA	Norfolk	Cohasset	1	\N	\N	\N	1
Barnes Memorial Park	\N	Eastern Ave	East Ave	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	\N	\N	14.7
Capen School field	322 Sprague St	\N	\N	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	1
Churchill Park	\N	Churchill Pl	Allen Ln	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	1	\N	1.6
Condon Park	\N	Bussey St	Colburn St	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	\N	1	7.2
Dedham Common	\N	Common St	High St	02026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	4
East Dedham Passive Park	\N	\N	\N	02026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Fairbanks Park	169 Rustcraft Rd	\N	\N	02026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	1	\N	1	14.2
Gerish Park	\N	\N	\N	02026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Greenlodge School field	\N	Greenlodge St	Colwell Dr	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	1
Hartnett Square	\N	\N	\N	02026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Oakdale School field	\N	Madison St	Circuit Rd	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	1
Oakdale Square	\N	Oakdale Ave	River St	02026	\N	\N	Urban	MA	Norfolk	Dedham
Paul Park (Gregory M Riley Memorial Playground)	\N	Cedar St	Tower St	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	1	\N	2.9
Riverdale School field	\N	Needham St	Egan Terr	02026	\N	\N	Urban	MA	Norfolk	Dedham	1	\N	\N	1	1	1
Whiting Triangle	\N	\N	\N	02026	\N	\N	Urban	MA	Norfolk	Dedham	\N	\N	\N	\N	\N	\N	\N	\N	\N	Cant Find
Bickford-Ballou Park / Boat Landing	\N	Claybrook Rd	Riverside Dr	02030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	\N	2.28
Caryl Park	107 Dedham St	\N	\N	02030	\N	\N	Urban	MA	Norfolk	Dover	1	\N	1	1	1	\N	82.00	\N	\N	Coordinates
Channing Park	\N	\N	\N	\N	42.24622512	-71.29014546	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	\N	6.14	\N	\N	Coordinates
Chickering Playfields	\N	\N	\N	\N	42.24904945	-71.27104796	Urban	MA	Norfolk	Dover	\N	\N	\N	1	\N	1	43.95	\N	\N	Coordinates
Dover-Sherborn Middle School	155 Farm St	\N	\N	02030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	1
Elm Bank	\N	Reservation Rd	Cheney Dr	02030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	1	182
Town Common	5 Springdale Ave	\N	\N	02030	\N	\N	Urban	MA	Norfolk	Dover	\N	\N	\N	\N	\N	\N	5.72
Booth Playground	\N	South St	Union St	02035	\N	\N	Urban	MA	Norfolk	Foxborough	\N	\N	1	1	1	1	20.32
Burrell Elementary School	16 Morse St	\N	\N	02035	\N	\N	Urban	MA	Norfolk	Foxborough	1	\N	\N	1	\N	\N	23
Cocasset River Recreation Area	68 Mill St	\N	\N	02035	\N	\N	Urban	MA	Norfolk	Foxborough	1	1	\N	\N	\N	1	19.7
Foxborough High School	120 South St	\N	\N	02035	\N	\N	Urban	MA	Norfolk	Foxborough	\N	\N	1	1	\N	1	40.65
Igo Elementary School	70 Carpenter St	\N	\N	02035	\N	\N	Urban	MA	Norfolk	Foxborough	1	\N	\N	\N	\N	\N	4.21
John J Aheern Middle School	111 Mechanic St	\N	\N	02035	\N	\N	Urban	MA	Norfolk	Foxborough	\N	\N	\N	1	\N	1	37.36
Taylor Elementary School	196 South St	\N	\N	02035	\N	\N	Urban	MA	Norfolk	Foxborough	1	\N	\N	1	\N	\N	11.8
Beaver Pond Rec. Area	\N	\N	\N	\N	42.083434	-71.415902	Urban	MA	Norfolk	Franklin	\N	\N	\N	\N	\N	1	2	\N	\N	Coordinates
Brick School	\N	Lincoln St	Maple St	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	\N	\N	\N	0.2
Chilson Beach	\N	\N	\N	\N	42.082633	-71.41683	Urban	MA	Norfolk	Franklin	1	\N	\N	\N	\N	1	2	\N	\N	Coordinates
Dacey Community Field	\N	\N	\N	\N	42.120429	-71.398988	Dog	MA	Norfolk	Franklin	1	\N	\N	1	\N	1	66.5	1	\N	Coordinates
Davis Thayer School	137 W Central St	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	1	1	\N	6
Fletcher Field	\N	Peck St	Dale St	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	1	1	\N	13.23
Franklin High School	218 Oak St	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	1	1	\N	1	73.92
Franklin Town Common	\N	Union St	Beaver St	02038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	\N	\N	\N	3.5
JFK Elementary School	551 Pond St	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	1	1	\N	15
King Street Memorial Park	\N	King St	Emilio Dr	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	1	1	1	25.87
Meadowlark Lane Complex	\N	\N	\N	\N	42.101064	-71.366297	Urban	MA	Norfolk	Franklin	\N	\N	\N	1	\N	1	2.5	\N	\N	Coordinates
Nason Street Tot Lot Playground	\N	Nason Steet	Union St	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	\N	\N	\N	0.54
Oak Street School and Horace Mann School	224 Oak St	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	\N	1	1	40
Parmenter School	235 Wachusett St	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	1	\N	\N	20.9
Pisani Field (Theron Metcalf)	\N	Peck St	Cottage St	02038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	1	\N	\N	3.65
Remington Jefferson School	628 Washington St	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	1	\N	\N	1	1	1	60
Tri County Regional Vocational Tech High School	147 Pond St	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	1	\N	1	60
Veteran's Memorial Rink	910 Panther Way	\N	\N	02038	\N	\N	Urban	MA	Norfolk	Franklin	\N	\N	\N	\N	\N	1	6.7
Brookville Playground	\N	\N	\N	\N	42.124523	-71.008265	Urban	MA	Norfolk	Holbrook	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Franklin Field	235 S Franklin St	\N	\N	02343	\N	\N	Urban	MA	Norfolk	Holbrook	\N	\N	\N	1	\N	1
Holbrook Playground	95 S Franklin St	\N	\N	02343	\N	\N	Urban	MA	Norfolk	Holbrook	1	\N	1	1	1	1
Mary Wales Holbrook Park	\N	N Franklin St	Union St	02343	\N	\N	Urban	MA	Norfolk	Holbrook
Baxter Memorial Park	\N	Main St	Spring St	02052	\N	\N	Urban	MA	Norfolk	Medfield
Hinkley Memorial Park & Swim Pond	55 Green St	\N	\N	02052	\N	\N	Urban	MA	Norfolk	Medfield	1	\N	\N	\N	\N	1
McCarthy Park	44 Hospital Rd	\N	\N	02052	\N	\N	Urban	MA	Norfolk	Medfield	\N	\N	\N	1	\N	1
Metacomet Park	93 Pleasant St	\N	\N	02052	\N	\N	Urban	MA	Norfolk	Medfield	1	\N	1	1	\N	1
Choate Pond and Park	\N	\N	\N	\N	42.147635	-71.428041	Urban	MA	Norfolk	Medway	\N	\N	1	1	1	1	\N	\N	\N	Coordinates
Garnsey Dog Park	302 Village St	\N	\N	02053	\N	\N	Dog	MA	Norfolk	Medway	\N	\N	\N	\N	\N	\N	\N	1
Grand Army of the Republic Memorial	\N	Village St	Norfolk Ave	02053	\N	\N	Urban	MA	Norfolk	Medway
Matondi Square	\N	Holliston St	Village St	02053	\N	\N	Urban	MA	Norfolk	Medway
North St Park	\N	School St	North St	02053	\N	\N	Urban	MA	Norfolk	Medway	1	\N	\N	\N	1
Winthrop St Park	8 Wards Ln	\N	\N	02053	\N	\N	Urban	MA	Norfolk	Medway	1	\N	\N	1	\N	1
Clyde Brown Field	\N	Park Rd	Main St	02054	\N	\N	Urban	MA	Norfolk	Millis
Town Park	900 Main St	\N	\N	02054	\N	\N	Urban	MA	Norfolk	Millis	1	\N	1	1	1	1
Andrews Park	\N	\N	\N	\N	42.26106197	-71.03668843	Urban	MA	Norfolk	Milton	1	\N	1	1	1	1	9	\N	\N	Coordinates
Crane Park�	2 Bates Rd	\N	\N	02186	\N	\N	Urban	MA	Norfolk	Milton
Cunningham Park�	\N	\N	\N	\N	42.25290423	-71.04890263	Urban	MA	Norfolk	Milton	1	1	1	1	\N	1	\N	\N	\N	Coordinates
Kelly Field	\N	Brook Rd	Windsor Rd	02186	\N	\N	Urban	MA	Norfolk	Milton	1	\N	1	1	\N	1	11
Mary C. Lane Playground	262 Randolph Ave	\N	\N	02186	\N	\N	Urban	MA	Norfolk	Milton	1	\N	\N	1	1	\N	4
Milton High School Athletic Fields	25 Gile Rd	\N	\N	02186	\N	\N	Urban	MA	Norfolk	Milton	\N	\N	\N	\N	\N	\N	15
River Side Stables	189 Hillside St	\N	\N	02186	\N	\N	Urban	MA	Norfolk	Milton
Shields Park	392 Eliot St	\N	\N	02186	\N	\N	Urban	MA	Norfolk	Milton	1	\N	\N	1	\N	\N	5
Turners Pond	\N	\N	\N	\N	42.26198888	-71.07895988	Urban	MA	Norfolk	Milton	\N	\N	\N	\N	\N	\N	26	\N	\N	Coordinates
Avery Park	\N	Webster St	Highland Ave	02492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1
Broadmedow School	120 Broadmedow Rd	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1
Claxton Field	\N	Central Ave	Marked Tree Rd	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	1
Cricket Field	\N	Hillside Ave	Sunnyside Rd	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	\N	1	1
DeFazio Park	\N	Dedham Ave	South St	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	1	\N	1
Dwight Field	50 Dwight Rd	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1
Eliot School	135 Wellesley Ave	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	1
Greene�s Field	\N	Pickering St	Great Plain Ave	02492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	1	1	1
High Rock School	\N	\N	\N	\N	42.27521401	-71.24308402	Urban	MA	Norfolk	Needham	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Hillside School	28 Glen Gary Rd	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	1	\N	1
Memorial Park	92 Rosemary St	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	\N	\N	\N	1
Mills Field	96 Gould St	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	1	1	1
Mitchell School	187 Brookline St	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	1	1
Needham High School	609 Webster St	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	1
Newman School	1155 Central Ave	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	1	1
Perry Park	\N	Beaufort Ave	Arden St	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	1	1
Pollard Middle School	200 Harris Ave	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	\N	\N	1	1
Riverside Park	\N	Riverside St	Highview St	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	\N	\N	1
Walker-Gordon	156 Charles River St	\N	\N	02492	\N	\N	Urban	MA	Norfolk	Needham	1	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Freeman Centennial School	70 Boardman St	\N	\N	02056	\N	\N	Urban	MA	Norfolk	Norfolk
H Olive Day	232 Main St	\N	\N	02056	\N	\N	Urban	MA	Norfolk	Norfolk	1
Kids Place	Boardman St	\N	\N	02056	\N	\N	Urban	MA	Norfolk	Norfolk	\N	\N	\N	\N	\N	\N	2.7
King Philip North School	18 King St	\N	\N	02056	\N	\N	Urban	MA	Norfolk	Norfolk	\N	\N	\N	1	\N	1
Pond St Recreation Facility	33 Pond St	\N	\N	02056	\N	\N	Urban	MA	Norfolk	Norfolk	1	\N	1	1	1	1	21
Balch School	1170 Washington St	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	1	\N	\N	\N	\N	\N	3.27
Bond St. Playground	\N	Bond St	Walpole St	02062	\N	\N	Urban	MA	Norfolk	Norwood	1	\N	\N	\N	\N	\N	1.41
Callahan School	116 Garfield Ave	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	10.83
Charles Eliot Park	\N	St Georges Ave	Pond Ave	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	\N	7.28
Cleveland School	33 George Willet Pkwy	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	18.42
Coakley Middle School	1315 Washington St	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	38.2
D.A.V. Park	\N	Walpole St	Chapel St	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	4.49
Doherty Field	\N	Brewster Dr	Sumner St	02062	\N	\N	Urban	MA	Norfolk	Norwood	1	\N	\N	1	\N	\N	7.7
Fortune Drive Rec. Lot	4 Fortune Dr	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	0.29
Fr. McAleer Playground	\N	Hawthorne St	Vernon St	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	1	\N	\N	\N	1	47.27
Guild Square Park	\N	Guild St	Washington St	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	0.7
Hartshorns Swale	\N	E Cross St	W Border Rd	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	1	1.9
Hawes Rec Area	\N	Washington St	Short St	02062	\N	\N	Urban	MA	Norfolk	Norwood	1	1	\N	\N	\N	\N	7.10
Hennessey Field	\N	\N	\N	\N	42.187209	-71.19507	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	7.55	\N	\N	Coordinates
Ivatts Tennis Courts	\N	\N	\N	\N	42.173435	-71.210123	Urban	MA	Norfolk	Norwood	\N	\N	1	\N	\N	\N	0.7	\N	\N	Coordinates
Mylod St. Park	\N	Washington St	Mylod St	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	0.9
Neponset Valley Land	\N	\N	\N	\N	42.167348	-71.185634	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	89.92	\N	\N	Coordinates
Oldham School	165 Prospect St	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	\N	1	15.56
Pleasant St. Park	\N	Pleasant St	Lenox Ave	02062	\N	\N	Urban	MA	Norfolk	Norwood	1	\N	\N	1	1	\N	3.17
Prescott School	66 Richland Rd	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	1	1	\N	10.13
Senior High School	245 Nichols St	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	1	1	\N	1	22.54
Shattuck Park	\N	Winter St	Bond St	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	7.53
Town Common / Memorial Park	\N	Common St	Main St	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	1.1
Westover Parkway	\N	Westover Pkwy	Eden St	02062	\N	\N	Urban	MA	Norfolk	Norwood	\N	\N	\N	\N	\N	\N	29.46
Willet School	\N	\N	\N	\N	42.19461	-71.221592	Urban	MA	Norfolk	Norwood	1	\N	1	1	\N	\N	22.89	\N	\N	Coordinates
Wilson St. Playground	66 Wilson St	\N	\N	02062	\N	\N	Urban	MA	Norfolk	Norwood	1	\N	\N	1	\N	\N	11.11
Winslow Ave. Lot	\N	Winslow Ave	Harding Ave	02062	\N	\N	Urban	MA	Norfolk	Norwood	1	\N	\N	1	\N	\N	2.63
Field of Dreams	\N	\N	\N	\N	42.012834	-71.329497	Urban	MA	Norfolk	Plainville	\N	\N	\N	1	\N	\N	30	\N	\N	Coordinates
Town Park / Clarence Telford Park	\N	South St	School St	02762	\N	\N	Urban	MA	Norfolk	Plainville	1	1	1	1	1	1	19
Allerton Street�Playground	\N	Allerton St	Camden St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	\N	\N	0.5
Arthur Boyson Park	25 Heron Rd	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	1	\N	1.3
Beechwood Knoll Playground	\N	Fenno St	Rice Rd	02170	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	1	\N	2.2
Bishop Playground	88 Holbrook Rd	\N	\N	02171	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	1	1	1	5.5
Bradford Street Playground	\N	Bradford St	Madison Ave	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	1	\N	1
Brill Field�	\N	Island Ave	Sea St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	1	1	1	4.6
Broad Meadows	131R Sea St	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	1	1	1	1	17
Cavanagh Stadium	\N	\N	\N	\N	42.276835	-71.023374	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1	1	4.5	\N	\N	Coordinates
Curry Field�	\N	\N	\N	\N	42.234829	-71.030273	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	\N	\N	1	\N	\N	Coordinates
Faxon Field / Russell Park	\N	Southern Artery	Coddington St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	1	1	1	7.5
Faxon Park	\N	Faxon Park Rd	Faxon Ln	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	1	1	\N	57
Flaherty Park	530 Quarry St	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	1	1	0.75
Flynn Playground	\N	Elm St	South St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	1	\N	1
Forbes Hill Playground	\N	\N	\N	\N	42.257858	-71.027462	Urban	MA	Norfolk	Quincy	1	\N	1	1	1	\N	5.25	\N	\N	Coordinates
Fore River Field	\N	Beechwood St	Nevada Rd	02169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	1	1	1	1	7.2
Freedom Park	8 Thomas Burgin Pkwy	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy
Grasso Playground	\N	Columbia St	Taber St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	1	\N	0.6
Grenham Street�Playground	\N	Macy St	Bird St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	\N	\N	0.5
Kincaide Park	\N	Roberts St	S Jr Terr	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	1	\N	1	5.2
LaBrecque Field	\N	Sea St	Rockland St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	1	1	\N	6.17
Mass Field Playground	\N	Willett St	Hamden Cir	02170	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1	\N	1.1
McKinnon Playground	\N	Chapel St	Central Ave	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	\N	\N	0.75
Merrymount Park	\N	Merrymount Pkwy	 Hancock St	02170	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	1	1	1	80
Monroe Playground	16 Papile Lane	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	1	1	9
O'Neil Field	\N	\N	\N	\N	42.277859	-71.025498	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	\N	1	8.3	\N	\N	Coordinates
O'Rourke Playground	\N	Hall Pl	Quarry St	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	1	1	1	7.6
Perkins Playground	25 Narraganett Rd	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	\N	1	1	5.57
Quarry Hills	149 Ricciuti Dr	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	1	\N	1
Smith & Quarry Street Playground	\N	Smith St	Quarry St	02169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1	\N	0.25
Snug Harbor Playground	333 Palmer St	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	1	1	1	7.8
Sterling Middle School Park	444 Granite St	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1	1	1.5
Stoney Brae Playground	162 South Central Ave	\N	\N	02170	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	\N	\N	0.5
Taffrail Road Playground	\N	Taffrail Rd	Palmer St	02169	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	1	\N	1
Teel Field	135 Newbury Ave	\N	\N	02171	\N	\N	Urban	MA	Norfolk	Quincy	\N	\N	\N	\N	\N	1	2.5
Welcome Young Playground	73 Sagamore St	\N	\N	02171	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	\N	1	1	3.16
Wendall Moses Playground	84 Parke Ave	\N	\N	02171	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	1	1	1	3.6
Whitwell Street Playground	85 Whitwell St	\N	\N	02169	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	\N	\N	6.5
Wollaston Recreational Facility	357 W Squantum St	\N	\N	02171	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	1	\N	\N	1
Wollaston School Playground	\N	Beale St	Highland Ave	02170	\N	\N	Urban	MA	Norfolk	Quincy	1	\N	\N	\N	1	\N	2.15
Devine School��	55 Old St	\N	\N	02368	\N	\N	Urban	MA	Norfolk	Randolph	1
Donovan School�	123 Reed St	\N	\N	02368	\N	\N	Urban	MA	Norfolk	Randolph	1
Imagination Station	\N	Pleasant St	Carlino Way	02368	\N	\N	Urban	MA	Norfolk	Randolph	1
Kennedy School�	20 Hurley Dr	\N	\N	02368	\N	\N	Urban	MA	Norfolk	Randolph	1
Lyons School	60 Vesey Rd	\N	\N	02368	\N	\N	Urban	MA	Norfolk	Randolph	1
Randolph Dog Park	169 West St	\N	\N	02368	\N	\N	Dog	MA	Norfolk	Randolph	\N	\N	\N	\N	\N	\N	\N	1
Tower Hill School�	6 Adams St	\N	\N	02368	\N	\N	Urban	MA	Norfolk	Randolph	1
Young School�	30 Lou Courtney Dr	\N	\N	02368	\N	\N	Urban	MA	Norfolk	Randolph	1
Ames Street Playground	75 Ames St	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon
Camp Everwood Field	125 Lakeview St	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	\N	\N	1	1
Cottage Street School	30 Cottage St	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon	1	\N	\N	\N	1	1
Deborah Sampson Park	30 East Foxboro St	\N	\N	02067	\N	\N	Dog	MA	Norfolk	Sharon	\N	\N	1	1	1	\N	\N	1
East Elementary	45 Wilshire Dr	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon	1	\N	\N	\N	1	1
Gavins Pond	120 Gavins Pond Rd	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	\N	\N	\N	1
Heights Elementary School	454 South Main St	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon	1
Memorial Park Beach	\N	Beach St	Pond St	02067	\N	\N	Urban	MA	Norfolk	Sharon
Sharon High School	181 Pond St	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	1	1	\N	1
Sharon Middle School	75 Mountain St	\N	\N	02067	\N	\N	Urban	MA	Norfolk	Sharon	\N	\N	1	1	\N	1
THE BRADLEY LESSA MEMORIAL PLAYGROUND	\N	\N	\N	\N	42.10012413	-71.11602945	Urban	MA	Norfolk	Stoughton	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
THE CAPP @ HALLORAN PARK	\N	\N	\N	\N	42.12332649	-71.09564521	Urban	MA	Norfolk	Stoughton	1	\N	\N	\N	1	1	\N	\N	\N	Coordinates
THE WEST SCHOOL ATHLETIC COMPLEX	\N	\N	\N	\N	42.13240569	-71.11187166	Urban	MA	Norfolk	Stoughton	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Adams Farm	999 North St	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole
Bird Middle School	625 Washington St	\N	\N	02032	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	1	1	7.6
Blackburn Hall/Stone Field	30 Stone St	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	\N	1	2.1
Boyden School	1852 Washington St	\N	\N	02071	\N	\N	Urban	MA	Norfolk	Walpole	1	\N	\N	1	1	1	9.6
Elm St School	415 Elm St	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole	1	\N	\N	\N	1	1
Fisher School	65 Gould St	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole	1	\N	\N	\N	\N	1	.90
High School and Turco Fields	275 Common St 	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	1	1	1	1	8.6
Johnson Middle School	111 Robbin Rd	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	1	1	1	1	5.5
Little League Fields	620 West St	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1
Memorial Park/Morgan Field	\N	School St	Stone St	02081	\N	\N	Urban	MA	Norfolk	Walpole	1	1	\N	1	\N	\N	20
Old Fisher	\N	Fisher St	Old Fisher Ln	02081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	\N	1	.96
Old Post Rd School	99 Old Post Rd	\N	\N	02032	\N	\N	Urban	MA	Norfolk	Walpole	1	\N	\N	1	\N	1	1.5
Plimpton	319 Common St	\N	\N	02081	\N	\N	Urban	MA	Norfolk	Walpole	\N	\N	\N	1	\N	\N	0.6
Brown Park	\N	Garden Rd	Lanark Rd	02481	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	\N	1	\N	\N	\N	\N	\N	No address
Fiske School Field	45 Hastings St	\N	\N	02481	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	\N	1	1	1	\N	\N	\N	No address
Hardy School Field	293 Weston Rd	\N	\N	02482	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	\N	1	1	1	\N	\N	\N	Coordinates
Hunnewell Field	\N	Smith St	Clifford St	02482	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	1	1	1	1	\N	\N	\N	Coordinates
Kelly Field	50 Elmwood Rd	\N	\N	02481	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	1	1	1	1	\N	\N	\N	Coordinates
Ouellet Playground	\N	Cedar St	Charles St	02481	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Perrin Park	50 Thomas Rd	\N	\N	02482	\N	\N	Urban	MA	Norfolk	Wellesley	\N	\N	\N	1	1	1
Scholfield School Field	27 Cedar St	\N	\N	02481	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	1	1	1	1
Sprague School Field	401 School St	\N	\N	02482	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	1	1	\N	1
Upham School Field	35 Wynnewood Rd	\N	\N	02481	\N	\N	Urban	MA	Norfolk	Wellesley	1	\N	1	1	1	1
Deerfield School	72 Deerfield Ave	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	1	\N	\N	1	1
Downey School	250 Downey St	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	1	\N	\N	1	1	1
Hanlon School Field	790 Gay St	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	1	\N	\N	1	1
June Street Playground Diamond	\N	June St	Highway St	02090	\N	\N	Urban	MA	Norfolk	Westwood	1
Lodge Field	45 Clapboardtree St	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	\N	\N	\N	1
Martha Jones School Field	80 Martha Jones Rd	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	1	\N	\N	1	1
Morrison Baseball	\N	Washington St	East St	02090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	1	1	1
School Street Playground	43 School St	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	1	\N	\N	1
Sheehan School Fields	549 Pond St	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	1	\N	\N	1	1	1
Thurston Middle School Fields	850 High St	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	\N	1	\N	1
Westood High School Fields	200 Nahatan St	\N	\N	02090	\N	\N	Urban	MA	Norfolk	Westwood	\N	\N	1	1	\N	1
Great Esker Park	\N	\N	\N	\N	42.237478	-70.930052	Urban	MA	Norfolk	Weymotuh	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Great Hill Park	\N	Bradley Rd	Baylee Rd	02191	\N	\N	Urban	MA	Norfolk	Weymotuh
Lane Beach	\N	Regatta Rd	River St	02189	\N	\N	Urban	MA	Norfolk	Weymotuh
O�Sullivan Playground	\N	Pilgrim Rd	Wadaga Rd	02191	\N	\N	Urban	MA	Norfolk	Weymotuh	\N	\N	\N	1	1
Academy Avenue School	94 Academy Ave	\N	\N	02189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	1
Beals Park	\N	Bridge St	Athens St	02191	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	\N	1
Birches Playground	\N	Westminster Rd	Cross St	02189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1
Brad Hawes Park	\N	Lakehurst Ave	Perry St	02189	\N	\N	Urban	MA	Norfolk	Weymouth
Cavern Rock Park	\N	\N	\N	\N	42.20231162	-70.92973175	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Chapman Middle School	1051 Commercial St	\N	\N	02189	\N	\N	Urban	MA	Norfolk	Weymouth
Cranberry Pond	\N	\N	\N	\N	42.22195968	-70.95792658	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
DCR Pool/Rink	220 Broad St	\N	\N	02188	\N	\N	Urban	MA	Norfolk	Weymouth	\N	1	\N	\N	\N	1
Gagnon Park	\N	\N	\N	\N	42.194149	-70.962828	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Gifford Park	\N	Thicket St	Merilyn St	02190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1
Hamilton School	400 Union St	\N	\N	02190	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Hoffman Park	\N	\N	\N	\N	42.21466966	-70.93430623	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
House Rock Park	\N	\N	\N	\N	42.214184	-70.945094	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Humphrey School Fields	\N	Lake St	Russell Whitling Way	02189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	1
Johnson School	70 Pearl St	\N	\N	02191	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	1
Julia Road Park	\N	Julia Rd	Ernest Rd	02191	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	1	1
Lake Street Beach	\N	Lake St	Charles St	02189	\N	\N	Urban	MA	Norfolk	Weymouth
Legion Field	\N	Middle St	Commercial St	02189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	1	\N	\N	1
Libby Fields	92 Middle St	\N	\N	02189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1
Lovell Fields	1250 Commercial St	\N	\N	02189	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	1	1	1
Madden/Bicknell Field	\N	Standish St	Bridge St	02191	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	1
Memorial Play Lot	\N	\N	\N	\N	42.20907	-70.939627	Urban	MA	Norfolk	Weymouth	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Mitchell Fields	111 Middle St	\N	\N	02189	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1
Murphy School	417 Front St	\N	\N	02188	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	1	1
Nash School	1003 Front St	\N	\N	02190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	1
Negus Fields	\N	\N	\N	\N	42.162469	-70.963456	Urban	MA	Norfolk	Weymouth	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Newell Field	184 Idlewell Blvd	\N	\N	02189	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	1	1
Ralph Talbot School	277 Ralph Talbot St	\N	\N	02190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	1	1
Riley Fields	\N	\N	\N	\N	42.220505	-70.951874	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Sarah Brassill Park	\N	\N	\N	\N	42.182399	-70.92859	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
Seach School	770 Middle School	\N	\N	02188	\N	\N	Urban	MA	Norfolk	Weymouth
Skate Park	\N	\N	\N	\N	42.216016	-70.922788	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Stella Tirrel Park	74 Central St	\N	\N	02190	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	1	1	1	1
Wanzer Field	\N	\N	\N	\N	42.219853	-70.953897	Urban	MA	Norfolk	Weymouth	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Webb Park	\N	Summit St	Gibbons St	02188	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	1	1
Wessagusset Beach	\N	Wessagusset Rd	Parker Rd	02191	\N	\N	Urban	MA	Norfolk	Weymouth
Wessagusset School	75 Pilgrim Rd	\N	\N	02191	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	\N	\N	\N	1
Weston Park	46 Broad St	\N	\N	02188	\N	\N	Urban	MA	Norfolk	Weymouth	1	\N	\N	1	1	1
Weymouth High School	1 Wildcat Way	\N	\N	02190	\N	\N	Urban	MA	Norfolk	Weymouth	\N	\N	1	1	1	1
Sweatt Field Complex	\N	\N	\N	\N	42.059462	-71.329009	Urban	MA	Norfolk	Wrentham	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
Sweatt Park	\N	Franklin St	Bank St	02093	\N	\N	Urban	MA	Norfolk	Wrentham	\N	\N	1
William A Rice Complex	54 Emerald St	\N	\N	02093	\N	\N	Urban	MA	Norfolk	Wrentham	\N	\N	\N	1	1	1	80
Abington High School	201 Gliniewicz Way	\N	\N	02351	\N	\N	Urban	MA	Plymouth	Abington	\N	\N	1	1	\N	1	71.1
Arnold Park	\N	Wales St	Railroad St	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	1	1	\N	3.22
Center School/Murphy Club Field	65 Thaxter Ave	\N	\N	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	1	1	\N	13.37
Early Childhood Center	\N	Ralph Hamlin Dr	Washington St	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	1	\N	\N	12.52
Frolio Jr High School	\N	\N	\N	\N	42.12033	-70.944439	Urban	MA	Plymouth	Abington	1	\N	1	1	1	1	13.6	\N	\N	Coordinates
Green Street Playground	\N	Green St	Clapp St	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	1	1
Island Grove Park	\N	Central St	Park Rd	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	\N	\N	1	55.23
Laidler Field	\N	Chestnut St	Richard A Fitts Dr	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	1	\N	\N	3.4	\N	\N	Coordinates
North School	\N	Birch St	Plymouth St	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	\N	1	\N	2.5
Plymouth Street Playfield	\N	Plymouth St	Kimberly Cir	02351	\N	\N	Urban	MA	Plymouth	Abington	\N	\N	\N	1
Woodsdale School	128 Chestnut St	\N	\N	02351	\N	\N	Urban	MA	Plymouth	Abington	1	\N	\N	1	1	1	17.34	\N	\N	Coordinates
Crescent St Fields	\N	\N	\N	\N	41.981703	-70.9855	Urban	MA	Plymouth	Bridewater	1	\N	\N	1	\N	\N	49.9	\N	\N	Coordinates
Jenny Leonard Park	\N	\N	\N	\N	41.979729	-70.9266	Urban	MA	Plymouth	Bridewater	1	\N	\N	\N	\N	\N	10.4	\N	\N	Coordinates
Legion Field	175 Bedford St	\N	\N	02324	\N	\N	Urban	MA	Plymouth	Bridewater	1	\N	\N	1	1	1
Mitchell Elementary School	500 South St	\N	\N	02324	\N	\N	Urban	MA	Plymouth	Bridewater	1	\N	\N	1	1	\N	22.17
New High School	415 Center St	\N	\N	02324	\N	\N	Urban	MA	Plymouth	Bridewater	\N	\N	\N	1	\N	1	93.61
Old High School	166 Mount Prospect St	\N	\N	02324	\N	\N	Urban	MA	Plymouth	Bridewater	\N	\N	1	1	1	1	21.01
Reinbows End	76 Flagg St	\N	\N	02324	\N	\N	Urban	MA	Plymouth	Bridewater	1
Scotland Field	\N	\N	\N	\N	41.969342	-71.0081	Urban	MA	Plymouth	Bridewater	1	\N	\N	1	1	1	\N	\N	\N	Coordinates
Toole Park	\N	Pleasant St	Tabway Ln	02324	\N	\N	Urban	MA	Plymouth	Bridewater	\N	\N	\N	\N	\N	\N	9.01	\N	\N	Future Park
Ashfield Playground	\N	Annella Rd	Coe Rd	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	1	\N	1	\N	3
Asiaf Recreation Area	Belmont St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
Brockton High School grounds and Manning Pool	470 Forest Ave�	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	1	1	1	\N	1	40
Brookfield Playground	135 Jon Dr	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	1	\N	\N	21
Buckley Playground	200 Clinton St	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	1	1	1	\N	7
City Hall Park / GAR Park	45 School St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	1.4
Clifford Avenue Playground	\N	\N	\N	\N	42.10930717	-71.02837495	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	1	\N	1	\N	\N	Coordinates
Davis School�Playground	380 Plain St	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	1	1	\N	\N	4
Downey Playground	42 Electric Ave	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	1	\N	\N	4
East Jr High Playground	496 Centre St	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	1	1	1	1	4
Eldon B. Keith Field	128 West Elm St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	1	\N	\N	3
George G. Snow Park and Cosgrove Municipal Pool	\N	Plymouth St	Centre St	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	1	\N	\N	1	1	22.7
Gilmore Playground	\N	Spring Ave	Acorn St	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	\N	1	\N	1
Hancock Field	\N	Pleasant St	Pearl St	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	1	1	\N	1
Harold D. Bent Playground	\N	Ash St	Ellsworth St	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	1	1	1	\N	5.9
Hill Street Playground	\N	\N	\N	\N	42.08227294	-70.99995705	Urban	MA	Plymouth	Brockton	1	\N	\N	1	1	\N	4	\N	\N	Coordinates
Hillstrom Farm Park	\N	North Ave	Lynn Rd	02302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	1	1	34
Huntington Street Playground	\N	Warren Ave	Market St	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	\N	\N	\N	0.7
James Edgar Playground	197 Dover St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	1	1	\N	7.2
Keith Park	1209 Montello St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	1.5
Kennedy Playground	900 Ash St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	1	\N	4
Korean/Vietnam Veterans Park	\N	Center St	Main St	02301	\N	\N	Urban	MA	Plymouth	Brockton
Massasoit Community College	\N	\N	\N	\N	42.074989	-70.986024	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	1	95	\N	\N	Coordinates
McKinley Park	\N	Winter St	Sheldon St	02302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	1	\N	1
Nelson Playground	75 Clifton Ave	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	1	1	1	\N	3
North Jr High Playground	\N	N Warren Ave	Rutland St	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	1	4
O'Donnell Playground	\N	Centre St	Machester St	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	1	1	\N	4.2
Otis Street Park	\N	Middle St	Skinner St	02302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	0.5
Parmenter Playground	\N	Oakland Ave	Baxendale Terr	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	\N	1	1	7.9
Perkins Park	42 North Main St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	1	\N	\N	\N	\N	0.5
Perrault Playground	\N	Quincy St	Beaumont Ave	02302	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	1	1	\N	\N	2
Plymouth Street Playground	\N	\N	\N	\N	42.082518	-71.012329	Urban	MA	Plymouth	Brockton	1	\N	\N	\N	\N	\N	1.7	\N	\N	Coordinates
Puffer Playground	16 Teele St	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	1	\N	2
Raymond Playground	125 Oak St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	1	\N	\N	6
Remova Park�	Claremont Ave	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
Richmond Street Playground	\N	Richmond St	Eagle Ave	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	\N	1	\N	1
Salisbury River Plain	Pine Ave	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton
Timothy B. Holster Park / W Chestnut St Playground	\N	\N	\N	\N	42.055885	-71.05058	Urban	MA	Plymouth	Brockton	1	\N	1	\N	1	\N	10.3	\N	\N	Coordinates
Tukis Playground	128 Melrose St	\N	\N	02302	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	1	12.9
Walker Playground	50 May Ave	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	1	1	1	\N	4
West Jr High Playground	271 West St	\N	\N	02301	\N	\N	Urban	MA	Plymouth	Brockton	\N	\N	\N	1	\N	\N	6
Winthrop Playground	\N	North Main St	Division St	02301	\N	\N	Urban	MA	Plymouth	Brockton	1	\N	\N	\N	\N	\N	2
Winthrop Square Clock Park	\N	\N	\N	\N	42.096248	-71.019166	Urban	MA	Plymouth	Brockton	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Carver Community Playground	2 Meadowbrook Way	\N	\N	02330	\N	\N	Urban	MA	Plymouth	Carver	1	\N	\N	\N	\N	\N	1.5
Carver High School	60 South Meadow Rd	\N	\N	02330	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	1	1	1	1	125
Forest St Recreation Site / Shaw St Field	\N	\N	\N	\N	41.899306	-70.796006	Urban	MA	Plymouth	Carver	\N	\N	\N	1	\N	\N	3.3	\N	\N	Coordinates
Governor John Carver Elementary School	85 Main St	\N	\N	02330	\N	\N	Urban	MA	Plymouth	Carver	1	\N	\N	1	1	\N	22
North Carver/Lakenham Green	\N	Plymouth Rd	Center St	02330	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	\N	0.46
Pond St Recreation Site	\N	\N	\N	\N	41.895597	-70.756717	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	1	6	\N	\N	Coordinates
Purchase St Recreation Site	\N	\N	\N	\N	41.902716	-70.794155	Urban	MA	Plymouth	Carver	\N	\N	\N	1	\N	1	9	\N	\N	Coordinates
Savery Ave	\N	Savery Ave	Main St	\N	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	\N	8.7
Shurtledd Park	\N	Main St	West St	\N	\N	\N	Urban	MA	Plymouth	Carver	\N	\N	\N	\N	\N	\N	6.33
Town Hall Recreation Area / King Property	\N	\N	\N	\N	41.888469	-70.76634	Urban	MA	Plymouth	Carver	\N	\N	1	1	1	\N	10	\N	\N	Coordinates
Chandler School	93 Chandler St	\N	\N	02332	\N	\N	Urban	MA	Plymouth	Duxbury	1	\N	\N	1	\N	1	6
Duxbury High School and Chandler Field	130 St George St	\N	\N	02332	\N	\N	Urban	MA	Plymouth	Duxbury	\N	\N	1	1	\N	1	7
Duxbury Middle School	71 Alden St	\N	\N	02332	\N	\N	Urban	MA	Plymouth	Duxbury	\N	\N	\N	\N	1	1	4
Keene St Playground	473 Keene St	\N	\N	02332	\N	\N	Urban	MA	Plymouth	Duxbury	1	\N	1	1	1	1	7.99
Library Fields and Train Athletic Field	77 Alden St	\N	\N	02332	\N	\N	Urban	MA	Plymouth	Duxbury	1	\N	1	1	\N	1	6
Lincoln St Field	\N	\N	\N	\N	42.067423	-70.72202	Urban	MA	Plymouth	Duxbury	\N	\N	\N	\N	\N	1	12.23	\N	\N	Coordinates
Lower Alden	75 Alden St	\N	\N	02332	\N	\N	Urban	MA	Plymouth	Duxbury	1	\N	\N	1	\N	1	6
Percy Walker Pool and Field	178 St George St	\N	\N	02332	\N	\N	Urban	MA	Plymouth	Duxbury	\N	1	\N	\N	\N	1
Tarklin	\N	Summer St	Autumn Ave	02332	\N	\N	Urban	MA	Plymouth	Duxbury	1	\N	1	1	\N	\N	1.5
Wadsworth Field	\N	Tremont St	Federal Eagle Rd	02332	\N	\N	Urban	MA	Plymouth	Duxbury	1	\N	1	\N	\N	1	3.31
Halifax Central Athletic Facility and Athletic Courts	464 Plymouth St	\N	\N	02338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	1	1	1	1
HOPS (Halifax Open Play Space)	470 Plymouth St	\N	\N	02338	\N	\N	Urban	MA	Plymouth	Halifax	1
Lingan St Field	206 Lingan St	\N	\N	02338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	\N	1
Summit St Soccer Complex	75 Summit St	\N	\N	02338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	\N	\N	\N	1	4
Vauhn Athletic Fields and Gordon Riker Wheels Park	540 Plymouth St	\N	\N	02338	\N	\N	Urban	MA	Plymouth	Halifax	\N	\N	\N	1	\N	1
Whitcomb Park / Holmes St Playground	129 Holmes St	\N	\N	02338	\N	\N	Urban	MA	Plymouth	Halifax	1	\N	\N	\N	1
Briggs Field	\N	Main St	Hanover St	02339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1
Cedar School Fields	265 Cedar St	\N	\N	02339	\N	\N	Urban	MA	Plymouth	Hanover	1	\N	\N	1	1
Center School Fields	65 Silver St	\N	\N	02339	\N	\N	Urban	MA	Plymouth	Hanover	1	\N	\N	1	1	1
Ceurvals Field (Myrtle)	239 Myrtle St	\N	\N	02339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	1	1
Ellis Field	738 Circuit St	\N	\N	02339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1
Forge Pond Park	\N	\N	\N	\N	42.103938	-70.881793	Urban	MA	Plymouth	Hanover	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Gallant Field	\N	\N	\N	\N	42.13945	-70.86791	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
High School Fields	287 Cedar St	\N	\N	02339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	1	1	\N	1
Middle School Fields	45 Whiting St	\N	\N	02339	\N	\N	Urban	MA	Plymouth	Hanover	\N	\N	\N	1	1	1
Sylvester School Fields and B Everett Hall Field	495 Hanover St	\N	\N	02339	\N	\N	Urban	MA	Plymouth	Hanover	1	\N	\N	1	1	1
Bare Cove Park	\N	Beal St	Sgt William B Terry Dr	02043	\N	\N	Urban	MA	Plymouth	Hingham	\N	\N	\N	1	\N	1	484
Carlson Fields	\N	\N	\N	\N	42.236553	-70.907993	Urban	MA	Plymouth	Hingman	\N	\N	\N	1	1	1	\N	\N	\N	Coordinates
Hersey Field	\N	Thaxter St	Foley Ct	02043	\N	\N	Urban	MA	Plymouth	Hingman	1	\N	\N	1
Kress Field	301 Gardner St	\N	\N	02043	\N	\N	Urban	MA	Plymouth	Hingman	\N	\N	\N	1	\N	1
Margett's Field	\N	\N	\N	\N	42.204751	-70.902114	Urban	MA	Plymouth	Hingman	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Plymouth River School	200 High St	\N	\N	02043	\N	\N	Urban	MA	Plymouth	Hingman	1	\N	1	1	\N	1
Powers Field	\N	School St	Common St	02043	\N	\N	Urban	MA	Plymouth	Hingman	\N	\N	\N	1
Hampton Circle Playground	\N	Hampton Cir	Moreland Ave	02045	\N	\N	Urban	MA	Plymouth	Hull	1	\N	\N	\N	1
L St Fields	\N	L St	Central Ave	02045	\N	\N	Urban	MA	Plymouth	Hull	1	\N	1	1	1	1
Gray's Beach Park	\N	Grays Beach Rd	Howlands Ln	02364	\N	\N	Urban	MA	Plymouth	Kingston	1	\N	1	\N	1
Kingston Intermediate School	65 2nd Brook St	\N	\N	02364	\N	\N	Urban	MA	Plymouth	Kingston	1	\N	\N	\N	1	1
Opachinski/Reed Fields	\N	\N	\N	\N	42.001306	-70.741267	Urban	MA	Plymouth	Kingston	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Reed Community House Grounds	\N	\N	\N	\N	41.996881	-70.727395	Urban	MA	Plymouth	Kingston	1	\N	1	1	1	\N	\N	\N	\N	Coordinates
Clear Pond Park	\N	\N	\N	\N	41.87186	-70.944935	Urban	MA	Plymouth	Lakeville	1	\N	1	\N	1	\N	\N	\N	\N	Coordinates
John Paun Park	52 Vaughan St	\N	\N	02347	\N	\N	Urban	MA	Plymouth	Lakeville
Ted Williams Camp	28 Precinct St	\N	\N	02347	\N	\N	Urban	MA	Plymouth	Lakeville	1	\N	\N	1	1	1
GREEN HARBOR BEACH	\N	Beach St	Bay Ave	02050	\N	\N	Urban	MA	Plymouth	Marshfield
MARSHFIELD HILLS PLAYGROUND	\N	Old Main St	the Fire station	02050	\N	\N	Urban	MA	Plymouth	Marshfield	1	\N	\N	\N	1
PETER-IGO PARK	\N	Marshall Ave	Dyke Rd	02050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	1	\N	1
REXHAME BEACH	\N	Standish St	Parker St	02050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	\N	\N	1	\N	\N	\N	\N	Nearest
STREET HOCKEY / BASKETBALL COMPLEX	\N	Forest St	Furnace St	02050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	\N	\N	1	1
TOWER AVENUE PARK	\N	Colonial Rd	Tower Ave	02050	\N	\N	Urban	MA	Plymouth	Marshfield	\N	\N	\N	1	1
Field of Dreams	50 E Grove st	\N	\N	02346	\N	\N	Urban	MA	Plymouth	Middleborough	\N	\N	\N	1	\N	1
Oliver Mill Park	\N	Nemasket St	Plymouth St	02346	\N	\N	Urban	MA	Plymouth	Middleborough
Peirce Playground	26 Jackson St	\N	\N	02346	\N	\N	Urban	MA	Plymouth	Middleborough	1	1	1	1	1	1
West Side Playground	\N	West End Ave	Hathaway St	02346	\N	\N	Urban	MA	Plymouth	Middleborough	1	\N	\N	1	1
Centennial Park	\N	\N	\N	\N	42.14446	-70.801217	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	1	1	18	\N	\N	Coordinates
Cole Elementary School	81 High St	\N	\N	02061	\N	\N	Urban	MA	Plymouth	Norwell	1	\N	\N	1	\N	1	15.4
Ed White Recreation Area	\N	\N	\N	\N	42.142381	-70.799686	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	7.69	\N	\N	Coordinates
Gaffield Park	\N	River St	Forest St	02061	\N	\N	Urban	MA	Plymouth	Norwell	1	\N	\N	\N	\N	\N	8
High School & Library	18 South St	\N	\N	02061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	1	1	\N	1	94.53
Jacobs Farm Homestead	\N	Main St	Jacobs Ln	02061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	15
Middle School	334 Main St	\N	\N	02061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	1	13
Osborne Fields	\N	\N	\N	\N	42.156946	-70.8219	Urban	MA	Plymouth	Norwell	\N	\N	\N	1	\N	1	5.73	\N	\N	Coordinates
Reynolds Playground	\N	Prouty Ave	Douglas Ave	02061	\N	\N	Urban	MA	Plymouth	Norwell	1	\N	\N	\N	1	\N	0.67
Sparrel School	322 Main St	\N	\N	02061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	32
Stetson Meadws Recreation Are	\N	\N	\N	\N	42.125605	-70.784687	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	20	\N	\N	Coordinates
Town Hall Field	345 Main St	\N	\N	02061	\N	\N	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	1	15.9
Wildcat Recreation Area	\N	\N	\N	\N	42.144012	-70.804224	Urban	MA	Plymouth	Norwell	\N	\N	\N	\N	\N	\N	20	\N	\N	Coordinates
Woodworth Park	\N	\N	\N	\N	42.156902	-70.845315	Urban	MA	Plymouth	Norwell	\N	\N	\N	1	\N	\N	13	\N	\N	Coordinates
Birch St Park	\N	Birch St	Redwood Cir	02359	\N	\N	Urban	MA	Plymouth	Pembroke	1	\N	\N	1
Mattakeesett Street Ball Fields	455 Mattakeesett St	\N	\N	02359	\N	\N	Urban	MA	Plymouth	Pembroke	1	\N	\N	1	1	1
Thomas Redding Memorial Park	\N	\N	\N	\N	42.07594	-70.800517	Urban	MA	Plymouth	Pembroke	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Allerton Street Playground	\N	Allerton	Sever Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1
Avery Memorial Playground	43 Nook Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	1	1
Bates Park	\N	Allerton	Vernon Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Billington Street Park	20 Billington St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Brewster Gardens	\N	Water St	Leyden St	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Briggs Playground	838 State Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	1	1
Brook Road Playground	13 Brook Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	1	1
Burton Park	25 Whiting St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Cleft Rock Park	290 State Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	8.7
Depot Park	9 North Park Ave	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Elmer Raymond Park	1138 Long Pond Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	1	1	1	1
Emerson Field	48 White Horse Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	1
Forges Field Recreation Area	83 Jordan Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	1	\N	1
Fresh Pond Park	220 Bartlett Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Holmes Playground	\N	Summer	Newfield Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	1	1
Huntley Playground	97 Lake Dr	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1
Jenney Pond Park	17 Spring Lane	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Mabbett Park	115 Water St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Manomet Recreation Area	1197 State Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	1
Morton Park	\N	Morton Park Rd	Summer St	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Nelson Memorial Park	\N	Corner of Nelson	Water Sts	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	\N	\N	1
Siever Field	\N	Standish Ave	Liberty St	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	1	1
Sirrico Memorial Playground	71 South St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	\N	1
Stephens Field	132R Sandwich St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	1	1	1	\N	7
Training Green	65 Sandwich St	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth
Uncle Thomas Jackson Park	\N	Newfield St	Summer St	\N	\N	\N	Urban	MA	Plymouth	Plymouth	\N	\N	\N	\N	\N	\N	1
Veteran�s Memorial Field	219 Standish Ave	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	1	\N	1	1	2
West Plymouth Recreation Area	154 South Meadow Rd	\N	\N	\N	\N	\N	Urban	MA	Plymouth	Plymouth	1	\N	\N	1	\N	1
Dennett Elementary School	80 Crescent St	\N	\N	02367	\N	\N	Urban	MA	Plymouth	Plympton	1	\N	\N	1	1	1	30
Harry Jason Junior Memorial Park	\N	\N	\N	\N	41.967149	-70.8465	Urban	MA	Plymouth	Plympton	\N	\N	\N	\N	\N	\N	53.2	\N	\N	Future Park / Coordinates
Holt Memorial Field	\N	Palmer St	Main St	02367	\N	\N	Urban	MA	Plymouth	Plympton	\N	\N	\N	1	\N	1	8
Parsonage Road Playground	\N	\N	\N	\N	41.951462	-70.815	Urban	MA	Plymouth	Plympton	1	\N	\N	\N	1	\N	1.3	\N	\N	Coordinates
Winnetuxet Swimming Area	\N	Route 58	Winnetuxet Rd	02367	\N	\N	Urban	MA	Plymouth	Plympton	\N	\N	\N	\N	\N	\N	11.5
Hartsuff Park	\N	\N	\N	\N	42.140265	-70.903895	Urban	MA	Plymouth	Rockland	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Jefferson School Field	34 James St	\N	\N	02370	\N	\N	Urban	MA	Plymouth	Rockland	1	\N	\N	1	1
Memorial Park School	1 Col Brian Duffy Way	\N	\N	02370	\N	\N	Urban	MA	Plymouth	Rockland	1	\N	\N	1	1	1
Spring Street	\N	Spring St	Magnolia Dr	02370	\N	\N	Urban	MA	Plymouth	Rockland
Central Field and Town Common	\N	Central Park Dr	Branch St	02066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	1	\N	1	16.67
Driftway Park	\N	\N	\N	\N	42.175685	-70.7	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	18	\N	\N	Coordinates
Ellis Estate	\N	\N	\N	\N	42.212682	-70.8	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	120	\N	\N	Coordinates
Greenbush Ballfield	\N	\N	\N	\N	42.17877	-70.8	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Hatherly Playground	\N	\N	\N	\N	42.214804	-70.8	Urban	MA	Plymouth	Scituate	1	\N	\N	1	\N	\N	2.41	\N	\N	Coordinates
Jericho Boat Launch	\N	Jericho Rd	Barker Rd	02066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	2.59
Scituate High School Fields and PJ Steverman Park	606 Chief Justice Cushing Hwy	\N	\N	02066	\N	\N	Urban	MA	Plymouth	Scituate	1	\N	1	\N	1	1	6
Scituate Lighthouse	100 Lighthouse Rd	\N	\N	02066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	2.73
Teak Sherman Park	\N	Chief Justice Cushing Hwy	1st Parish Rd	02066	\N	\N	Urban	MA	Plymouth	Scituate	\N	\N	\N	\N	\N	\N	7.24
Friendship Park	\N	\N	\N	\N	42.020422	-71.012106	Urban	MA	Plymouth	West Bridgewater	1	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Howard Elementary School	70 Howard St	\N	\N	02379	\N	\N	Urban	MA	Plymouth	West Bridgewater	\N	\N	\N	\N	1	1
Rose L. MacDonald Elementary School	1 Stepping Stone Dr	\N	\N	02379	\N	\N	Urban	MA	Plymouth	West Bridgewater	1
Spring Street School	2 Spring St	\N	\N	02379	\N	\N	Urban	MA	Plymouth	West Bridgewater	1
Town Hall Area Ballfield	\N	N Main St	Howard St	02379	\N	\N	Urban	MA	Plymouth	West Bridgewater	\N	\N	\N	1
War Memorial Park	\N	River St	Arch St	02379	\N	\N	Urban	MA	Plymouth	West Bridgewater
West Bridgewater Middle-Senior High School	155 West Center St	\N	\N	02379	\N	\N	Urban	MA	Plymouth	West Bridgewater	\N	\N	1	1	1	1
Camp Alice Carleton	\N	\N	\N	02382	\N	\N	Urban	MA	Plymouth	Whitman	\N	\N	\N	\N	\N	\N	17	\N	\N	Couldn�t Find
Hardings Pond	\N	Pine St	Beal Ave	02382	\N	\N	Urban	MA	Plymouth	Whitman
Hobarts Meadows Area	\N	\N	\N	\N	42.093669	-70.932283	Urban	MA	Plymouth	Whitman	\N	\N	\N	\N	\N	\N	106	\N	\N	Coordinates
Memorial Field	60 Essex St	\N	\N	02382	\N	\N	Urban	MA	Plymouth	Whitman	\N	\N	\N	1	1	1
Whitman Town Park	\N	Hayden Ave	Park Ave	02382	\N	\N	Urban	MA	Plymouth	Whitman	1	1	\N	1	1	\N	11
Adams Park	\N	Washington St	Cummins Hwy	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.750414
Adams/King Playground	470 Adams St	\N	\N	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	1	0.674938
Agassiz Road	\N	Agassiz Rd	Fenway	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.6
Algonquin Square	\N	Bradlee St	Washington St	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04
Allen Park	\N	Adams St	Church St	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.345595
Almont Park/Hunt Playground	\N	Almont St	Orlando St	02126	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	1	17.2
Alvah Kittredge Park	\N	Linwood St	Highland St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.115951
Amatucci Playground	\N	Hyde Park Ave	Glenwood Ave	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.448679
American Legion Highway	\N	American Legion Hwy	Walk Hill St	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.778726
American Legion Playground	\N	Glendon St	Condor St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	3.383881
Angell Memorial Square	\N	Congress St	Pearl St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.176631
Aquarium Harborwalk II	E India Row	\N	\N	02110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.5
Arborway	\N	Centre St	Arborway	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	13.6
Arborway Overpass Path	\N	Arborway	Forest Hills St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.163758
Arcola Park Garden	\N	Day St	Arcola St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.072327
Armenian Heritage Park	\N	Atlantic Ave	Cross St	02110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.25
Arnold Arboretum I	125 Arborway	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	158.4686
Arnold Arboretum II	\N	Bussey St	South St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	65.69
Ashburton Place Plaza	1 Ashburton Pl	\N	\N	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.82
Atlantic Avenue Plantings	\N	Atlantic Ave	Kneeland St	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.58
Ausonia Plaza	\N	Richmond St	Commercial St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.19624
Austin & Main Plaza	\N	Main St	Austin St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.12
Avenue Louis Pasteur	\N	Avenue Louis Pasteur	Blackfan St	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.49
Back Bay Fens with Evans Way Park And Forsyth Park	\N	Park Dr	Fenway	02115	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	70.1
Barry Playground	41 Medford St	\N	\N	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	3.32
Bay Village Neighborhood Park	\N	Warrenton St	Charles St S	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.079655
Beauford Play Area	127 Howard Ave	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.239959
Beecher Park	105 Paul Gore St	\N	\N	02130	\N	\N	Dog	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.174243	1
Beethoven School Play Area	5125 Washington St	\N	\N	02132	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.52
Belvidere/Dalton Plaza	\N	Belvidere St	Dalton St	02199	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.147171
Beverly Street Park	\N	Beverly St	Causeway St	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.54
Billings Field	369 LaGrange St	\N	\N	02132	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	10.77507
Blackstone Square	380 Shawmut Ave	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.444436
Blue Hill Avenue	\N	Blue Hill Ave	Vesta Rd	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.527288
Bonito Square	\N	Waldemar Ave	Walley St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.057547
Boston Common	\N	Tremont St	West St	02108	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	\N	1	46.52265
Boston Design Center Plaza	\N	6th St	Drydock Ave	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.614671
Bowdoin Mall	\N	New Chardon St	Bulfinch Pl	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.5
Boyden Park	\N	Commonwealth Ave	St Thomas More Rd	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.481791
Boylston Street	\N	Boylston St	Charlesgate	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.02
BPL Courtyard	230 Dartmouth St	\N	\N	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.19
Braddock Park	\N	Braddock Park	Public Alley 539	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09218
Bradford Street Play Area	18 Bradford St	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04
Bremen Street Park	\N	Bremen St	Brooks St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	17.8
Brewer-Burroughs Playground	4 Brewer St	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.185653
Brighton Common / Brighton Square	30 Chestnut Hill Ave	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.510232
Brighton HS Hillside	35 Warren St	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.43
Brighton Police Station Campus	301 Washington St	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.45
Broad Street Park	\N	Broad St	Central St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.071994
Bromley Heath Play Area	Horan Way	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.821203
Brooke Courthouse Plaza	24 New Chardon St	\N	\N	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24
Brophy Park	\N	Webster St	Seaver St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.773831
Buckley Playground	204 W 3rd St	\N	\N	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.655619
Bunker Hill CC Athletic Fields	250 New Rutherford Ave	\N	\N	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1	1	21.06154
Byrne Playground	\N	Elm St	Everett St	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	\N	1	1.263026
Caldwell Street Play Area	21 Caldwell St	\N	\N	02129	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.112858
Camp Meigs	\N	Hyde Park Ave	Stanboro St	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	2.865839
CANA Portal	\N	Park St	Warren St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.15
Cardinal Cushing Park I	1 Bowdoin St	\N	\N	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.42
Carroll Pond Playground	15 Carrolton Rd	\N	\N	02132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.471694
Carter Playground	\N	Columbus Ave	Camden St	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	4.91455
Carter School Grounds	\N	Camden St	Watson St	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.49
Cassidy Playground	381 Chestnut Hill Ave	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	\N	9.334186
Castle Island / Strandway / Fort Independence	2080 William J Day Blvd	\N	\N	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	47.69947
Castle Square Parks	\N	E Berkeley St	Village Ct	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	1.19
Cedar Square Park	20 Cedar St	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.623139
Centervale Park	\N	Bourneside St	Centervale Park	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.195955
Central Square Park	\N	Saratoga St	Border St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.905015
Centre Street	\N	Centre St	Allandale St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0
Ceylon Park	\N	Magnolia St	Lawrence Ave	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	1	4.66
Chandler Pond / Gallagher Memorial Park	44 Lake Shore Rd	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	18.90803
Chandler/Tremont Plaza	\N	Tremont St	Arlington St	02116	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.23
Charlesgate I	\N	Commonwealth Ave	Charlesgate W	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.52
Charlesgate II	\N	Charlesgate E	Ipswich St	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.49
Charlestown HS Athletic Fields	\N	Medford St	Polk St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	10.42
Charlestown Naval Shipyard Park	\N	1st Ave	Terry Ring	02129	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	10.21947
Charlestown Parcel 6	\N	Harvard St	City Square	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.12
Charlestown Veteran's Memorial Park	\N	Main St	City Square	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04
Charter Street Park	\N	Charter St	Greenough Ln	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.23534
Chester Park	555 Massachussetts Ave	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.89013
Chestnut Street	\N	Perkins St	Chestnut St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.039018
Childe Hassam Park	\N	Chandler St	Columbus Ave	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.060163
Children's Park	85 Intervale St	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.19
Children's Wharf Park	64 Sleeper St	\N	\N	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.94
China Gate Plaza	\N	Beach St	Hudson St	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14
Chinatown Park I	\N	Surface Rd	Essex St	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.61
Christopher Columbus Park / Waterfront Park	110 Atlantic Ave	\N	\N	02110	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	4.744384
Christopher Lee Playground	\N	M St	E 1st St	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	5.437989
City Hall Plaza	\N	Cambridge St	Court St	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.931465
City Square	\N	Chelsea St	Rutherford Ave	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.21
Clarendon Street Totlot	\N	Clarendon St	Commonwealth Ave	02116	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.332354
Clifford Playground	\N	Norfolk Ave	Proctor St	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	7.656423
Codman Square	\N	Talbot Ave	Centre St	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.339182
Colella Playground	\N	Neponset Valley Pkwy	Readville St	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	\N	\N	0.688147
Columbia Road	\N	Columbia Rd	Boston St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.58
Columbia Road Mall	\N	Columbia Rd	Washington St	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.126101
Columbia Road Park	48 Buttonwood St	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.12
Columbia Road Totlot	370 Columbia Rd	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.22
Columbia Road/Day Boulevard	\N	Columbia Rd	William J Day Blvd	02127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	17.18859
Commonwealth Avenue Mall I	\N	Commonwealth Ave	Faifield St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	10.87
Commonwealth Avenue Mall II	\N	Commonwealth Ave	Kenmore St	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.98
Commonwealth Avenue Outbound	\N	Commonwealth Ave	Fidelis Way	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.527804
Commonwealth Plaza	831 Commonwealth Ave	\N	\N	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.156734
Concord Square	\N	Concord Square	Concord Pl	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.149551
Conley School Play Yard	\N	Poplar St	Cornell St	02131	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	1.42
Connell Fields/Hickey Courts	\N	Cleveland St	Brainard St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	4.148374
Constitution Beach	\N	Coleridge St	Rice St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	25.39673
Cook Street Play Area	\N	Hill St	Cook St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.098123
Copley Place Plaza	\N	Stuart St	Dartmouth St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.289326
Copley Square Park	\N	St James Ave	Dartmouth St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.854288
Coppens Square	\N	Bowdoin St	Adams St	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.35702
Copp's Hill Terrace	536 Commericial St	\N	\N	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.611988
Corey Street Court	\N	Corey St	Samuel Morse Way	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.175521
Crawford Street Playground	\N	Abbotsford St	Walnut Ave	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	\N	1.721944
Cronin Playground / Rev. Loesch Family Park	\N	Wainwright St	Brent St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	2.252596
Cuneo Park	\N	Saratoga St	Byron St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.230672
Cunningham Park	\N	Murdock St	Sparhawk St	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.175855
Cutillo Park	\N	Salem St	Morton St	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.284919
Daniel H. Solari Square / Park	\N	Bremen St	Neptune Rd	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.005
Dartmouth Street Mall	\N	Beacon St	Dartmouth St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.998565
Decatur & Meridian Streets Park	\N	London St	Decatur St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.2
Deer Street Park	\N	Deer St	Roach St	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.244781
DeFilippo Playground	135 Prince St	\N	\N	02113	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	1	1.115556
Delano Park	\N	Delano Park	Poplar St	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.206372
Dennis Street Park	138 Moreland St	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.416088
Denton Square	\N	Magnolia St	Wayland St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07844
Dever School Schoolyard	325 Mt Vernon St	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	1.13
Dewey Square Parks	\N	Pruchase St	Pearl St	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.64
Dewey Square Plaza	\N	Atlantic Ave	Summer St	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.58
Dickerman School Yard	206 Magnolia St	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.55
Doherty Playground	\N	Bunker Hill St	St Martin St	02129	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	3.021756
Doherty/Gibson Playground	\N	Park St	Bourneside St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	5.726273
Dooley Playground	\N	Reservation Rd	Brainard St	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.444957
Dorchester Park	1003 Adams St	\N	\N	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	\N	\N	27.29735
Doucette Square	\N	Redfield St	Water St	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.135148
Downer Avenue Playground	43 Downer Ave	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.808898
Doyle Playground	\N	River St	Rosa St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.944866
Draper Playground	68 Stimpson St	\N	\N	02132	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	5.791218
Dry Dock Plaza	\N	Tide St	Northern Ave	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24
Dudley Town Common	\N	Dudley St	Hampden St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.620041
Duffie Square	\N	Clement Ave	Stratford St	02132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.060401
East Boston Greenway	\N	Bremen St	Marginal St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.610964
East Boston Memorial Park	\N	Porter St	Orleans St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	\N	1	19.86
East Boston Piers Park	\N	Marginal St	Cottage St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	6.79
Eastport Park	\N	Seaport Blvd	D St	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.15
Edgerly Road Playground	6 Edgerly Rd	\N	\N	02115	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.108116
Edna V. Bynoe Park / Orchard Park	\N	Dubois St	Adams St	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	2.67
Edward Everett Square	\N	Columbia Rd	E Cottage St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09
Edwards Playground / McCarthy-Eden Playground	10 Eden St	\N	\N	02129	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	1.34
Egleston Square	\N	Washington St	Atherton St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.01
ELC Playlot	89 Savin St	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.45
Elliot Norton Park I	277 Tremont St	\N	\N	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.93
Ellis School Play Yard	\N	Crawford St	Waumbeck St	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.96
Elm Hill Park	\N	Warren St	Elm Hill Park	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.117909
Elmhurst Street Park	27 Elmhurst St	\N	\N	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.23484
Endicott Triangle	\N	Stillman St	Cross St	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.35
English H.S. Athletic Fields	144 McBride St	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1	1	7.633206
Erie/Ellington Playground	\N	Ellington St	Erie St	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.374384
Erie/Wolcott Streets Park	\N	Erie St	Wolcott St	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.25
Ernst Chery Jr. Playground	72 Orlando St	\N	\N	02126	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.25
Essex Square	\N	Essex St	Lyndeboro St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03
Fallon Field	\N	South St	Walworth St	02131	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	7.511451
Faneuil Square	\N	North St	Congress St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.82
Federal Reserve Bank Harborwalk	\N	Summer St	Dorchester Ave	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.08
Fenelon Playground	\N	Fenelon St	Merrill St	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.19
Fern Square	\N	Franklin St	Fern St	02134	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.040543
Festa Field	\N	Horace St	Neptune Cir	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	\N	0.994451
Flaherty Park	\N	W 3rd St	B St	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.252222
Flaherty Playground	\N	Bolton St	B St	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	1.310782
Forbes Street Playground	68 Forbes St	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.09
Forest Hills Greenspace	\N	Ukraine Way	Hyde Park Ave	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.47
Forest Hills Rotary	\N	Morton St	Forest Hills St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.690822
Forest Hills Station Mall Park	3699 Washington St	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.33
Franklin Field BHA Green	\N	Westview Way	Ames St	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.7
Franklin Field BHA Playground	\N	Stratton St	Lucerne St	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.39
Franklin Hill BHA Court	\N	Fermony Heights Ave	Shandon Rd	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.309761
Franklin Hill Green	\N	Franklin Hill Ave	Shandon Rd	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.502232
Franklin Park	143 Seaver St	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	392.58
Franklin Square	\N	St George St	E Newton St	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.482805
Frederick S Wilson Square	\N	Dunboy St	Perthshire Rd	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.058175
Fredericks Middle School Playground	270 Columbia Rd	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	5.13
Gallivan/Hallet Circle	\N	Gallivan Blvd	Hallet St	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.47799
Galvin Green	\N	New Rutherford Ave	Miller's River Littoral Way	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.13
Garvey Playground	\N	Neposet Ave	Blackwell St	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	5.27312
Gateway Park	\N	Hudson St	Beach St	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07
Gertrude Howes Playground	\N	Moreland St	Fairland St	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	1.89
Gibbons Playground	\N	Sewall St	Delle Ave	02120	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.11
Golden Stairs Terrace Park	Ruth St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24
Grove Hall Plaza	463 Blue Hill Ave	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09251
Gustav Emmel Square	\N	Robert St	S Fairview St	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.02
Hanlon Square	\N	Francis St	Huntington Ave	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04
Hannon Playground	\N	Dudley St	Howard St	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	1.972575
Harambee Park	120 Westview St	\N	\N	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	45.5578
Hardiman Playground	\N	Adair Rd	Faneuil St	02135	\N	\N	Dog	MA	Suffolk	Boston	1	\N	\N	1	1	\N	1.473029	1
Harriet Tubman Square	\N	Warren Ave	Columbus Square	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14
Harry Ellis Dickson Park	\N	Edgerly Rd	Westland Ave	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.083517
Hawkins-New Sudbury Mall	42 New Sudbury St	\N	\N	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.17
Hayes Park	\N	W Canton St	Warren Ave	02116	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.28368
Hayes Square	\N	Bunker Hill St	Vine St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.174705
Healy Playground	\N	Florence St	Firth Rd	02131	\N	\N	Urban	MA	Suffolk	Boston	1	1	\N	1	1	\N	9.539126
Heath Square	\N	Wensley St	Heath St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.072519
Hemenway Playground	\N	Adams St	Lonsdale St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	4.39521
Hennigan Schoolyard	200 Heath St	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	1.86
Herbert J Wolf Square	\N	Harold St	Abbotsford St	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.02
Higginson Schoolyard	\N	Walnut Ave	Harrishof St	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.346191
Highland Park	\N	Beech Glen St	Fort Ave	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.632533
Hiscock Park	\N	W Newton St	Columbus Ave	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.10573
Hobart Park	\N	Ranelegh Rd	Hobart St	02135	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.808847
Holborn Street Playlot	\N	Holborn St	Glenburne St	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.1
Hooker-Sorrento Street Playground	120 Hooker St	\N	\N	02134	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	1.005378
Horace C Woodworth Square	\N	Beacon St	Vose Ave	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03
Horatio Harris Park	\N	Walnut Ave	Townsend St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.521897
Huntington-Hemenway Mall	\N	Hemenway St	Forsythe Way	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.33
Hynes Playground	480 Veterans of Foreign Wars Pkwy	\N	\N	02467	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	6.363894
Iacono/Readville Playground	\N	Readville St	Fleet St	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	4.914023
Jackson Square	\N	Chestnut Hill Ave	Winship St	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.120313
Jamaica Pond Park	507 Jamaica Way	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	97.74
Jamaicaway	\N	Jamaicaway	Perkins St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	4.721091
Jeep Jones Park	\N	Malcolm X Blvd	King St	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	1.82
Jefferson Playground	\N	Grotto Glen Rd	Day St	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	3.295883
Jeremiah Hurley Memorial Park / Wolcott Square	\N	Hyde Park Ave	Wolcott Square	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07
Joe Moakley Park / Columbus Park	\N	Columbia Rd	Babe Ruth Park Dr	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	58.77243
John Eliot Square	\N	Dudley St	Highland St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.074409
John Harvard Mall	\N	Main St	City Square	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.829771
Johnson Park	\N	Green St	Lamartine St	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	2.600858
Joslin Park	\N	Pilgrim Rd	Joslin Pl	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.304009
Joyce Playground	80 Union St	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	1.312551
Justice Gourdin Park / Peace Park	\N	Washington St	Dudley St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.54
Kennedy Playground / Charles Playground	\N	Edgewater Dr	Tesla St	02126	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.260029
Kevin Fitzgerald Park / Puddingstone Park	\N	St Alphonsus St	Alleghany St	02120	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.58
King School Park	122 Intervale St	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1	\N	0.82
King Street Play Area	\N	King St	Roxbury St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.130467
Kittredge-Linwood Parcel	2 Alvah Kittredge Sq	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.16388
Lambert Avenue Playground	\N	Lambert Ave	Millmont St	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.66
Langone Park	529 Commercial St	\N	\N	02109	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	\N	1	2.344908
Laurel Street Green	\N	Laurel St	Humboldt Ave	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.136562
Laviscount Park	\N	Humboldt Ave	Townsend St	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.64
Leather District Park	\N	Essex St	South St	02110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.42
Leo M. Birmingham Parkway	111 Leo M Birmingham Pkwy	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	6.981152
Lewis Mall	\N	Lewis St	Marginal St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.271205
Lewis Mall Harborpark	Lewis St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.25
Liberty Square	\N	Water St	Kilby St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.02935
Lincoln Square	\N	Columbus Ave	Eliot St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.054864
Lincoln Square	\N	M St	E 4th St	02127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.202875
Lincoln Street Green	\N	Surface Rd	Lincoln St	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.18
Linwood Park	\N	Centre St	Linwood St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.073839
Little Mystic Access Area	251 Terminal St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.07
Little Scobie Playground	\N	Copeland St	Burton Ave	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.794356
Lombardi Memorial Park	\N	London St	Maverick St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.53
London Street Park	89 London St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14
Long Wharf Harborwalk and Plaza	\N	State St	Old Atlantic Ave	02110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.77
LoPresti Park	\N	Summer St	New St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	1	3.369128
Lt Robert M Foley Square	\N	Greenwood Ave	Metropolitan Ave	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14
Lucy Stone Schoolyard	\N	Washington St	Park St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.783457
Madison Park H.S. Athletic Fields	\N	Ruggles St	Cabot St	02120	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1	1	9.605648
Mahoney Square / Hyde Square	\N	Day St	Centre St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.060215
Malcolm X Park / Washington Park	\N	Martin Luther King Blvd	Walnut Ave	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	14.05
Maple-Sonoma Streets Community Park	84 Maple St	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.26
Marcella Playground	260 Highland St	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	5.089804
Marine Industrial Park	\N	Summer St	Drydock Ave	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.25
Marine Park	\N	Broadway	Farragut Rd	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	\N	1	17.19998
Marketplace Plaza I	S Market St	\N	\N	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.29
Martin Luther King Boulevard	\N	Martin Luther King Blvd	Humboldt Ave	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.442225
Martin/Hilltop Playground	101 Myrtlebank Ave	\N	\N	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	1.31194
Martini Playground	971 Truman Pkwy	\N	\N	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1	\N	5.779952
Mason Schoolyard	150 Norfolk Ave	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.380477
Mass Art Campus	\N	Longwood Ave	Huntington Ave	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.313068
Mass Art Park	\N	Huntington Ave	Evans Way	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.152338
Massachusetts Avenue Malls	\N	Massachusetts Ave	Shawmut Ave	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.434929
Massport Harborwalk	Tomahawk Dr	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.529859
Mattahunt Schoolyard	100 Hebron St	\N	\N	02126	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0
McConnell Park	\N	Denny St	Playstead Rd	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	\N	\N	6.201276
McCormack School Yard	325 Mt Vernon St	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0
McGann Park	\N	West St	Myopia Rd	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.88
McKinney Playground	74 Faneuil St	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	5.891381
McLaughlin Playground	239 Parker Hill Ave	\N	\N	02120	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	11.72748
McLean Playground	\N	Saratoga St	Moore St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.429665
McMorrow Playground	\N	Victory Rd 	Houghston St	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	5.231867
Meany Park	\N	E Cottage St	Pleasant St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.223412
Medal of Honor Park	\N	E Broadway	M St	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	6.182693
Melnea Cass Boulevard / Melena Cass Bike Path	\N	Melena Cass Blvd	Shawmut Ave	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.043535
Mendoza Square	\N	Frankfort St	Swift St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.032375
Michael Scalia Square	\N	Beach St	Park St	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.01
Millennium Park	300 Gardner St	\N	\N	02132	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	1	91.65
Mission Hill Playground	60 Smith St	\N	\N	02120	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	\N	\N	2.686818
Morton Street	\N	Morton St	Forest Hills Ave	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.760903
Mother's Rest at Four Corners	\N	Clayborne St	Tonawanda St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	1.124535
Moynihan Playground	\N	Wakefield Ave	Badger Rd	02136	\N	\N	Urban	MA	Suffolk	Boston	1	1	1	1	1	\N	7.185713
Mozart Street Playground	\N	Mozart St	Centre St	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.80627
Msgr. Francis A. Ryan Park	\N	River St	Southmere Rd	02126	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	6.141296
Msgr. Reynolds Playground	\N	Washington St	Monsignor Reynolds Way	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.306097
Mt. Bowdoin Green	\N	Bowdoin Ave	Mallon Rd	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.538179
Mt. Pleasant Play Area	30 Mt Pleasant Ave	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.313331
Mt. Vernon Street Plaza	\N	Mt Vernon St	Lowney Way	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.146591
Mullen Square	\N	Edison Green	Pond St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.226751
Murphy Playground	20 Child St	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	\N	\N	2.597675
Myrtle Street Playground	\N	Myrtle St	S Russel St	02114	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.147666
Nashua Street Park	195 Nashua St	\N	\N	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.033537
Nellie Miranda Memorial Park	41 Belden St	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.09
Neponset Valley Parkway	\N	Neponset Valley Pkwy	Readville St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	5.495916
New Center for Arts and Culture	\N	Atlantic Ave	High St	02110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.95
New Chardon Square	\N	New Chardon	Cambridge St	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.91
New Chardon Street Median	\N	New Chardon St	Canal St	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.1
Newland Street Park	\N	Newland St	Newland Pl	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.138331
Nonquit Green	\N	Nonquit St	Dudley St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.357462
North End Park	\N	Hanover ST	Cross St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.83
North Point Park	\N	Education St	NorthPoint Blvd	02141	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.771746
North Square	\N	Prince St	N Square	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.06605
North Street Park	\N	Cross St	North St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.24
Norton Street Playground	\N	Norton St	Inwood St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.065907
Noyes Playground	\N	Boardman St	Ashley St	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	8.223748
Nuestra Playground	405 Dudley St	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.233418
Oak Square	427 Faneuil St	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.271456
Oakview Terrace	34 Oakview Ter	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.100075
O'Day Playground	75 W Newton St	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.717655
O'Donnell Square	\N	Nesponset Ave	Freeport St	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.07
Ohrenberger Recreation Complex	175 West Boundary Rd	\N	\N	02132	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	3.797976
Old City Hall Grounds	\N	School St	Province St	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.226759
Old Harbor Park & Easement	\N	Harbor Point Blvd	Ocean View Dr	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	3.43
Olmsted Green	\N	Harvard St	Norton St	02126	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	57.66
Olmsted Park	217 Jamaicaway	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	42.95563
O'Neill Tunnel Portal Park	\N	Causeway St	Beverly St	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.33
O'Reilly Way Court	\N	O'Reilly Way	Monument St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.53
Orton Field / Condon Playground	\N	Flaherty Way	St Casimir St	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	1.488124
Oscar Tugo Circle	\N	Longwood Ave	Avenue Louis Pasteur	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.057553
Overlook Park / Fidelis Way Park	Jette Ct	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	5.10486
Pagel Playground	365 Hyde Park Ave	\N	\N	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	2.725042
Pagoda Park	\N	Kneeland St	Lincoln St	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1	\N	0.34
Paris Street Playground	121 Paris St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.794498
Park Drive	\N	Park Dr	Brookline Ave	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.48
Parker B Jones Square	\N	Highland St	Milton St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.04
Parkman Memorial	\N	Perkins St	Prince St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.709691
Parkman Playground	58 Wachusett St	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	2.068094
Paul Gore Street Playground	\N	Paul Gore St	St Peter St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.332907
Paul Revere Mall	\N	Hanover St	Harris St	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.785207
Paul Revere Park	Water St	\N	\N	02129	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	6.40013
Peabody Square	\N	Ashmont St	Dorchester Ave	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.046621
Pemberton Square w/ Access	\N	Somerset St	Pemberton Sq	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.38
Penniman Road Play Area	25 Penniman Rd	\N	\N	02134	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.760017
Perkins Street	\N	Perkins St	Chestnut St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.227002
Peters Park	230 Shawmut Ave	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	3.82
Phillips Street Park	\N	Phillips St	Garden St	02114	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.115266
Piemonte Park	\N	Lasell St	Addington Rd	02132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.089567
Pier 10 Park	\N	Drydock Ave	Black Falcon Ave	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.56
Pine Street Park	\N	Marginal Rd	Washington St	02111	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.271661
Podium Plaza	1 Seaport Lane	\N	\N	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.46
Polcari Park	45 Prince St	\N	\N	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	1	\N	0.288573
Pope John Paul II Park	174 Hallet St	\N	\N	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	1	164.99
Poplar Street Play Area	\N	Poplar St	Heathcote St	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.442114
Portsmouth Street Playground	35 Portsmouth St	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	4.282346
Porzio Park	14 Jeffries St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	1	2.37
Prescott Square	\N	Trenton St	Prescott St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.2778
Prince Street Park	\N	Causeway St	Prince St	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	\N	\N	1.28
Public Garden	\N	Boylston St	Arlington St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	23.51
Public Grounds	\N	Cambridge St	Henshaw St	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.06
Puddingstone Park	\N	Seaver St	Normandy St	02121	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.55
Puopolo Playground	521 Commercial St	\N	\N	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	1	\N	2.09019
Putnam Square	\N	Trenton St	Putnam St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.26354
Quincy Market Square	\N	North St	Clinton St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.56
Quincy Stanley Playground	\N	Quincy St	Stanley St	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.372409
Quincy Street Play Area	65 Quincy St	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.53142
Rachel Revere Square	210 North St	\N	\N	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.078592
Ramler Park	124 Peterborough St	\N	\N	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.51
Ramsay Park	1917 Washington St	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	5.493408
Reilly Playground	355 Chestnut Hill Ave	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	1	\N	\N	\N	\N	6.966953
Reservation Road Park	151 Reservation Rd	\N	\N	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	6.19563
Revere Plaza	\N	Beverly St	Lovejoy Pl	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.391463
RFK Greenway	\N	Suface Rd	Summer St	02110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.53
Richardson Park	\N	Columbia Rd	Pond St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.120874
Richmond & North Streets Park	201 North St	\N	\N	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.37
Ringer Playground	\N	Allston St 	Price Rd	02134	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	10.25585
Ringgold Park	\N	Ringgold St	Waltham St	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.380436
Ripley Playground	35 Ripley Rd	\N	\N	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	\N	0.826727
Robert E Ryan Playground	9 Harborview St	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.63
Roberts Playground	56 Dunbar St	\N	\N	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	10.18916
Rogers Park	\N	Foster St	Rogers Park Ave	02135	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	8.17117
Rolling Bridge Park	\N	Dorchester Ave	Foundry St	02127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.05
Ronan Park	\N	Mt Ida Rd	Homes Ave	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	11.27463
Ross Playground	130 Westminster St	\N	\N	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	13.04039
Rossmore/Stedman Park	\N	Rossmore St	Stedman St	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.073948
Rotch Playground	60 Randolph St	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	1	2.74585
Rutherford Union Playground	127 Old Rutherford Ave	\N	\N	02129	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	\N	0.25
Rutland Square Park	Rutland Square	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.155807
Ryan Playground	63 Alford St	\N	\N	02129	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	\N	1	8.78
Savin Hill Cove	\N	William T Morrissey Blvd	Freeport St	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.774425
Savin Hill Park	\N	Grampian Way	Evandale Terr	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1	1	8.294682
Scarmella/Maverick Square	\N	Chelsea St	Maverick St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.398704
School Street Park	289 Washington St	\N	\N	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.08
Schroeder Plaza	\N	Tremont St	Ruggles St	02120	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.28
Sharon's Park	\N	Buttonwood St	Mt Vernon St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.31
Shempa Square	\N	Business St	River St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03
Shubow Park	1825 Commonwealth Ave	\N	\N	02135	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.73
Smith Playground	235 Western Ave	\N	\N	02134	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	1	14.79771
Soldier's Monument	\N	Centre St	South St	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.132688
Somerset Street Plaza	62 Somerset St	\N	\N	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.9303
South Boston Maritime Park	\N	Northern Ave	D St	02127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.88
South End Library Park	685 Tremont St	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.168102
South Street Courts	12 Carolina Ave	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	\N	\N	0.338233
South Street Mall	\N	South St	Carolina Ave	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.081388
Southwest Corridor Park	\N	Columbus Ave	Heath St	02130	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	\N	49.24
St Helena's Park	97 Union Park St	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.173014
St James Street Park	37 St James St	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.384893
Stanley-Bellevue Park	23 Bellevue St	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.351773
State House Park / Ashburton Park	\N	Derne St	Bowdoin St	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.238705
Statler Park	\N	Stuart St	Church St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.226751
Sterling Square	50 Sterling Square	\N	\N	02127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.038765
Stonehill Park / Coast Guard Park	\N	Raldne St	Stonehill Rd	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.317541
Stony Brook Recreation Complex (Kelly Plgd/Factory Hill Plgd)	\N	Turtle Pond Pkwy	River St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	1	\N	1	\N	\N	27.39
Suffolk Downs T Station Lawns	1240 Bennington St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.97
Sullivan Square	\N	Alford St	West St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.620525
Sumner & Lamson Street Playground	\N	Lamson St	Lamson Ct	02128	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.483576
Sweeney Playground	180 W 5th St	\N	\N	02127	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	0.479658
Symphony Community Park	\N	Edgerly Rd	Norway St	02115	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.496796
Tai Tung Park	\N	Tyler St	Tai Tung St	02111	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.033239
Tebroc Street Playlot	\N	Treboc St	Bowdoin St	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.02
Temple Street Park	46 Temple St	\N	\N	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.059115
Tenean Beach	\N	Conley St	Tenean St	02122	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	\N	8.701531
Tent City Courtyards	\N	Columbus Ave	Dartmouth St	02116	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.53
The Fenway II	\N	Brookline Ave	Fenway	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0
The Riverway	\N	Park Dr	Riverway	02215	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0
Thetford/Evans Playground	\N	Thetford St	Evans St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	\N	0.68
Thompson Square	\N	Main St	Austin St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14
Titus Sparrow Park	89 W Rutland Square	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	1.751345
Toohig Playground	\N	Gallivan Blvd	Marsh St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	2.124234
Tremlett Square / Town Meeting Park	\N	Tremlett St	Waldeck St	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.16
Trotter School Playground	\N	Humboldt Ave	Waumbeck St	02121	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	1	\N	1.243984
Truman Parkway	\N	Truman Pkwy	Tyler St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	2.714762
Tunnel Harborwalk	\N	Fid Kennedy Ave	Seafood Way	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.18
Umana School Park	312 Border St	\N	\N	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	1	1	2.520441
UMass Boston Athletic Fields	100 William T Morrissey Blvd	\N	\N	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	1	\N	1	18.46778
UMass Boston Campus Ctr Oval	\N	University Dr N	Columbia Pt	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.66
UMass Harborwalk Park	\N	University Dr S	University Dr E	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	13.08531
Union Park	24 Union Park	\N	\N	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.373479
Union Park Street Playground	\N	Albany St	Union Park St	02118	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.56
Union Square Plaza	\N	Cambridge St	Brighton Ave	02134	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.078612
Union Street Park / Holocaust Memorial	\N	Union St	Hanover St	02108	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.54
Valenti Square	\N	Valenti Way	Beverly St	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.09
Ventura Playground / Lowermills VFW Memorial Post Playground	\N	Medway St	Ventura St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	1	1	\N	1.309906
Veterans Memorial Park	\N	Devine Way	Carpenter St	02127	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1	\N	0.201773
Veterans Park	\N	Decatur St	London St	02128	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.57
VFW Parkway	\N	Veterans of Foreign Wars Pkwy	Baker St	02132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	13.16576
Victory Road Park	\N	Victory Rd	Interstate 93	02122	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.154657
Walker Playground	550 Norfolk St	\N	\N	02126	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	1	5.953433
Walnut Park Play Area	345 Walnut Ave	\N	\N	02119	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.317054
Walsh Playground	\N	Clancy Rd	Washington St	02124	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	1	1	\N	6.945645
Waltham Square	\N	Harrison Ave	Waltham St	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.118405
Warren Street	\N	Warren St	Dale St	02119	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	1.085573
Washburn Street Green	\N	Washburn St	Howell St	02125	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.23
Watson Park	\N	Taylor St	Milford St	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.1
Webster Avenue Playground	17 Unity St	\N	\N	02113	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.06
Webster Square	\N	Central Ave	Webster St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.05
Weider Park	\N	Sherrin St	Dale St	02136	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	\N	\N	6.919311
Wellesley Park	\N	Wellesley Park	Melville Ave	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.713386
West End Park	\N	Nashua St	Martha Rd	02114	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.14
West Roxbury HS Athletic Fields	1205 VFW Pkwy	\N	\N	02132	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	1	1	1	13.42
West Roxbury Parkway	\N	W Roxbury Pkwy	Orange St	02131	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	31.76
Wharf District Park	\N	Atlantic Ave	Milk St	02109	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	4.71
White Stadium	450 Walnut Ave	\N	\N	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	1	\N	1	1	12.57331
Whittier Playground	\N	Whittier St	Tremont St	02120	\N	\N	Urban	MA	Suffolk	Boston	1	\N	\N	\N	\N	\N	0.275503
William S. Britton Square	\N	Tonawanda St	Waldeck St	02124	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.03
Williams Square	\N	Williams Ave	Prospect St	02136	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.038057
Williams Tunnel Portal Park	\N	D St	Silver Line Way	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.2
Willow Pond Meadow	\N	Jamaicaway	Willow Pond Rd	02130	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	6.295543
Wilson Park	\N	Commonwealth Ave	Wilson Park	02135	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.097176
Winthrop Playground	\N	Dacia St	Ingleside St	02125	\N	\N	Urban	MA	Suffolk	Boston	1	\N	1	\N	1	\N	1.560895
Winthrop Square	1 Winthrop Square	\N	\N	02110	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.152686
Winthrop Square	\N	Winthrop St	Adams St	02129	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.9
Worcester Square	\N	Worcester Square	Washington St	02118	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.343756
Wormwood Park	\N	A St	Wormwood St	02210	\N	\N	Urban	MA	Suffolk	Boston	\N	\N	\N	\N	\N	\N	0.13
Bellingham Hill Park	\N	Highland St	Cottage St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Bosson Playground	\N	Bellingham St	Shawmut St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Carter Park	299 Everett Ave	\N	\N	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1	\N	\N	1	\N	1
Chelsea Square (Winnisimmet Park)	\N	Broadway	2nd St	02150	\N	\N	Urban	MA	Suffolk	Chelsea
Ciepela Park	\N	Tremont St	Medford St	02150	\N	\N	Urban	MA	Suffolk	Chelsea
Cordero Park	\N	\N	\N	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
Creekside Common	\N	Gilooly St	Cabot St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Eden Street Park	\N	Eden St	Addison St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Highland Park	\N	Willow St	Maverick St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	1	1
Howard Park	\N	\N	\N	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
Island End Park	305 Commandants Way	\N	\N	02150	\N	\N	Urban	MA	Suffolk	Chelsea
Kaboom-Disney Park	\N	Heard St	Spruce St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Kayem Park	\N	5th St	Chestnut St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Mace Park	\N	Crescent Ave	Clinton St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Mace Tot-Lot	59 Crescent Ave	\N	\N	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Malone Park	\N	Summit Ave	Lafayette Ave	02150	\N	\N	Urban	MA	Suffolk	Chelsea
Mary C Burke Complex / Merrit Park	\N	Crescent Ave	Eastern Ave	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1	\N	\N	1
Mary O'Malley Park	\N	\N	\N	\N	42.38913	-71.051655	Urban	MA	Suffolk	Chelsea	1	\N	1	\N	\N	\N	\N	\N	\N	Coordinates
Mill Creek Riverwalk	\N	\N	\N	02150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	\N	\N	\N	\N	\N	Couldn�t Find
O'Neil Park	\N	Beacon St	Beacon Pl	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Paul A Dever Park	\N	Stockton St	Gillooly Rd	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1	\N	\N	\N	1
Polonia Park	\N	Tremont St	Eldridge Pl	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Prattville-Fitzpatrick Development Park	\N	Burma Rd	Exeter St	02150	\N	\N	Urban	MA	Suffolk	Chelsea
Quigley Park	\N	Essex St	Hawthorne St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Recipi-Brenes Tot-Lot	\N	Watts St	Willow St	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1
Scrivano Park	\N	Locke St	Parkway Ct	02150	\N	\N	Urban	MA	Suffolk	Chelsea	\N	\N	\N	\N	1
Voke Park	540 Washington Ave	\N	\N	02150	\N	\N	Urban	MA	Suffolk	Chelsea	1	\N	1	1	1
Washington Park	\N	Washington Ave	Hancock St	02150	\N	\N	Urban	MA	Suffolk	Chelsea
Abraham Lincoln School	68 Tuckerman St	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere	1	\N	\N	\N	1
Ambrose Park	\N	Ambrose St	Pomona St	02151	\N	\N	Urban	MA	Suffolk	Revere
Beachmont School/ Frederick's Park	15 Everard St	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere	1	\N	\N	1	1	1
Ciarlone Tot Lot	107 Newhall St	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere	1	\N	\N	1	1
Costa Park	\N	Shirley Ave	Walnut Ave	02151	\N	\N	Urban	MA	Suffolk	Revere	1
Curtis Park	186 Garfield Ave	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere	1	\N	\N	1	1
DeStoop Park	\N	Dashwood St	Oak Island St	02151	\N	\N	Urban	MA	Suffolk	Revere	1	\N	\N	1	1
Garfield School	186 Garfield Ave	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere
Gibson Park	\N	Hayes Ave	Thayer Ave	02151	\N	\N	Urban	MA	Suffolk	Revere
Hill Park	Park Ave @ Foster Ave	Park Ave	Foster Ave	02151	\N	\N	Urban	MA	Suffolk	Revere	1	\N	\N	1	1	1
Liberty Park	Breedens Lane @ Haywood St	Breedens Lane	Haywood St	02151	\N	\N	Urban	MA	Suffolk	Revere	1
Lighthouse Tot Lot (Paul Revere)	395 Revere St	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere	1
Louis Pasteur Park	Leverett Ave @ Dolphin Ave	Leverett Ave	Dolphin Ave	02151	\N	\N	Urban	Ma	Suffolk	Revere	1	\N	\N	\N	1
Revere Beach	Revere Beach Blvd @ Beach St	Revere Beach Blvd	Beach St	02151	\N	\N	Urban	MA	Suffolk	Revere
Revere High School	101 School St	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere	\N	\N	\N	1	\N	1
Sonny Myers Park	120 Beach St	\N	\N	02151	\N	\N	Urban	MA	Suffolk	Revere	1
Cummings School	40 Hermon St	\N	\N	02152	\N	\N	Urban	MA	Suffolk	Winthrop	1
Fort Banks Elementary School And Cellucci Field	101 Kennedy Dr	\N	\N	02152	\N	\N	Urban	MA	Suffolk	Winthrop	1	\N	\N	1
Ingleside Park	Walden St @ Lincoln St	Walden St	Lincoln St	02152	\N	\N	Urban	MA	Suffolk	Winthrop	1	\N	1	1	1	1
Miller Field	78 Cross St	\N	\N	02152	\N	\N	Urban	MA	Suffolk	Winthrop	\N	\N	\N	\N	\N	1
Parks and Recreation Office	151 Pauline St	\N	\N	02152	\N	\N	Urban	MA	Suffolk	Winthrop
Winthrop High School	372 Main St	\N	\N	02152	\N	\N	Urban	MA	Suffolk	Winthrop	\N	\N	\N	1
Powderhouse Hill	West St @ Linden St	West St	Linden St	01503	\N	\N	Urban	MA	Worcester	Berlin	\N	\N	\N	\N	\N	\N	1
South Commons	34 South St	\N	\N	01503	\N	\N	Urban	MA	Worcester	Berlin	1	\N	1	1	1	1	36.81
Derby Field	100 Mechanic St	\N	\N	01740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1
Forbush Mill Field	200 Forbush Mill Rd	\N	\N	01740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1
Horse Ring Field	100 Main St	\N	\N	01740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1
Memorial Field	20 Wattaquadock Hill Rd	\N	\N	01740	\N	\N	Urban	MA	Worcester	Bolton	1	\N	\N	1	\N	1
Persons Park	149 Hudson Rd	\N	\N	01740	\N	\N	Urban	MA	Worcester	Bolton
Pond Park	Main St @ Mechanic St	Main St	Mechanic St	01740	\N	\N	Urban	MA	Worcester	Bolton
Tower Field	570 Main St	\N	\N	01740	\N	\N	Urban	MA	Worcester	Bolton	\N	\N	\N	\N	\N	1
Town Beach- Little Pond	75 Hudson Rd	\N	\N	01740	\N	\N	Urban	MA	Worcester	Bolton
Ann Lee��	73 Ann Lee Rd	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1
Charlie Waite��	19 Lancaster County Rd	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1
Harvard Park�and McCurdy Track	34 Lancaster County Rd	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard	1	\N	\N	\N	\N	1
Hildreth Elementary��School	27 Mass Ave	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard	1	\N	\N	1	1	1
Middle School���	14 Mass Ave	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	1	1	1	1
Pond Rd field��	13 Pond Rd	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1
Ryan Land	71 Depot Rd	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard
Upper and Lower Depot��	60 Depot Rd	\N	\N	01451	\N	\N	Urban	MA	Worcester	Harvard	\N	\N	\N	\N	\N	1
Adin Ballou Park	\N	\N	\N	\N	42.13110092	-71.54107858	Urban	MA	Worcester	Hopedale	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Adin St Triangle	Adin St @ Mendon Rd	Adin St	Mendon Rd	01747	\N	\N	Urban	MA	Worcester	Hopedale	\N	\N	\N	\N	\N	\N	1.08
Phillips Field aka Mellen Field	\N	\N	\N	\N	42.11506232	-71.50842757	Urban	MA	Worcester	Hopedale	1	\N	\N	1	\N	1	29.21	\N	\N	Coordinates
Town Park	\N	\N	\N	01747	\N	\N	Urban	MA	Worcester	Hopedale	1	\N	1	1	1	\N	6.18	\N	\N	No address
Thayer Field Recreation Campus	39 Harvard Rd	\N	\N	01523	\N	\N	Dog	MA	Worcester	Lancaster	1	\N	1	1	1	1	\N	1
Brian McNally Park	Whalom Rd @ Lesure Ave	Whalom Rd	Lesure Ave	01462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	\N	\N	\N	\N	0.2
Elementary School Annex	30 School St	\N	\N	01462	\N	\N	Urban	MA	Worcester	Lunenburg	1
Lunenburg High School	1079 Massachusetts Ave	\N	\N	01462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	1	1	1	1
Lunenburg Town Beach	Lake Front Ave @ Carousel Ln	Lake Front Ave	Carousel Ln	01462	\N	\N	Urban	MA	Worcester	Lunenburg	1	\N	\N	\N	\N	\N	0.5
Marshall Park	\N	\N	\N	\N	42.598145	-71.729339	Urban	MA	Worcester	Lunenburg	\N	\N	1	1	\N	1	24	\N	\N	Coordinates
New Primary School	1401 Massachusetts Ave	\N	\N	01462	\N	\N	Urban	MA	Worcester	Lunenburg	1	\N	\N	\N	\N	1
T.C. Passios Elementary School	1025 Massachusetts Ave	\N	\N	01462	\N	\N	Urban	MA	Worcester	Lunenburg	1	\N	\N	1	\N	1
Turkey Hill Middle School	129 Northfield Rd	\N	\N	01462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	\N	\N	\N	1
Wallis Park	Whalom Rd @ Wallis Park	Whalom Rd	Wallis Park	01462	\N	\N	Urban	MA	Worcester	Lunenburg	\N	\N	\N	1	\N	\N	2
Founders Park	Main St @ Hastings St	Main St	Hastings St	01756	\N	\N	Urban	MA	Worcester	Mendon
Memorial Park	29 Millville Rd	\N	\N	01756	\N	\N	Urban	MA	Worcester	Mendon	1	\N	1	1	1	1
Brookside & Woodland School Fields�	110 Congress St	\N	\N	01757	\N	\N	Urban	MA	Worcester	Milford	1	\N	\N	1	1	1
Cedar Swamp Pond	\N	\N	\N	\N	42.1467632	-71.5128406	Urban	MA	Worcester	Milford	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Draper Park	Main St @ Congress St	Main St	Congress St	01757	\N	\N	Urban	MA	Worcester	Milford
Fino Field & Fino Field Pool	80 Granite St	\N	\N	01757	\N	\N	Urban	MA	Worcester	Milford	\N	1	\N	1	\N	1
Louisa Lake Park	\N	\N	\N	\N	42.15611104	-71.52032216	Urban	MA	Worcester	Milford	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Milford High School Fields	31 West Fountain St	\N	\N	01757	\N	\N	Urban	MA	Worcester	Milford	\N	\N	1	1	\N	1
Plains Park	82 Cedar St	\N	\N	01757	\N	\N	Urban	MA	Worcester	Milford	1	\N	\N	\N	\N	1
Rosenfeld Park / Plains Park	60 Cedar St	\N	\N	01757	\N	\N	Urban	MA	Worcester	Milford	1	\N	\N	1	\N	\N	20
Town Park	Congress St @ Spruce St	Congress St	Spruce St	01757	\N	\N	Urban	MA	Worcester	Milford	1	\N	1	1	1	1	16
911 Memorial Field	\N	\N	\N	\N	42.326796	-71.529965	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Choate Field at Woodward School	28 Cordaville Rd	\N	\N	01772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	1	1	1
DePietri Field	53 Parkerville Rd	\N	\N	01772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1
Fayville Memorial Park and Harold E. Fay Memorial Field	Central St	\N	\N	01772	\N	\N	Urban	MA	Worcester	Southborough	1	\N	\N	1	1	1
Finn School & Mooney Fields	60 Richards Rd	\N	\N	01772	\N	\N	Urban	MA	Worcester	Southborough	1	\N	\N	1	\N	1
Kallander Field	Kallander Dr	\N	\N	01772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1
Liberty Estates Field	Liberty Rd	\N	\N	01772	\N	\N	Urban	MA	Worcester	Southborough	\N	\N	\N	\N	\N	1
Neary & Trottier Middle School & Lundblad Field	53 Parkerville Rd	\N	\N	01772	\N	\N	Urban	MA	Worcester	Southborough	1	\N	1	1	1	1
Kiwanis Beach Park	\N	\N	\N	\N	42.18267	-71.596506	Urban	MA	Worcester	Upton	\N	\N	1	1	1	1	\N	\N	\N	Coordinates
Lake Wildwood Park	\N	\N	\N	\N	42.17301999	-71.63647503	Urban	MA	Worcester	Upton	\N	\N	\N	\N	\N	\N	4.5	\N	\N	Coordinates
Memorial School	67 Main St	\N	\N	01568	\N	\N	Urban	MA	Worcester	Upton	1	\N	1	1	1
Nipmuc Regional High School Athletic Fields	90 Pleasant St	\N	\N	01568	\N	\N	Urban	MA	Worcester	Upton	\N	\N	\N	1	\N	1
South Street Park	\N	\N	\N	01568	\N	\N	Dog	MA	Worcester	Upton	1	1	1	1	1	1	\N	1	\N	FUTURE PARK (Nov. 2013)
VFW Baseball Complex	15 Milford St	\N	\N	01568	\N	\N	Urban	MA	Worcester	Upton	1	\N	\N	1
West River Soccer Complex	\N	\N	\N	\N	42.148201	-71.615269	Urban	MA	Worcester	Upton	\N	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
Annie Fales Elementary School	Eli Whitney St	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	\N	1	\N	1	14.5
Armstrong Elementary Schooland�Gibbons Jr High School	18 Fisher St	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	1	1	1	1	23.7
Chauncy Fields	\N	\N	\N	\N	42.298171	-71.607776	Urban	MA	Worcester	Westborough	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Haskell St Recreation Facility	50 Haskell St	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	1	1	1	1	30.1
Hastings Elementary School	111 East Main St	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	\N	1	1	1	27.8
Hennessey Field	1 Upton Rd	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	\N	\N	\N	\N	\N	1	5.5
Hyder St Park	Hyder St @ Eric Dr	Hyder St	Eric Dr	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	\N	\N	\N	\N	2.8
Lake Chauncy Beach	Lyman St @ Chauncy St	Lyman St	Chauncy St	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	\N	\N	\N	\N	5.2
Mill Pond School	6 Olde Hickory Path	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	�	\N	\N	\N	\N	\N	32
Minuteman Park/ Sandra Pond	Upton Rd @ Spring Rd	Upton Rd	Spring Rd	01581	\N	\N	Urban	MA	Worcester	Westborough
Roger's Recreation Facility	6 Rogers Rd	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	\N	1	1	1	43
Upton Recreation Field	66 Upton Rd	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	\N	\N	\N	1	\N	1	6.8
Veteran's Freedom Park	169 W Main St	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	\N	\N	1
Westboro High School	West Main St	\N	\N	01581	\N	\N	Urban	MA	Worcester	Westborough	1	\N	1	1	\N	1	18
Davol Field	Oak St @ Oak Ave	Oak St	Oak Ave	02780	\N	\N	Urban	NH	Bristol	Taunton	1	\N	\N	1	1
Hartshorn Park	180 Longmeadow Rd	\N	\N	02780	\N	\N	Urban	NH	Bristol	Taunton	1	\N	\N	1
Hopewell Park	Hopewell St @ Hamilton St	Hopewell St	Hamilton St	02780	\N	\N	Urban	NH	Bristol	Taunton	1	1	\N	1	1	1	\N	\N	\N	Coordinates
Memorial Park	Somerset Ave @ Forest St	Somerset Ave	Forest St	02780	\N	\N	Urban	NH	Bristol	Taunton	1
Sikorski Field	\N	\N	\N	\N	41.88154	-71.037678	Urban	NH	Bristol	Taunton	1	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
South Street	\N	\N	\N	\N	41.86479	-71.115477	Urban	NH	Bristol	Taunton	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Taunton Green	Weir St @ Cohannet St	Weir St	Cohannet St	02780	\N	\N	Urban	NH	Bristol	Taunton
Walker Park	W Water St @ Staples Ave	W Water St	Staples Ave	02780	\N	\N	Urban	NH	Bristol	Taunton
Weir Park	1st St @ Presbrey Ct	1st St	Presbrey Ct	02780	\N	\N	Urban	NH	Bristol	Taunton	1	\N	\N	1	1
Weir Riverfront Park	E Water St @ Agawam St	E Water St	Agawam St	02780	\N	\N	Urban	NH	Bristol	Taunton	1
Westside Park	\N	\N	\N	\N	41.905934	-71.111015	Urban	NH	Bristol	Taunton	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Whittenton Field	Pleadwell St @ Richard St	Pleadwell St	Richard St	02780	\N	\N	Urban	NH	Bristol	Taunton	1	\N	\N	\N	1	1
Greeley Park	\N	\N	\N	\N	42.7724	-71.409647	Urban	NH	Hillsborough	Hudson	1	\N	\N	1	1	\N	\N	\N	\N	Coordinates
Jette Field	20 County Rd	\N	\N	\N	\N	\N	Urban	NH	Hillsborough	Hudson	\N	\N	\N	1
Merrifield Park	Ferry St @ Burnham Rd	Ferry St	Burnham Rd	03051	\N	\N	Urban	NH	Hillsborough	Hudson
Merrifield Park��	Ferry St @ Marshmallow path	Ferry St	Marshmallow path	\N	\N	\N	Urban	NH	Hillsborough	Hudson	1	\N	\N	\N	\N	1
Robinson Pond	\N	\N	\N	\N	42.799652	-71.381103	Urban	NH	Hillsborough	Hudson	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Skate Park	Central St @ Melendy Rd	Central St	Melendy Rd	03051	\N	\N	Urban	NH	Hillsborough	Hudson	\N	\N	\N	\N	\N	1
Sousa Field	\N	\N	\N	\N	42.751967	-71.42506	Urban	NH	Hillsborough	Hudson	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
ARTILLERY LANE	Artillery Ln @ Greeley St	Artillery Ln	Greeley St	03064	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	1
ASH STREET PLAYLOT	\N	\N	\N	\N	42.757705	-71.469913	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
ATHERTON AVE PARK	ATHERTON AVE @ Lock St	ATHERTON AVE	Lock St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	1
BELVEDERE PARK	BRIDGE ST @ Warren St	BRIDGE ST	Warren St	03060	\N	\N	Urban	NH	Hillsborough	Nashua	1
Bicentennial Park	Main St @ Pearson Ave	Main St	Pearson Ave	03060	\N	\N	Urban	NH	Hillsborough	Nashua
BRIGHT SPOT	LEDGE ST @ Everett St	LEDGE ST	Everett St	\N	\N	\N	Urban	NH	Hillsborough	Nashua
CROWN HILL POOL	\N	\N	\N	\N	42.750686	-71.452868	Urban	NH	Hillsborough	Nashua	\N	1	\N	1	\N	\N	\N	\N	\N	Coordinates
DAVID DEANE SKATEBOARD PARK	BRIDGE ST @ Bancroft St	BRIDGE ST	Bancroft St	03060	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	1
DEGASIS PARK	\N	\N	\N	\N	42.736503	-71.470469	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
DESCHENES OVAL	MAIN ST @ Canal St	MAIN ST	Canal St	03064	\N	\N	Urban	NH	Hillsborough	Nashua
ELKS PLAYGROUND	RANCOURT ST @ Caron Ave	RANCOURT ST	Caron Ave	03064	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	1	\N	1
ERION FIELD	ROBINSON RD @ Hulton St	ROBINSON RD	Hulton St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	1
FIELDS GROVE	FIELD ST @ Fernwood St	FIELD ST	Fernwood St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	1	\N	1
FIREMANS MEMORIAL	CONCORD ST @ Orange St	CONCORD ST	Orange St	03064	\N	\N	Urban	NH	Hillsborough	Nashua
FOUR CORNERS	SARGENT AVE @ Artillery Ln	SARGENT AVE	Artillery Ln	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	1
GREELEY PARK	108 CONCORD ST	\N	\N	03064	\N	\N	Urban	NH	Hillsborough	Nashua	1	1	1	1	\N	1
GREENWICH COMMONS	\N	\N	\N	\N	42.728768	-71.441487	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
JEFF MORIN FIELD at ROBY PARK	SPIT BROOK RD @ E Dunstable Rd	SPIT BROOK RD	E Dunstable Rd	03062	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	1	\N	1
KIRKPATRICK PARK	SHADY LN @ New Searles Rd	SHADY LN	New Searles Rd	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	1	\N	1
LABINE PARK and ROTARY POOL	CLEVELAND ST @ Fairview Ave	CLEVELAND ST	Fairview Ave	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	1	1	1	\N	1
LINCOLN PARK	\N	\N	\N	\N	42.758819	-71.501309	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
LYONS FIELD	MARSHALL ST @ Harbor Ave	MARSHALL ST	Harbor Ave	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	1	\N	1
MAIN DUNSTABLE SOCCER FIELDS	MAIN DUNSTABLE RD @ Conant Rd	MAIN DUNSTABLE RD	Conant Rd	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	1
MARK ROWLAND FIELD	\N	\N	\N	\N	42.772919	-71.482093	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	\N	\N	\N	\N	Coordinates
MASSACHUSETTS DR.	\N	\N	\N	\N	42.745288	-71.443976	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	1	\N	\N	\N	\N	Coordinates
MEMORIAL PARK	LEDGE ST @ N 7th St	LEDGE ST	N 7th St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	1	1
MINE FALLS PARK	\N	\N	\N	\N	42.763256	-71.491036	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1	\N	1	\N	\N	\N	Coordinates
NAVAHO PARK	\N	\N	\N	\N	42.761126	-71.506459	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	\N	1	\N	\N	\N	Coordinates
NORTH COMMON	SARGENT AVE @ Artillery Ln	SARGENT AVE	Artillery Ln	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	1	1
PARC DE NOTRE RENAISSANCE FRANCAIS	WATER ST @ Mechanic St	WATER ST	Mechanic St	03060	\N	\N	Urban	NH	Hillsborough	Nashua
PINE STREET PLAYLOT	PINE ST @ Ledge St	PINE ST	Ledge St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	\N	1
PROCTOR PARK	\N	\N	\N	\N	42.732692	-71.456575	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
ROUSSEL / GARDNER FIELDS	HAINES ST @ Tetreau St	HAINES ST	Tetreau St	03060	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	1	\N	1
Salem St Play Lot	Salem St @ Atwood Ct	Salem St	Atwood Ct	03064	\N	\N	Urban	NH	Hillsborough	Nashua	1
SANDY POND	\N	\N	\N	\N	42.749601	-71.471491	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Shattuck St Playground	8 Shattuck St	\N	\N	03064	\N	\N	Urban	NH	Hillsborough	Nashua	1
St Andrews Park	Harris Rd @ Palisade Dr	Harris Rd	Palisade Dr	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	1
SULLIVAN PARK	BOWERS St @ Marshall St	BOWERS St	Marshall St	\N	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	1
SUNSET HEIGHTS	15 Osgood Rd	\N	\N	03060	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	1	\N	1
TEMPLE PLACE	Cottage Ave @ Temple Pl	Cottage Ave	Temple Pl	03060	\N	\N	Urban	NH	Hillsborough	Nashua	1	\N	\N	\N	\N	1
THORTON RD PLAYGROUND	32 THORNTON RD	\N	\N	03063	\N	\N	Urban	NH	Hillsborough	Nashua	1
TOLLES ST STATION	\N	\N	\N	\N	42.766004	-71.46043	Urban	NH	Hillsborough	Nashua	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
YUDICKY FARM / Southwest Park	Groton Rd @ Gregg Rd	Groton Rd	Gregg Rd	03062	\N	\N	Urban	NH	Hillsborough	Nashua	\N	\N	\N	1
Dennis P. Lyons Memorial Park	6 Village Green	\N	\N	03076	\N	\N	Urban	NH	Hillsborough	Pelham	1	\N	\N	1	\N	1
Elmer G. Raymond Memorial Park	35 Keyes Hill Rd	\N	\N	03076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	\N	\N	1	240
George M. Muldoon Park	27 Muldoon Pkwy	\N	\N	03076	\N	\N	Urban	NH	Hillsborough	Pelham	1	\N	\N	1	\N	1
Golden Brook Park / Newcomb Field	52A Windham Rd	\N	\N	03076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	1
Muldoon Park	Mammoth Rd @ Nashua Rd	Mammoth Rd	Nashua Rd	03076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	\N	\N	\N	58
Pelham Veterans' Memorial Park	Mammoth Rd	\N	\N	03076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	\N	\N	\N	\N	50
Veterans Memorial Park	109 Veterans Memorial Pkwy	\N	\N	03076	\N	\N	Urban	NH	Hillsborough	Pelham	\N	\N	1	1	1	1
Woodlock Park	Woodlock Park Ln @ Oak Hill Cir	Woodlock Park Ln	Oak Hill Cir	03811	\N	\N	Urban	NH	Rockingham	Atkinson	1	\N	1	1	\N	1
Brickyard Park	\N	\N	\N	\N	42.97471684	-70.97326519	Urban	NH	Rockingham	Exeter	1	\N	\N	1	\N	1	12.75	\N	\N	Coordinates
Exeter Recreation Park	4 HAMPTON RD	\N	\N	\N	\N	\N	Urban	NH	Rockingham	Exeter	1	1	1	1	1	1
Founders Park	\N	\N	\N	\N	42.98149297	-70.94422611	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	\N	\N	\N	\N	Coordinates
Gilman Park	35 Bell Ave	\N	\N	\N	\N	\N	Urban	NH	Rockingham	Exeter	1	\N	\N	1	1	\N	15
Holland Common	Holland Way @ Route 27	Holland Way	Route 27	\N	\N	\N	Urban	NH	Rockingham	Exeter
Kids Park	Front St @ Winter St	Front St	Winter St	\N	\N	\N	Urban	NH	Rockingham	Exeter	1	\N	\N	\N	1
Littlefield Skate Park�	Lower Court St @ Route 108	Lower Court St	Route 108	\N	\N	\N	Urban	NH	Rockingham	Exeter	\N	\N	\N	\N	\N	1
Orchard Circle	Orchard Circle @ Towle Ave	Orchard Circle	Towle Ave	\N	\N	\N	Urban	NH	Rockingham	Exeter
Park St Common	Park St @ Epping Rd	Park St	Epping Rd	\N	\N	\N	Urban	NH	Rockingham	Exeter
Route 88 Common	Route 88 @ Route 27	Route 88	Route 27	\N	\N	\N	Urban	NH	Rockingham	Exeter
Town House Common	Court St @ Bow St	Court St	Bow St	\N	\N	\N	Urban	NH	Rockingham	Exeter
Water Street Park	Water St @ Summer St	Water St	Summer St	\N	\N	\N	Urban	NH	Rockingham	Exeter
Fremont Memorial Park	Main St @ Jackie Bernier Dr	Main St	Jackie Bernier Dr	03044	\N	\N	Urban	NH	Rockingham	Fremont	1	\N	\N	1	1	1	14
Depot Rd Field Complex	\N	\N	\N	\N	42.906176	-71.198729	Urban	NH	Rockingham	Hampstead	1	\N	\N	1	\N	1	\N	\N	\N	Coordinates
Ordway Park	Main St @ Depot Rd	Main St	Depot Rd	03841	\N	\N	Urban	NH	Rockingham	Hampstead
Greenie Park	24 Heath St	\N	\N	03858	\N	\N	Urban	NH	Rockingham	Newton	1	\N	1	1	1	1
Pollard Park	Main St @ Park Ave	Main St	Park Ave	03865	\N	\N	Urban	NH	Rockingham	Plaistow
Recreation Field	51 Old County Rd	\N	\N	03865	\N	\N	Urban	NH	Rockingham	Plaistow	1	\N	\N	1	1	1	21
Smith field	\N	\N	\N	\N	42.842855	-71.096821	Urban	NH	Rockingham	Plaistow	1	\N	\N	1	1	1	2.16	\N	\N	Coordinates
Field of Dreams�	48 Geremonty Dr	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	1	\N	\N	\N	\N	1
Fisk School�	14 Main St	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	1	\N	\N	1
Hedgehog Park	53 Lowell Rd	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	1	1
Michele Memorial Park�	190 Lawrence Rd	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	1	1	\N	1
Morse Field�	128 Cluff Crossing Rd	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1	\N	1
Palmer Field�	109 East Broadway	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1
Salem High School�	44 Geremonty Dr	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1	\N	1
Soule School�	173 South Policy St	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	1	\N	\N	\N	1
Woodbury Middle School�	206 Main St	\N	\N	03079	\N	\N	Urban	NH	Rockingham	Salem	\N	\N	\N	1
Miller Recreation Area	Main St @ Griffin Hill Cir	Main St	Griffin Hill Cir	03873	\N	\N	Urban	NH	Rockingham	Sandown	1	\N	\N	1	1	1
Governor Weare Park	43 Gove Rd	\N	\N	03874	\N	\N	Urban	NH	Rockingham	Seabrook
Veteran's Park	56 South Main St	\N	\N	03874	\N	\N	Urban	NH	Rockingham	Seabrook
\.
vacuum analyze msa;