exports.getTsvLoader = function() {
	var loader = {};

	loader.toDataRow = function(rowString) {

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