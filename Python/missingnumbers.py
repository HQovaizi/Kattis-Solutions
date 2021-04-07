'''
 *
 *	Problem: "Missing Numbers"
 *
'''

'''-----main-----'''
numbers = int(input())
missing = ""

count = 1
for number in range(numbers):
	recited = int(input())
	
	if (count != recited):
		while (count < recited):
			missing += str(count) + "\n"
			count += 1

	count += 1
	
if (missing == ""):
	print("good job")
else:
	print(missing)