'''
 *
 *	Problem: "Hangman"
 *
'''

word = input()
guesses = input()

wordSet = set(word)

result = 'LOSE'
correct = 0
incorrect = 0

for guess in guesses:
	if (guess in wordSet):
		correct += 1
	else:
		incorrect += 1
		
	if (correct == len(wordSet)):
		result = 'WIN'
		break
	elif (incorrect == 10):
		break

print(result)