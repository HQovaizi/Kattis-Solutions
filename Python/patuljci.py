'''
 *
 *	Problem: "Patuljci"
 *
'''

numbers = []
for number in range(9):
	numbers.append(int(input()))
# print(numbers)

for i in range(len(numbers)):
	j = i + 1
	while (j < len(numbers)):
		test = numbers[0:i] + numbers[i+1:j] + numbers[j+1:]
		j += 1
		if (sum(test) == 100):
			print(*test, sep="\n")
			break