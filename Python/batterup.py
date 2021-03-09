'''
 *
 *	Problem: "Batter Up"
 *
'''

numSamples = int(input())
samples = input().split(" ")

totalAtBat = 0
numAtBat = 0

for sample in range(numSamples):
	data = int(samples[sample])
	if (data >= 0):
		totalAtBat += data
		numAtBat += 1

result = totalAtBat / numAtBat
print(result)