var delimit = require('../src/delimit.js');

var argv = require('optimist')
    .usage("\nUsage: node delimit.js [options] --file <filePath>")
    .options('file', { "demand": true, describe: "The file to parse" })
    .options('name', { describe: "What to name our table" })
    .options('header', { describe: "What row is the header in?" })
    .options('igEmHead', { describe: "Ignore columns with empty headers?" })
    .options('sameSheets', { describe: "XLS only - Do all the sheets contain the same data types?" })
    .argv;

var extension = argv.file.split(".");
extension = extension[extension.length - 1];

var options = {
    tablename: argv.name,
    header: argv.header,
    ignoreEmptyHeaders: argv.igEmHead,
    sameSheets: argv.sameSheets
};

if(extension.match(/xlsx?/)) {
    delimit.xlsToPgSql(argv.file, process.stdout, options, function doneCb() {
        process.exit(0);
    });
}
else if (extension.match(/tsv/)) {
    delimit.tsvToPgSql(argv.file, process.stdout, options, function doneCb() {
        process.exit(0);
    });
}
else {
    console.error("You've provided a file with an invalid extension of '" + extension + "'");
    process.exit(1);
}