'''
 *
 *	Problem: "Poker Hand"
 *
'''

import sys

line = sys.stdin.readline()
cards = line.split()

dict = {}
for card in cards:
	rank = card[0:1]
	#print(rank)
	
	if rank in dict.keys():
		dict[rank] = dict[rank] + 1; 
	else:
		dict[rank] = 1; 
		
max = 1;
for key in dict.keys():
	if (dict[key] > max):
		max = dict[key]

print(max)