'''
 *
 *	Problem: "Provinces and Gold"
 *
'''

input = input().split()

golds = int(input[0])
silvers = int(input[1])
coppers = int(input[2])

buyingPower = (3 * golds) + (2 * silvers) + (coppers)

result = ""
if (buyingPower >= 8):
	result += "Province" + " or "
elif (buyingPower >= 5):
	result += "Duchy" + " or "
elif (buyingPower >= 2):
	result += "Estate" + " or "

if (buyingPower >= 6):
	result += "Gold"
elif (buyingPower >= 3):
	result += "Silver"
elif (buyingPower >= 0):
	result += "Copper"

print(result)