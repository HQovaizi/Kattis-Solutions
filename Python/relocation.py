'''
 *
 *	Problem: "Relocation"
 *
'''

numCompanies, numRequests = map(int, input().split(" "))
locations = [int(location) for location in input().split(" ")]

for request in range(numRequests):
	typeRequest, company, param = map(int, input().split(" "))
	
	if (typeRequest == 1):
		locations[company - 1] = param
	else:
		distance = abs(locations[company - 1] - locations[param - 1])
		print(distance)