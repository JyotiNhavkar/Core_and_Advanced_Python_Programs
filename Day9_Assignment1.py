# Write a Python program to Count all letters, digits, and special symbols from the given 
# User define function 
def count_chars_digits_symbols(s):
    chars = digits = symbols = 0
    
    for char in s:
        if char.isalpha():
            chars += 1
        elif char.isdigit():
            digits += 1
        else:
            symbols += 1
    
    return chars, digits, symbols

# Given input string
str = "P@#yn26at^&i5ve"
chars, digits, symbols = count_chars_digits_symbols(str)

# Displaying result
print(f"Chars = {chars}")
print(f"Digits = {digits}")
print(f"Symbols = {symbols}")

'''Output:
Chars = 8
Digits = 3
Symbols = 4'''
