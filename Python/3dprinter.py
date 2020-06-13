'''
 *
 *	Problem: "3D Printed Statues"
 *
'''

import sys
import math

for numStatues in sys.stdin:
	numStatues = int(numStatues)
	numDays = ( math.log(numStatues,10) / math.log(2,10) )
	minNumDays = math.ceil(numDays)
	minNumDays += 1
	
	print(minNumDays)