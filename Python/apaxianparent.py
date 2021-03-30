'''
 *
 *	Problem: "Honour Thy (Apaxian) Parent"
 *
'''

nameY,nameP = map(str, input().split(" "))

if (nameY[-2:] == "ex"):
	result = nameY + nameP
elif (nameY[-1] == "a"):
	result = nameY[0:-1] + "ex" + nameP
elif (nameY[-1] == "e"):
	result = nameY + "x" + nameP
elif ( (nameY[-1] == "i") or (nameY[-1] == "o") or (nameY[-1] == "u") ):
	result = nameY[0:-1] + "ex" + nameP
else:
	result = nameY + "ex" + nameP

print(result)