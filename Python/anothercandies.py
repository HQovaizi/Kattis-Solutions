'''
 *
 *	Problem:		Another Candies
 *	Problem ID:	anothercandies
 *	url:				https://open.kattis.com/problems/anothercandies
 *	Solution:		Python
 *
'''

numCases = int(input())

for i in range(numCases):
  newLine = input()
  numChildren = int(input())

  totalCandies = 0
  for j in range(numChildren):
    numCandies = int(input()) % numChildren
    totalCandies += numCandies

  if ( (totalCandies % numChildren) == 0 ):
    print("YES")
  else:
    print("NO")