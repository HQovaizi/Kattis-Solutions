'''
 *
 *	Problem: "Speeding"
 *
'''

numCases = int(input())

timeSpeed = input().split()
prevTime = int(timeSpeed[0])
prevSpeed = int(timeSpeed[1])

maxSpeed = 0
for case in range( (numCases - 1) ):
	timeSpeed = input().split(" ")
	currTime = int(timeSpeed[0])
	currSpeed = int(timeSpeed[1])
	
	tempMaxSpeed = (currSpeed - prevSpeed) // (currTime - prevTime)
	if ( (tempMaxSpeed) > maxSpeed ):
		maxSpeed = tempMaxSpeed
	
	prevTime = currTime
	prevSpeed = currSpeed
	
print(maxSpeed)