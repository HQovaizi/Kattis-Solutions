'''
 *
 *	Problem: "Help a PhD candidate out!"
 *
'''

'''-----main-----'''
cases = int(input())

for i in range(cases):
	case = input()
	
	if "+" in case:
		operands = case.split("+")
		a, b = int(operands[0]), int(operands[1])
		result = a + b
		print(result)
	elif "=" in case:
		print("skipped")