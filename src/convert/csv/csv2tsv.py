import sys
import tempfile
import csv

tfile_handle, tfile_path = tempfile.mkstemp(suffix='.tsv')

with open(sys.argv[1], 'rb') as csvfile:
    reader = csv.reader(csvfile)
    with open(tfile_path, 'wb') as tsvfile:
        writer = csv.writer(tsvfile, delimiter="\t")
        for row in reader:
            writer.writerow(row)

sys.stdout.write(tfile_path)
sys.stdout.flush()
sys.exit(0)
