exports.getTsvLoader = function() {
	var loader = {};

	// Is this row finished or does it continue on another line?
	loader.lineContinues = function(rowString) {
		if(rowString === '') {
			return true;
		}
		// Do we end with a continuation?
		return rowString.match(/(?:\t|^)"([^\t"]+[^"])?$/) ? true : false;
	};

	// Has this line finished continuing?
	loader.lineEnds = function(rowString) {
		if(rowString === '"') {
			return true;
		}

		// Does it close off the previous quote?
		var closeQuote = rowString.match(/^([^\t"]+[^"])?"(?:\t|$)/) ? true : false;

		// Does it continue again?
		var continuesAgain = loader.lineContinues(rowString);

		return closeQuote && !continuesAgain;
	}

	loader.toDataRow = function(rowString) {

		// remove any quotes that surround text with newlines
		rowString = rowString.replace(/"(.*\n(?:\n|.)*)"/, '$1')

		if(rowString.match(/\u2018/))
			console.log("DEBUG:", rowString.match(/\u2018/));

		// convert fancy quotes into normal ones
		rowString = rowString.replace(/\u2018/g, "'");
		rowString = rowString.replace(/\u2019/g, "'");
		rowString = rowString.replace(/\u201c/g, '"');
		rowString = rowString.replace(/\u201d/g, '"');

		// get rid of any other non printable character
		rowString = rowString.replace(/[^\x00-\x7F]/g, "");

		// other stuff
		rowString = rowString.replace(/\r/g, '');

		// split and return
		return rowString.split("\t");
	};

    return loader;
};