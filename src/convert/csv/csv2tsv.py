# -*- coding: utf-8 -*-

import sys
import tempfile
import csv

tfile_handle, tfile_path = tempfile.mkstemp(suffix='.tsv')

with open(sys.argv[1], 'rb') as csvfile:
    reader = csv.reader(csvfile, quotechar='"', escapechar="\\")
    with open(tfile_path, 'wb') as tsvfile:
        writer = csv.writer(tsvfile, delimiter="\t")
        for row in reader:
            fixedRow = []
            for item in row:
            	fixed = item
            	fixed = fixed.replace('\t', ' ')  # replace tabs with spaces
            	fixed = unicode(fixed, errors='ignore')
                fixedRow.append(fixed)
                print fixed
            writer.writerow(fixedRow)

sys.stdout.write(tfile_path)
sys.stdout.flush()
sys.exit(0)
