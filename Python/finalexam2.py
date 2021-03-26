'''
 *
 *	Problem: "Final Exam"
 *
'''

numQ = int(input())

result = 0
prev = input()
for i in range(1, numQ):
	curr = input()
	if (prev == curr):
		result += 1
	prev = curr
print(result)