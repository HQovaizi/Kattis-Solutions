'''
 *
 *	Problem: "Number Fun"
 *
'''

import sys
import math

cases = input()
cases = int(cases)

index = 1
while( index <= cases):

	line = input().split()
	a = float( line[0] )
	b = float( line[1] )
	c = float( line[2] )
	
	if ( a + b == c ):
		print("Possible")
	elif ( a * b == c ):
		print("Possible")
	elif ( a - b == c ):
		print("Possible")
	elif ( b - a == c ):
		print("Possible")
	elif ( (a / b == c) and (a % b == 0) ):
		print("Possible")
	elif ( (b / a == c) and (b % a == 0) ):
		print("Possible")
	else:
		print("Impossible")
	
	index += 1