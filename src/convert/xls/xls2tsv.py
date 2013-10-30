#!/usr/bin/env python
# -*- coding: utf-8 -*-
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
tdir_path = tempfile.mkdtemp()

for sheet in wb.sheets():
    tfile_handle, tfile_path = tempfile.mkstemp(dir=tdir_path,
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
