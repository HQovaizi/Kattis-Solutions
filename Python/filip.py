'''
 *
 *	Problem:		Filip
 *	Problem ID:	filip
 *	url:				https://open.kattis.com/problems/filip
 *	Solution:		Python
 *
'''

numA, numB = map(int, input()[::-1].split(" "))
print(numA) if (numA > numB) else print(numB)