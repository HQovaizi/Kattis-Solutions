'''
 *
 *	Problem: "Cudoviste"
 *
'''

'''-----canPark-----'''
def canPark(map, i, j, k):
	parkingArea = map[i][j] + map[i][j+1] + map[i+1][j] + map[i+1][j+1]
	if ("#" in parkingArea):
		return False
	elif (parkingArea.count("X") == k):
		return True

'''-----main-----'''
line = input().split(" ")
rows, cols = int(line[0]), int(line[1])
output = [0, 0, 0, 0, 0]
map = [["" for j in range(cols)] for i in range(rows)]

for i in range(rows):
	line = list(input())
	for j in range(cols):
		map[i][j] = line[j]
		
for k in range(5):
	for i in range(rows - 1):
		for j in range(cols - 1):
			if canPark(map, i, j, k):
				output[k] += 1

for i in range(5):
	print(output[i])