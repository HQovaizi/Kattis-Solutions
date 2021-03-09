'''
 *
 *	Problem: "Beavergnaw"
 *
'''

import math

D, V = map(int, input().split(" "))

while ( ((D) and (V)) != 0 ):
	v = (12*(D*((D/2)**2) - V/math.pi) - (D**3))/2
	d = v ** (1. / 3)
	
	print( "%.9f\n" % (d) )
	D, V = map(int, input().split(" "))
	