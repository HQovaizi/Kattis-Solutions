'''
 *
 *	Problem: "Synchronizing Lists"
 *
'''

'''-----main-----'''
n = int(input())
while (n != 0):
	listA = [0 for i in range(n)]
	for i in range(n):
		listA[i] = int(input())
	
	listACopy = listA.copy()
	listACopy.sort()
	
	listIndex = [0 for i in range(n)]
	for i in range(n):
		listIndex[i] = listACopy.index(listA[i])

	listB = [0 for i in range(n)]
	for i in range(n):
		listB[i] = int(input())
	listB.sort()
	
	for i in listIndex:
	 print(listB[i])
			
	print()
	n = int(input())
	