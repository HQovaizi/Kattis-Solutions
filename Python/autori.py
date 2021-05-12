'''
 *
 *	Problem:		Autori
 *	Problem ID:	autori
 *	url:				https://open.kattis.com/problems/autori
 *	Solution:		Python
 *
'''

names = input().split("-")

output = ""
for name in names:
	output += name[0]
	
print(output)