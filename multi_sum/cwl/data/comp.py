import csv
import sys

#read input csv file

file = open(sys.argv[1])
csvreader = csv.reader(file)
rows = []
for row in csvreader:
    rows.append(row)
file.close()

#addition
sum = 0
for row in rows:
    for el in row:
        if el.isdigit():
            sum = sum + int(el)
#print result to output txt file
outF = open("result.txt", "w")
outF.write(str(sum))
outF.close()