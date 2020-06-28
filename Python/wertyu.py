'''
 *
 *	Problem: "WERTYU"
 *
'''

import sys

#-----convert_wertyu-----#
def convert_wertyu(KEYBOARD, line):
	output = ""
	
	for currChar in line:
		if (currChar == ' '):
			output += ' '
		elif (currChar in KEYBOARD):
			keyIndex = KEYBOARD.index(currChar)
			output += KEYBOARD[ (keyIndex - 1) ]
	
	return output 
	
#-----main-----#
KEYBOARD = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./"

for line in sys.stdin:
	output = convert_wertyu(KEYBOARD, line)
	print(output)