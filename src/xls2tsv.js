#!/usr/bin/env node
var fs = require('fs');
var exec = require('child_process').exec;

exports.xls2tsv = function(filePath, callback) {
    fs.exists(filePath, function(exists) {
        if(!exists) {
            callback(new Error('File ' + filePath + ' does not exist'));
            return;
        }

        var call = 'python ' + __dirname + '/xls2tsv.py ' + filePath;
        exec(call, function(error, stdout, stderr) {
            if(error === null) {
                callback(error, stdout);
            } else {
                callback(
                    new Error('There was a problem parsing the file ' + filePath),
                    stderr);
            }
        });
    });
};

exports.getTsvFilePaths = function(tempDir, callback) {

    if(typeof tempDir !== 'string') {
        throw new Error('You must provide a valid directory path to getTsvFilePaths');
    }

    if(typeof callback !== 'function') {
        throw new Error('You must provide a callback to getTsvFilePaths');
    }

    fs.exists(tempDir, function(exists) {
        if(!exists) {
            callback(new Error('Directory ' + tempDir + ' does not exist'));
            return;
        }
        fs.readdir(tempDir, function readDirCbk(error, files) {
            if(error !== null) {
                callback(error);
                return;
            }

            var path, filePaths = [];

            for(var i = 0, len = files.length; i < len; ++i) {
                path = tempDir + "/" + files[i];
                filePaths.push(path);
            }

            callback(error, filePaths);
        });
    });
};

exports.process = function(filePath, callback) {
    var info = {};
    exports.xls2tsv(filePath, function(error, tempDir) {

        if(error) {
            throw error;
        }
        info.tempDir = tempDir;
        info.files = [];
        exports.getTsvFilePaths(tempDir, function(error, filePaths) {
            if(error) {
                throw error;
            }
            var sheetName;
            for(var i = 0, len = filePaths.length; i < len; ++i) {
                sheetName = filePaths[i].split('.')[1];
                info.files.push({
                    sheetName: sheetName,
                    path: filePaths[i]
                });
            }
            callback(error, info);
        });
    });
};