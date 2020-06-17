'''
 *
 *	Problem: "Last Factorial Digit"
 *
'''

import sys

numCases = input()
numCases = int(numCases)

case = 1
while (case <= numCases):

	#print(case)
	
	n = input()
	n = int(n)
	
	factorial = 1
	index = 1
	while (index < n):
		factorial *= (index + 1)
		index += 1
		
	lastDigit = factorial % 10
	print(lastDigit)
	case += 1