'''
 *
 *	Problem:		Apaxiaaaaaaaaaaaans!
 *	Problem ID:	apaxiaaans
 *	url:				https://open.kattis.com/problems/apaxiaaans
 *	Solution:		Python
 *
'''

name = input()
output = name[0]

for i in (range(1,len(name))):
	if not(name[i] == name[i-1]):
		output += name[i]
	
print(output)