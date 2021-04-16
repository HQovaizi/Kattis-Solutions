'''
 *
 *	Problem: "Jumbo Javelin"
 *
'''

numJavelins = int(input())

total = 0
for length in range(numJavelins):
	total += int(input())
	
fusionLoss = numJavelins - 1
total -= fusionLoss

print(total)