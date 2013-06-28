#!/usr/bin/env node

var
reader = require('line-reader'),
fs = require('fs'),
utils = require('./util.js');

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

exports.tsvToDataRow = function(tsvRowString) {
    return tsvRowString.split("\t");
};

exports.tsvToRows = function(filePath, rowCallback, doneCallback) {
    if(typeof filePath !== 'string') {
        throw new Error('You must specify a filePath to tsvToRows');
    }

    if(typeof rowCallback !== 'function') {
        throw new Error('You must provide a rowCallback to tsvToRows');
    }

    if(typeof doneCallback !== 'function') {
        throw new Error('You must provide a doneCallback to tsvToRows');
    }

    reader.eachLine(filePath, function(line) {
        rowCallback(exports.tsvToDataRow(line));
    }).then(function () {
        doneCallback();
    });
};

exports.tsvToDataHandler = function(filePath, dataHandler, headerRow) {
    var dataTypes = [];
    var headers = [];
    exports.tsvToRows(filePath, function(dataRow) {
        dataHandler();
    });
};