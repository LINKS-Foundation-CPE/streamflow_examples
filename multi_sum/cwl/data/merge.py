import csv
import sys

#read input txt file
row = []
for arg in [sys.argv[1], sys.argv[2]]:    
    with open(arg) as f:
        number = f.read()
        row.append(number)

#print result to output csv file
with open('result.csv', 'w') as f:
    writer = csv.writer(f)
    writer.writerow(row)