"use strict";

var fs = require('fs')
, path = require('path');


module.exports = (function() {

	var testConfig = {
		tmpDir: path.join(__dirname , '/tmp')
	};

	// perform simple tasks before returning the object (all sync so we can
	// ensure it happens before returning this object)

	if (!fs.existsSync(testConfig.tmpDir)) {
		fs.mkdirSync(testConfig.tmpDir);
	}

	return testConfig;

})();
