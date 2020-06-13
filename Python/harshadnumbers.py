'''
 *
 *	Problem: "Harshad Numbers"
 *
'''

import sys

line = sys.stdin.readline()
line = line[:-1]

n = int(line)
while (n <= 1000000000):
	sum = 0;
	
	for dig in line:
		#print(dig)
		sum += int(dig)
	
	if ( (n % sum) == 0):
		print(n)
		break
		
	n += 1
	line = str(n)