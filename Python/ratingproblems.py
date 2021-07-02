'''
 *
 *	Problem:		Rating Problems
 *	Problem ID:	ratingproblems
 *	url:				https://open.kattis.com/problems/ratingproblems
 *	Solution:		Python
 *
'''

numJudges, numRatings = map(int, input().split(" "))

minimumRating = 0
maximumRating = 0

for i in range(numRatings):
	currentRating = int(input())
	
	minimumRating += currentRating
	maximumRating += currentRating
	
for i in range(numJudges - numRatings):
	minimumRating -= 3
	maximumRating += 3

minimumRating = minimumRating / numJudges
maximumRating = maximumRating / numJudges

print( str(minimumRating) + " " + str(maximumRating) )
	