'''
 *
 *	Problem: "A Different Problem"
 *
'''

import sys

for i in sys.stdin:
	ab = i.split()
	a = int(ab[0])
	b = int(ab[1])
	
	difference = abs(a - b)
	print(difference)