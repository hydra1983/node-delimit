"use strict";

/*
	Converts a Degree, minute, second to decimal lat/long format. e.g.
	Can handle the following formats:

	34N 40' 50.12"
	or
	(+/-)34° 40' 50.12", -34° 40' 50.12", +34° 40' 50.12"
	or
	34 40 50.12
	or
	0 0 0

	Use: "+" for N Lat or E Long
		 "-" for S Lat or W Long.

	Assumes the format is in regular expression: (\+?-?)(\d+) *([NSEW]?)(°?) *(\d+) *' *(\d+\.?\d*) *"
	group(n) = ... (see below where they're pulled out)

	@param dmsString
	@return
*/
exports.dmsToDecimal = function(dmsString) {
	/*
		(\+?-?)         Capturing group, (+ / -)
		(\d+)           Capturing group, first number [DEGREES] (int)
		([NSEW]?)       Capturing group, matches String "N", "S", "E", "W"
		\S?\s+          Optional non-whitespace character + whitespace
		(\d+)           Capturing group, second number [MINUTES] (int)
		'?\s+           Optional ' + whitespace
		(\d+\.?\d*)     Capturing group, third number [SECONDS] (optional decimal)
		"?              Optional "

		Capturing groups above have been pulled out to be analyzed
	*/
	// Run the regular expression on the DMS String provided
	var match = dmsString.match(/(\+?-?)(\d+)([NSEWnsew]?)\S?\s+(\d+)'?\s+(\d+\.?\d*)"?/);
	// Throw an error if there was a problem running the DMS String provided
	if(!match) { throw new Error('Invalid DMS String provided'); }
	// Parse out the match objects into their respective categories
	// e.g. given ["34N 40' 50.12"", "", "34", "N", "40", "50.12"] ...
	var degrees     = parseFloat(match[2]),
		minutes     = parseFloat(match[4]),
		seconds     = parseFloat(match[5]),
		decimal     = degrees + (minutes / 60) + (seconds / 3600),
		sign        = match[1], // + or -
		cardinal    = match[3].toUpperCase(); // N S E W
	// Invalid to have both cardinal and a sign specified. Should be one or the other
	if(cardinal && sign) { throw new Error('Invalid DMS String syntax: DMS should either specify cardinal (NSEW) or a sign (+/-) but not both!'); }
	// Adjust degree value if a cardinal was specified (make it negative)
	if(cardinal === "S" || cardinal === "W") { decimal = 0 - decimal; }
	// Adjust degree value if a sign was present
	if(sign === "-") { decimal = 0 - decimal; }

	return decimal;
};
