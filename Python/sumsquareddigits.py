'''
 *
 *	Problem: "Sum Squared Digits Function"
 *
'''

import sys

cases = int(input())

for i in range(cases):
	caseNum,base,sum = map(int, input().split(" "))
	sumSquaredDig = 0
	while (sum  > 0):
		digit = (sum % base)
		sumSquaredDig += digit**2
		sum = (sum - digit) / base
	print("%d %d" % (caseNum, sumSquaredDig))