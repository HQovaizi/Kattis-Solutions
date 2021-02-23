'''
 *
 *	Problem: "Shattered Cake"
 *
'''

import sys
import math

width = int(input())
numPieces = int(input())

totalArea = 0
for x in range(numPieces):
	
	widthPiece, lengthPiece = (int(dim) for dim in input().split())
	totalArea += widthPiece * lengthPiece
	
length = int(totalArea / width)
print(length)