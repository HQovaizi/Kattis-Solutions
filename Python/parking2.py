'''
 *
 *	Problem: "Parking"
 *
'''

cases = int(input())

totalArea = 0
for x in range(cases):
	numStores = int(input())
	
	stores = input().split()
	maxPos = int(stores[0])
	minPos = int(stores[0])

	for y in range(numStores):
		currStore = int(stores[y])
		if (currStore > maxPos):
			maxPos = currStore
		if (currStore < minPos):
			minPos = currStore
	
	result = (maxPos - minPos) * 2
	print(result)