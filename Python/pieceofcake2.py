'''
 *
 *	Problem: "Piece of Cake!"
 *
'''

import sys
import math

THICKNESS = 4

line = input().split()

length = float( line[0] )
horizDist = float( line[1] )
vertDist = float( line[2] )

volPieceA = horizDist * vertDist * THICKNESS;
volPieceB = horizDist * (length - vertDist) * THICKNESS;
volPieceC = (length - horizDist) * vertDist * THICKNESS;
volPieceD = (length - horizDist) * (length - vertDist) * THICKNESS;
		
maxVolume = max(volPieceA, volPieceB, volPieceC, volPieceD)
print(round(maxVolume))