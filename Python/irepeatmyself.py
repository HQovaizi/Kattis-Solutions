'''
 *
 *	Problem: "I Repeat Myself I Repeat Myself I Repeat"
 *
'''

import sys

numCases = input()
numCases = int(numCases)

case = 1
while (case <= numCases):
	#print(case)
	line = input()
	lenLine = len(line)
	output = lenLine
	
	index = 0
	lineForward = line
	lineBackward = line
	while (index < lenLine):
	
		#print("/*", line[index:], "*/")
		#print("/*", line[:(index * -1)], "*/")
		
		if (line[index:] == line[:(index * -1)]):
			output = index
			break
			
		index += 1
			
	print(output)
	case += 1