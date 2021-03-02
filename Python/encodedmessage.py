'''
 *
 *	Problem: "Encoded Message"
 *
'''

import math

'''-----main-----'''
cases = int(input())

for x in range(cases):
	message = input()

	lenMsg = len(message)
	lenSquare = int(math.sqrt(lenMsg))

	result = ""
	for x in range(lenSquare):
		posChar = lenSquare - x - 1
		result += message[posChar::lenSquare]
	print(result)