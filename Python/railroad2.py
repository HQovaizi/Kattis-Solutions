'''
 *
 *	Problem: "Railroad"
 *
'''

line = input().split(" ")
y = int(line[1])
if (y % 2 == 0):
	print("possible")
else:
	print("impossible")