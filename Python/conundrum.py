'''
 *
 *	Problem:		Cryptographer's Conundrum
 *	Problem ID:	conundrum
 *	url:				https://open.kattis.com/problems/conundrum
 *	Solution:		Python
 *
'''

cipher = input()

firstSlice = cipher[0::3]
numP = firstSlice.count("P")

secondSlice = cipher[1::3]
numE = secondSlice.count("E")

thirdSlice = cipher[2::3]
numR = thirdSlice.count("R")

numDays = len(cipher) - numP - numE - numR
print( numDays )