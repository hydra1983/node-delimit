exports.mapFilePaths = function(filePaths, callback) {
    if(typeof filePaths !== 'object') {
        throw new Error('You must specify filePaths to mapFilePaths');
    }

    if(typeof callback !== 'function') {
        throw new Error('You must provide a callback to mapFilePaths');
    }

    if(filePaths.length === 0) {
        throw new Error('There were not any filePaths provided in the array');
    }

    for(var i = 0, len = filePaths.length; i < len; ++i) {
        callback(filePaths[i]);
    }
};