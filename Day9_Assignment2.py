# Write a Python program to remove duplicate characters of a given string.

# User defined function 
string = "String and String Function"
p = ""
for char in string:
	if char not in p:
		p = p+char
print(p)

'''output:
String adFuco'''


