'''
 *
 *	Problem: "Datum"
 *	Problem ID: "datum"
 *	https://open.kattis.com/problems/datum
 *
 *	Solution: Python
'''
import sys
import math

YEAR = 2009

monthKeyValue = [1, 4, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6]
weekDays = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

line = input().split()
day = int(line[0])
month = int(line[1])

key = monthKeyValue[ (month - 1) ]
result = ( (day + key + 17) % 7 )

dayOfWeek = weekDays[result]
print(dayOfWeek)