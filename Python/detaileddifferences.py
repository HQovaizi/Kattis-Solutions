'''
 *
 *	Problem:		Detailed Differences
 *	Problem ID:	detaileddifferences
 *	url:				https://open.kattis.com/problems/detaileddifferences
 *	Solution:		Python
 *
'''

numCases = int(input())

for i in range(numCases):
	caseA = input()
	caseB = input()

	differences = ""
	for i in range(len(caseA)):
		if (caseA[i] == caseB[i]):
			differences += "."
		else:
			differences += "*"
	differences += "\n"

	print(caseA)
	print(caseB)
	print(differences)