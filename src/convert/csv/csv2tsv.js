var fs = require('fs'),
    exec = require('child_process').exec;

exports.csv2tsv = function(filePath, callback) {
    fs.exists(filePath, function(exists) {
        if(!exists) {
            callback(new Error('File ' + filePath + ' does not exist'));
            return;
        }

        var call = 'python ' + __dirname + '/csv2tsv.py ' + filePath;
        exec(call, function(error, stdout, etderr) {
            if(error === null) {
                callback(error, stdout);
            } else {
                callback(new Error('There was a problem parsing the file ' + filePath),
                    stderr);
            }
        });
    });
};