import csv
import pprint
from collections import Counter

keywords = Counter()
with open('data/all.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        if not row['acronym']:
            continue
        if int(row['num_pages']) < 6:
            continue
        keywords.update(row['keywords'].split(', '))
        print(', '.join(row.values()))

pprint.pprint(keywords)
