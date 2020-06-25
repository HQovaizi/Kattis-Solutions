'''
 *
 *	Problem: "ABC"
 *
'''

inputNumbers = input().split()
inputNumbers = list( map(int, inputNumbers) )
inputNumbers.sort()

inputOrder = input()

dict = { "A": inputNumbers[0], "B": inputNumbers[1], "C": inputNumbers[2]}

print(dict[inputOrder[0]], dict[inputOrder[1]], dict[inputOrder[2]])