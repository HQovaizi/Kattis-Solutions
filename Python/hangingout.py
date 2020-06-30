'''
 *
 *	Problem: "Hanging Out on the Terrace"
 *	Problem ID: "hangingout"
 *	https://open.kattis.com/problems/hangingout
 *
 *	Solution: Python
'''

#-----number_prohibited-----#
def number_prohibited(limit, cases):
	curr = 0
	prohibited = 0
	
	for currCase in range(cases):
		line = input().split()
		action = line[0]
		number = int(line[1])
		
		if ( action == "enter" ):
		
			if (number + curr <= limit):
				curr += number
			else:
				prohibited += 1
				
		elif ( action == "leave" ):
			curr -= number
			
	return prohibited

#-----main-----#
line = input().split()
limit = int(line[0])
cases = int(line[1])

output = number_prohibited(limit, cases)
print(output)
