#!/usr/bin/env node

exports.mapReadStreams = function(readStreams, callback) {
	if(typeof readStreams !== 'object') {
		throw new Error('You must specify readStreams to mapReadStreams');
	}

	if(typeof callback !== 'function') {
		throw new Error('You must provide a callback to mapReadStreams');
	}

	if(readStreams.length === 0) {
		throw new Error('There were not any readStreams provided in the array');
	}

	for(var i = 0, len = readStreams.length; i < len; ++i) {
		callback(readStreams[i]);
	}
};


exports.tsvReadStream2Js = function(readStream, callback) {
	if(typeof readStream !== 'object') {
		throw new Error('You must specify readStream to tsvReadStream2Js');
	}

	if(typeof callback !== 'function') {
		throw new Error('You must provide a callback to tsvReadStream2Js');
	}

	callback(null, {"not": "implemented"});
};