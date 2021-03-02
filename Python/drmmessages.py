'''
 *
 *	Problem: "DRM Messages"
 *
'''

STARTASCII = 65
NUMLETTERS = 26

'''-----getRotValue-----'''
def getRotValue(input):
	rotValue = 0
	for c in input:
		rotValue += ord(c) - STARTASCII
	rotValue = rotValue % NUMLETTERS
	return rotValue
	
'''-----rotate-----'''
def rotate(input):
	rotValue = getRotValue(input)
	rotated = ""
	for c in input:
		value = ord(c) - STARTASCII
		newValue = STARTASCII + ((value + rotValue) % NUMLETTERS)
		rotated += chr(newValue)
	return(rotated)
	
'''-----merge-----'''
def merge(inputA, inputB):
	merged = ""
	for i in range(len(inputA)):
		c = ord(inputA[i:i+1]) - STARTASCII
		rotateBy = ord(inputB[i:i+1]) - STARTASCII
		newC = ( (c + rotateBy) % NUMLETTERS ) + STARTASCII
		merged += chr(newC)
	return merged
	
'''-----main-----'''
input = input()			

# step 1: divide
lenHalf = len(input) // 2
firstHalf = input[:lenHalf]
secondHalf = input[lenHalf:]

# step 2: rotate
rotatedFirst = rotate(firstHalf)
rotatedSecond = rotate(secondHalf)

# step 3: merge
result = merge(rotatedFirst, rotatedSecond)

print(result)