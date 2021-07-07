'''
 *
 *	Problem:		Magic Trick
 *	Problem ID:	magictrick
 *	url:				https://open.kattis.com/problems/magictrick
 *	Solution:		Python
 *
'''

cardsArrangment = input()

guess = 1
for card in cardsArrangment:
	if (cardsArrangment.count(card) > 1):
		guess = 0
		break
print(guess)