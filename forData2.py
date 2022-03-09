import csv
import random

with open('schedule_file2.csv', mode='w') as schedule_file:
  schedule_file = csv.writer(schedule_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
  personnel = 6
  for tutor_id in range(1, personnel):
    for i in range(7):
      for j in range(48):
        r = random.random()
        if r>=0.5:
          r = 2
        elif r<0.5:
          r = 1
        if i < 4:
          if j//2 < 10:
            if j%2 == 0:
              schedule_file.writerow([tutor_id, '2022-03-0' + str(i+6) + ' 0' + str(j//2) + ':00:00 UTC', r])
            elif j%2 == 1:
              schedule_file.writerow([tutor_id, '2022-03-0' + str(i+6) + ' 0' + str(j//2) + ':30:00 UTC', r])
          else:
            if j%2 == 0:
              schedule_file.writerow([tutor_id, '2022-03-0' + str(i+6) + ' ' + str(j//2) + ':00:00 UTC', r])
            elif j%2 == 1:
              schedule_file.writerow([tutor_id, '2022-03-0' + str(i+6) + ' ' + str(j//2) + ':30:00 UTC', r])
        else:
          if j//2 < 10:
            if j%2 == 0:
              schedule_file.writerow([tutor_id, '2022-03-' + str(i+6) + ' 0' + str(j//2) + ':00:00 UTC', r])
            elif j%2 == 1:
              schedule_file.writerow([tutor_id, '2022-03-' + str(i+6) + ' 0' + str(j//2) + ':30:00 UTC', r])
          else:
            if j%2 == 0:
              schedule_file.writerow([tutor_id, '2022-03-' + str(i+6) + ' ' + str(j//2) + ':00:00 UTC', r])
            elif j%2 == 1:
              schedule_file.writerow([tutor_id, '2022-03-' + str(i+6) + ' ' + str(j//2) + ':30:00 UTC', r])