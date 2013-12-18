#!/usr/bin/env python

import sys
import tempfile
import csv
import re
import xlrd

def normalize(string):
    if string is None:
        return ""
    if re.search(r'None(\.\d+)?', string):
        return ""
    return string

wb = xlrd.open_workbook(sys.argv[1])
# grab the remaining arguments as the sheet numbers we want to grab
valid_sheet_numbers = dict(zip(sys.argv[2:], sys.argv[2:]))

tdir_path = tempfile.mkdtemp()

for i, sheet in enumerate(wb.sheets()):

    # Skip this sheet if we have defined specific sheet numbers to grab
    # and it does not exist in that definition
    if len(valid_sheet_numbers) > 0 and not valid_sheet_numbers.get(str(i)):
        continue

    tfile_handle, tfile_path = tempfile.mkstemp(dir=tdir_path,
                                                prefix=str(i).zfill(5)+'_',
                                                suffix='.'+normalize(sheet.name))
    with open(tfile_path, 'wb') as tsvfile:
        writer = csv.writer(tsvfile, delimiter="\t")
        for rowNumber in xrange(sheet.nrows):
            fixedRow = []
            for item in sheet.row_values(rowNumber):
                try:
                    fixed = unicode(item)
                except:
                    fixed = item

                fixed = fixed.encode('utf8')
                fixed = fixed.replace('\t', ' ')  # replace tabs with spaces
                fixedRow.append(fixed)
            writer.writerow(fixedRow)

sys.stdout.write(tdir_path)
sys.stdout.flush()
sys.exit(0)
