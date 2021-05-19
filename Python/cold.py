'''
 *
 *	Problem:		Cold-puter Science
 *	Problem ID:	cold
 *	url:				https://open.kattis.com/problems/cold
 *	Solution:		Python
 *
'''

numTemperatures = int(input())
temperatures = map(int, input().split(" "))

lessThanZero = 0
for temperature in temperatures:
	if (temperature < 0):
		lessThanZero += 1
		
print(lessThanZero)