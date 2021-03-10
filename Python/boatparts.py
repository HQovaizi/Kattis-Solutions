'''
 *
 *	Problem: "Boat Parts"
 *
'''

p,n = map(int, input().split(" "))
output = "paradox avoided"

listParts = []
for day in range(n):
	part = input()
	listParts.append(part)
	
	setParts = set(listParts)
	if ( len(setParts) == p ):
		output = (day+1)
		break
		
print(output)