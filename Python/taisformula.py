'''
 *
 *	Problem: "Tai's formula"
 *
'''

samples = int(input())

time = []
data = []

for i in range(samples):
	t,v = map(float, input().split(" "))
	time.append(t/1000) # maintain time in seconds
	data.append(v)
	
totalArea = 0
for i in range(1, samples):
	totalArea +=  ( ((data[i] + data[i-1]) / 2) * (time[i] - time[i-1]) )
	
totalArea = str(round(totalArea, 7)).rstrip('0').rstrip('.')
print(totalArea)