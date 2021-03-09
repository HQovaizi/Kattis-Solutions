'''
 *
 *	Problem: "Above Average"
 *
'''

numCases = int(input())

for case in range(numCases):

	grades = input().split(" ")
	numGrades = int(grades[0])
	
	sumGrades = 0
	for index in range(numGrades):
		gradeIndex = index + 1
		grade = int(grades[gradeIndex])
		sumGrades += grade
		
	average = sumGrades / numGrades
	
	aboveAverage = 0
	
	for index in range(numGrades):
		gradeIndex = index + 1
		grade = int(grades[gradeIndex])
		if (grade > average):
			aboveAverage += 1		
	
	percAboveAverage = float(100 * (aboveAverage / numGrades))
	
	formattedResult = float("{:.3f}".format(percAboveAverage))
	print("%.3f%%" % (percAboveAverage))