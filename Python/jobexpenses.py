'''
 *
 *	Problem: "Job Expenses"
 *
'''

numReciepts = int(input())
reciepts = input().split()
recieptsInt = [int(reciept) for reciept in reciepts]

expenses = 0
for receipt in recieptsInt:
	if (receipt < 0):
		expenses += abs(receipt)
print(expenses)
	