# Write a python program to check whether a number is palindrome or not?

# Taking input from user
num = input("Enter a number: ")

# Reverse the number using a for loop
rev = ""
for digit in num:
    rev = digit + rev

# Check if the original number and reversed number are the same
if num == rev:
    print("The number is a palindrome.")
else:
    print("The number is not a palindrome.")

'''Output:
Enter a number: 19233291
The number is a palindrome.

Enter a number: 4673
The number is not a palindrome.'''

