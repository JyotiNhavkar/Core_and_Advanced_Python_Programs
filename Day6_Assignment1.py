# Write a python program to reverse a number using a while loop.

# Taking input from user
num = int(input("Enter a number: "))

# Initialize  the reversed number to 0
rev = 0

# While loop
while num != 0:  
    rev = rev * 10 + num % 10  
    num //= 10  

# Displaying the reversed number
print("Reversed number:", rev)

'''Output:
Enter a number: 180902
Reversed number: 209081 '''
