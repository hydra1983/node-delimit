#!/usr/bin/env python

import sys
import csv
import io

'''
Takes CSV from standard input, and outputs it in TSV format
'''

# http://stackoverflow.com/a/16865106/586621
from signal import signal, SIGPIPE, SIG_DFL
# Ignore SIG_PIPE and don't throw exceptions on it...
# http://docs.python.org/library/signal.html
signal(SIGPIPE, SIG_DFL)


# http://stackoverflow.com/a/6556862/586621
class ReadlineIterator(object):
    """An iterator that calls readline() to get its next value."""
    def __init__(self, f):
        self.f = f

    def __iter__(self):
        return self

    def next(self):
        line = self.f.readline()
        if line:
            return line
        else:
            raise StopIteration


def output_tsv(io_stream, dialect):
    reader = csv.reader(ReadlineIterator(io_stream), dialect)
    writer = csv.writer(sys.stdout, delimiter="\t", lineterminator="\n")
    for row in reader:
        writer.writerow(row)


# Lines from Standard Input
lines = ReadlineIterator(sys.stdin)

# The first 20 lines from standard input
sample_data = ''

for i in range(0, 20):  # Look at the first twenty rows
    try:  # add a line to the sample data
        next_line = lines.next()
        sample_data += next_line
    except:  # Break out of the loop if we've run out of input to read
        break

# Get the dialect from the sample data
try:
    dialect = csv.Sniffer().sniff(sample_data)
except:
    sys.stderr.write("Could not determine dialect / delimiter\n")
    sys.exit(1)

# Convert the sample data into TSV format first
with io.BytesIO(bytearray(sample_data)) as io_stream:
    output_tsv(io_stream, dialect)

# Convert the rest of standard input to TSV format
output_tsv(sys.stdin, dialect)

sys.stdout.flush()
sys.exit(0)
