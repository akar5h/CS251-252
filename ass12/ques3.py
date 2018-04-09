import string

inp = input('Enter 3 \",\" seprated inputs ').split(',')
if len(inp) != 3:
	print('Invalid number of arguments')
	quit()
	
if inp[2] not in "aeiouAEIUO":
	print("Invalid 3rd inp")
	quit()

str = input('Enter the string')
consonants=[y for y in string.ascii_lowercase if y not in "aeiou"]
uppercase=[y for y in string.ascii_lowercase if y not in "AEIOU"]

output=""

for x in str:
	if x in consonants+uppercase :
		output = output + x + inp[2]*int(inp[1]) + x*int(inp[0] -1)

	else:
		output = output + x
print (output) 