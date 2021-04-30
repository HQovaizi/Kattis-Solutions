'''
 *
 *	Problem: "Homework"
 *
'''

homeworkProblems = input().split(";")

totalProblems = 0
for problemSet in range(len(homeworkProblems)):
	problems = homeworkProblems[problemSet]
	if ("-" in problems):
		range = problems.split("-")
		numberProblems = int(range[1]) - int(range[0]) + 1 # +1 since range inclusivve
	else:
		numberProblems = 1	
	totalProblems += numberProblems
	
print(totalProblems)