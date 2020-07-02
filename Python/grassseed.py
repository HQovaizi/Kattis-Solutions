'''
 *
 *	Problem: "Grass Seed Inc."
 *	Problem ID: "grassseed"
 *	https://open.kattis.com/problems/grassseed
 *
 *	Solution: Python
'''

#-----calcCost-----#
def calcCost():	
	costPerUnit = float(input())
	numLawns = int(input())
	
	totalArea = 0
	for lawn in range(numLawns):
		line = input().split()
		width = float(line[0])
		length = float(line[1])
		
		area = width * length
		totalArea += area
	
	totalCost = totalArea * costPerUnit
	return totalCost

#-----main-----#
output = calcCost()
print(output)
