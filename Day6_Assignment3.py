# Write a python program finding the factorial of a given number using a while loop.

# taking the input from user
num = int(input("Enter a number: "))  
fact = 1  
while num > 1:  
    fact *= num  
    num -= 1  

# Displayin the result
print("Factorial:", fact)

'''Output:
Enter a number: 4
Factorial: 24'''


