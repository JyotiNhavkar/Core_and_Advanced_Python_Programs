# Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero.

def divide_numbers(numerator, denominator):
    try:
        return numerator / denominator
    except ZeroDivisionError:
        return "Error: Cannot divide by zero."

# Taking Input from user
num = int(input("Enter the numerator: "))
den = int(input("Enter the denominator: "))

# Displaying the result
result = divide_numbers(num, den)
print("Result:", result)

'''Output:
Enter the numerator: 30
Enter the denominator: 0
Result: Error: Cannot divide by zero.'''
