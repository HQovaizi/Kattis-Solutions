'''
 *
 *	Problem: "Avion"
 *
'''

import sys

numCases = 5
numCases = int(numCases)

output = ""
case = 1
while (case <= numCases):
	line = input()
	
	if ("FBI" in line):
		output += str(case) + " "
		
	case += 1
		
if (output == ""):
	output = "HE GOT AWAY!"
else:
	output = output[:-1]

print(output)