#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
import sys
import tempfile
import pandas
import re


def normalize(string):

    if string is None:
        return ""

    # Pandas workaround #1001
    if re.search(r'None(\.\d+)?', string):
        return ""

    return string


try:
    orig_stdout = sys.stdout  # pandas doesn't play nice
    sys.stdout = open(os.devnull, 'w')
    xls = pandas.io.parsers.ExcelFile(sys.argv[1])
    sys.stdout = orig_stdout
except:
    sys.stderr.write("PANDAS! Stop giving me so much grief!\n")
    sys.stderr.write(str(sys.exc_info()[0]) + "\n")
    sys.exit(1)

tdir_path = tempfile.mkdtemp()

for sheet_name in xls.sheet_names:
    dataframe = xls.parse(sheet_name, encoding='utf8')
    tfile_handle, tfile_path = tempfile.mkstemp(dir=tdir_path,
                                                suffix='.'+normalize(sheet_name))

    rename = {}
    for column_name in dataframe.columns:
        rename[column_name] = normalize(column_name)

    dataframe = dataframe.rename_axis(rename)

    f = os.fdopen(tfile_handle, 'w+b')
    dataframe.to_csv(
        f,
        sep="\t",
        dir=tdir_path,
        index=False,
        encoding='utf8')
    f.close()

sys.stdout.write(tdir_path)
sys.stdout.flush()
sys.exit(0)
