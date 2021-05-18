'''
 *
 *	Problem:		Booking a Room
 *	Problem ID:	bookingaroom
 *	url:				https://open.kattis.com/problems/bookingaroom
 *	Solution:		Python
 *
'''

numberRooms, numberBooked = map(int, input().split(" "))

if (numberRooms == numberBooked) :
	print("too late")
else:
	bookedRooms = []
	for i in range(numberBooked):
		bookedRooms.append( int(input()) )
		
	for currRoom in range(1, (numberRooms + 1) ):
		if (currRoom not in bookedRooms):
			print(currRoom)
			break
