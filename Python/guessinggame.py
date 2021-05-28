'''
 *
 *	Problem:		Guessing Game
 *	Problem ID:	guessinggame
 *	url:				https://open.kattis.com/problems/guessinggame
 *	Solution:		Python
 *
'''

guess = int(input())
minGuess = 0
maxGuess = 11

while (guess != 0):
	response = input()
	
	if (response == "right on"):
		if ( (minGuess < guess) and (guess < maxGuess) ):
			print("Stan may be honest")
		else:
			print("Stan is dishonest")
		minGuess = 0
		maxGuess = 11
	elif (response == "too high"):
		maxGuess = min(guess, maxGuess)
	else:
		minGuess = max(guess, minGuess)
		
	guess = int(input())