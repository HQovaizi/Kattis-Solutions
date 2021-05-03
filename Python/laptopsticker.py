'''
 *
 *	Problem: "Laptop Sticker"
 *
'''

widthComputer, heightComputer, widthSticker, heightSticker = map(int, input().split(" "))

if ( (widthSticker < (widthComputer - 1)) and (heightSticker < (heightComputer - 1)) ):
	print(1)
else:
	print(0)