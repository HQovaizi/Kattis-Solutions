'''
 *
 *	Problem: "Weak Vertices"
 *
'''

'''isTriangle'''
def isTriangle(graph, i, j, k):
	if ((graph[i][k] == 1) and (graph[i][j] == 1) and (graph[j][k] == 1)):
		return True
	else:
		return False
		
'''allUnique'''
def allUnique(i, j, k):
	if ((i != j) and (i != k) and (j != k)):
		return True
	else:
		return False

vertices = int(input())
while ( vertices != -1 ):
	graph = []
	weakList = []

	for row in range(vertices):
		row = [int(i) for i in input().split(" ")]
		graph.append(row)
		
	for i in range(vertices):
		weakVertix = True
		for j in range(vertices):
			for k in range(vertices):
				if ( isTriangle(graph, i,j,k) and allUnique(i,j,k) ):
					weakVertix = False
				
		if (weakVertix):
			weakList.append(str(i))
		
	print (" ".join(weakList))
	vertices = int(input())