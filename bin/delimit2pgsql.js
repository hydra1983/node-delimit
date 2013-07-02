var delimit = require('../src/delimit.js');
var defines = require('../src/defines.js');

var argv = require('optimist')
    .usage("\nUsage: node delimit.js [options] --file <filePath>")
    .options('file', {
        "demand": true,
        describe: "The file to parse"
    })
    .options('name', {
        describe: "What to name our data? Default 'default'"
    })
    .options('header', {
        describe: "What row is the header in? Default -1"
    })
    .options('igEmHead', {
        "boolean": true,
        describe: "Ignore columns with empty headers? Default false"
    })
    .options('forceType', {
        describe: "Force a particular type for all columns? Default not set"
    })
    .argv;

var extension = argv.file.split(".");
extension = extension[extension.length - 1];

var options = {
    header: (typeof(argv.header === 'undefined') ? -1 : argv.header),
    name: argv.name || "default",
    ignoreEmptyHeaders: argv.igEmHead || false,
    forceType: (function(forceType) {
        if(typeof forceType === 'string') {
            forceType = forceType.toUpperCase();
            if(typeof defines[forceType] === 'undefined') {
                console.error('You have provided an invalid forceType');
                process.exit(1);
            } else {
                return defines[forceType];
            }
        }
        return forceType;
    })(argv.forceType) || false
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