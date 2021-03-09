'''
 *
 *	Problem: "Cetvrta"
 *
'''

def uniqueElement(x, y, z):
	if (x == y): 
		return z
	elif (x == z):
		return y
	else:
		return x

x1,y1 = map(int, input().split(" "))
x2,y2 = map(int, input().split(" "))
x3,y3 = map(int, input().split(" "))

x4 = uniqueElement(x1,x2,x3)
y4 = uniqueElement(y1,y2,y3)

print("%d %d\n" % (x4, y4))