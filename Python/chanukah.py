'''
 *
 *	Problem: "Chanukah Challenge"
 *
'''

cases = int(input())

for case in range(cases):
	caseNum, holidays = map(int, input().split(" "))
	result = 0
	for holiday in range(1,holidays+1):
		result += holiday
	result += holidays
	print(str(caseNum) + " " + str(result))