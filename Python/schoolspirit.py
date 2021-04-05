'''
 *
 *	Problem: "School Spirit"
 *
'''

'''-----sumScores-----'''
def sumScores(scores):
	sum = 0
	for i in range(len(scores)):
		sum += scores[i] * ((4/5) ** i)
	sum = 1/5 * sum
	return sum

'''-----main-----'''
numStudents = int(input())
scores = []

for student in range(numStudents):
	score = int(input())
	scores.append(score)
groupScores = sumScores(scores)

avgScores = 0
for i in range(numStudents):
	avgScores += sumScores(scores[:i]+scores[i+1:])
avgScores = avgScores / numStudents

print(groupScores)
print(avgScores)