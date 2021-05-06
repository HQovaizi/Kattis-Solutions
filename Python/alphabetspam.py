'''
 *
 *	Problem:		Alphabet Spam
 *	Problem ID:	alphabetspam
 *	url:				https://open.kattis.com/problems/alphabetspam
 *	Solution:		Python
 *
'''

import re

spam = input()
spamLength = len(spam)


whitespaceRatio = spam.count("_") / spamLength

lowercasePattern = '[a-z]'
lowercaseRatio = len(re.findall(lowercasePattern, spam)) / spamLength

uppercasePattern = '[A-Z]'
uppercaseRatio =  len(re.findall(uppercasePattern, spam)) / spamLength

symbolsPattern = '[^a-zA-Z_]'
symbolsRatio =  len(re.findall(symbolsPattern, spam)) / spamLength

print(whitespaceRatio)
print(lowercaseRatio)
print(uppercaseRatio)
print(symbolsRatio)