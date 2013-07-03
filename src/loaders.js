exports.getTsvLoader = function() {
	var loader = {};

	loader.toDataRow = function(rowString) {
		return rowString.replace(/\r/g, '').split("\t");
	};

    return loader;
};