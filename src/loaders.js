exports.getTsvLoader = function() {
	var loader = {};

	loader.toDataRow = function(rowString) {
		return rowString.split("\t");
	};

    return loader;
};