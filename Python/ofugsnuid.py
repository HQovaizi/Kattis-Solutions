'''
 *
 *	Problem: "Reverse"
 *
'''

numIntegers = int(input())

listIntegers = []
for integer in range(numIntegers):
	listIntegers.append(int(input()))

listIntegers.reverse()
print('\n'.join(map(str,listIntegers)))
