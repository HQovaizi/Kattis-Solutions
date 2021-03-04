'''
 *
 *	Problem: "License to Launch"
 *
'''

import math

days = int(input())

junkPerDay = input().split()
minAmountJunk = int(junkPerDay[0])

day = 0
daysTilLaunch = 0
for x in junkPerDay:
	amountJunk = int(x)
	
	if (amountJunk < minAmountJunk):
		minAmountJunk = amountJunk
		daysTilLaunch = day
		
	day += 1
	
print(daysTilLaunch)