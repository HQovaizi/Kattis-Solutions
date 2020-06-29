'''
 *
 *	Problem: "Quality-Adjusted Life-Year"
 *	Problem ID: "qaly"
 *	https://open.kattis.com/problems/qaly
 *
 *	Solution: Python
'''

#-----main-----#
result = 0
periods = float( input() )

index = 0
while (index < periods):

	line = input().split()
	quality = float( line[0] )
	years = float( line[1] )
	
	qaly = quality * years
	result += qaly
	
	index += 1
	
print(result)
