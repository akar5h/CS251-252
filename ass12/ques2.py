import string
inp= input("enter your string")
consonants=[y for y in string.ascii_lowercase if y not in "aeiou"]
uppercase=[y for y in string.ascii_uppercase if y not in "AEIOU"]
output=""
for x in inp: 
    if x in consonants+uppercase :
        output = output+x+'o'+x
    else :
        output = output+x
print (output)
