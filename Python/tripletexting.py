'''
 *
 *	Problem: "Triple Texting"
 *
'''

#-----produce_word-----#
def produce_word(line):
	wordLength = len(line) / 3
	wordLength = round(wordLength)
	
	a = line[:wordLength]
	b = line[wordLength:(wordLength*2)]
	c = line[(wordLength*2):]
	
	if (a == b): return a
	elif (a == c): return a
	else: return b
	
#-----main-----#
line = input()
output = produce_word(line)
print(output)
