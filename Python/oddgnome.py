'''
 *
 *	Problem: "Odd Gnome"
 *
'''

groups = int(input())

for group in range(groups):
	idList = input().split(" ")
	
	prevId = int(idList[1])
	for id in range(2,len(idList)):
		currId = int(idList[id])
		
		if (currId != (prevId + 1)):
			print(id)
			break
		
		prevId = currId