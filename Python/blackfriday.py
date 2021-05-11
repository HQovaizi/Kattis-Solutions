'''
 *
 *	Problem:		Black Friday
 *	Problem ID:	blackfriday
 *	url:				https://open.kattis.com/problems/blackfriday
 *	Solution:		Python
 *
'''

groupSize = int(input())
outcomes = [0 for i in range (6)]

diceRolls = [int(roll) for roll in input().split(" ")]
for roll in diceRolls:
  index = roll - 1
  outcomes[index] += 1

maxOutcome = -1
for i in range(6):
  if ( outcomes[i] == 1 ):
    maxOutcome = i + 1

if (maxOutcome == -1):
  print("none")
else:
  index = diceRolls.index(maxOutcome) + 1
  print(index)