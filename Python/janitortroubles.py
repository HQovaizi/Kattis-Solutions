'''
 *
 *	Problem: "Janitor Troubles"
 *
'''

import math

'''-----bretschneider-----'''
def bretschneider(s1, s2, s3, s4):
	semiperimeter = ((s1 + s2 + s3 + s4) / 2)
	maxArea = math.sqrt(
		(semiperimeter - s1) *
		(semiperimeter - s2) *
		(semiperimeter - s3) *
		(semiperimeter - s4)
	)
	return maxArea
	
'''-----main-----'''
lengths = input().split()
s1 = int(lengths[0])
s2 = int(lengths[1])
s3 = int(lengths[2])
s4 = int(lengths[3])

maxArea = bretschneider(s1, s2, s3, s4)
print(maxArea)