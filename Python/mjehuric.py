'''
 *
 *	Problem: "Mjehuric"
 *
'''

sequence = [int(num) for num in input().split(" ")]

for iteration in range(1, len(sequence)):
	swapOccurred = False
	
	for i in range( (len(sequence) - iteration) ):
		if (sequence[i] > sequence[i+1]):
			tmp = sequence[i]
			sequence[i] = sequence[i+1]
			sequence[i+1] = tmp
			
			swapOccurred = True
			print(' '.join(map(str,sequence)))

	if not(swapOccurred):
		break