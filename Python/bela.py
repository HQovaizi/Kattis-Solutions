'''
 *
 *	Problem:		Bela
 *	Problem ID:	bela
 *	url:				https://open.kattis.com/problems/bela
 *	Solution:		Python
 *
'''

CARDS_PER_HAND = 4

line = input().split(" ")
numHands, dominantSuit = [int(line[0]), line[1]]
Scores = {
	"A": [11,11],
	"K": [4,4],
	"Q": [3,3],
	"J": [20,2],
	"T": [10,10],
	"9": [14,0],
	"8": [0,0],
	"7": [0,0]
}
	
totalPoints = 0
for i in range(numHands * CARDS_PER_HAND):
	card = input()
	cardNumber = card[0]
	cardSuit = card[1]
	
	if (dominantSuit == cardSuit):
		totalPoints += Scores[cardNumber][0]
	else:
		totalPoints += Scores[cardNumber][1]
	
print(totalPoints)
