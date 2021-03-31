'''
 *
 *	Problem: "Stopwatch"
 *
'''

numPressed = int(input())

if (numPressed % 2 == 1):
	result = "still running"
	print(result)
else:
	result = 0
	while (numPressed > 0):
		t1 = int(input())
		t2 = int(input())
		result += t2 - t1
		
		numPressed -= 2
	print(result)