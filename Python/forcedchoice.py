'''
 *
 *	Problem: "Forced Choice"
 *
'''

numCards, prediction, numSteps = map(int, input().split(" "))

while (numSteps > 0):

	choices = [int(choice) for choice in input().split(" ")[1:]]
	
	if (prediction in choices):
		print("KEEP")
	else:
		print("REMOVE")
	
	numSteps -= 1