import csv

with open('snn_data.csv', 'rb') as csvfile:
    data = csv.reader(csvfile, delimiter=',')
    count = 0
    for row in data:
        print '// %d' % count
        print '#10 data_in_1 = %s; data_in_2 = %s; data_in_3 = %s; sign_in_1 = %d; sign_in_2 = %d; sign_in_3 = %d;' % (row[1], row[3], row[5], 1 if row[1]=='1' else 0, 1 if row[3]=='1' else 0, 1 if row[5]=='1' else 0)
        count += 1
