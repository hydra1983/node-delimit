#!/usr/bin/env node
"use strict";

var delimit = require('../index.js');

delimit.convertStream('csv', 'pgsql', __dirname + '/files/csvSimple.csv')
.then(function(pgsqlStream) {
	pgsqlStream.pipe(process.stdout);
});
