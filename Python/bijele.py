'''
 *
 *	Problem:		Bijele
 *	Problem ID:	bijele
 *	url:				https://open.kattis.com/problems/bijele
 *	Solution:		Python
 *
'''

import itertools

correctAmounts = [1, 1, 2, 2, 2, 8]
pieceAmounts = [ int(pieceAmount) for pieceAmount in input().split(" ")]

difference_object = zip(correctAmounts, pieceAmounts)

difference = []
for i, j, in difference_object:
  difference.append(str(i - j))

print(" ".join(difference))