'''
 *
 *	Problem: "Bus"
 *
'''

cases = int(input())

for i in range(cases):
	k = int(input())
	result = 0
	for j in range(k):
		result = (result*2) + 1
	print(result)