'''
 *
 *	Problem: "Star Arrangements"
 *
'''
	
#-----main-----#
numStars = int(input())
print(str(numStars) + ":")

for i in range(2,numStars):
	# test for identical number of rows
	if ( (numStars % (i+i-1)) == 0 ):
		print(str(i) + "," + str(i-1))
	# test for number of rows differ by one
	elif ( ((numStars + i - 1) % (i+i-1)) == 0 ):
		print(str(i) + "," + str(i-1))

	# test for identical number of rows and identical stars per row
	if ( (numStars % (i+i)) == 0 ):
		print(str(i) + "," + str(i))
	# test for number of rows differ by one and identical stars per row
	elif ( ((numStars + i) % (i+i)) == 0 ):
		print(str(i) + "," + str(i))
