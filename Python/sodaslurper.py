'''
 *
 *	Problem: "Soda Slurper"
 *
'''

start, found, required = map(int, input().split(" "))
numBottles = start + found
numSodas = 0
while ( (numBottles - required) >= 0 ):
	numBottles -= required
	numBottles += 1
	numSodas += 1

print(numSodas)