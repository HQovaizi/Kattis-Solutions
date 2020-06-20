'''
 *
 *	Problem: "Heart Rate"
 *
'''

import sys
import math

cases = input()
cases = int(cases)

index = 1
while( index <= cases):
	line = input().split()
	beats = int( line[0] )
	seconds = float( line[1] )
	
	range = 60 / seconds
	bpm = 60 * beats / seconds
	minABPM = round( (bpm - range), 4)
	maxABPM = round( (bpm + range), 4)
	
	print(minABPM, bpm, maxABPM)
	
	index += 1