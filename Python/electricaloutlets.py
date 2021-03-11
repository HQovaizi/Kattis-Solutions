'''
 *
 *	Problem: "Electrical Outlets"
 *
'''

cases = int(input())

for case in range(cases):
	maxPowered = 0
	
	line = input().split(" ")
	numStrips = int(line[0])
	
	for strip in range(1, (numStrips + 1)):
		numOutlets = int(line[strip])
		maxPowered += numOutlets

	occupiedOutlets = numStrips - 1
	maxPowered -= occupiedOutlets
	
	print(maxPowered)