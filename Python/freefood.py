'''
 *
 *	Problem: "Free Food"
 *
'''

events = int(input())

datesList = []
while (events > 0):
	startDate, endDate = map(int, input().split(" "))
	for date in range(startDate, (endDate + 1)):
		datesList.append(date)
	events -= 1
	
datesSet = set(datesList)
print(len(datesSet))