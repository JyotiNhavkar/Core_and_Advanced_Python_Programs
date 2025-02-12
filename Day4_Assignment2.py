# To find the largest among three numbers

# Input three numbers
number1 = int(input("Enter first number: "))
number2 = int(input("Enter second number: "))
number3 = int(input("Enter third number: "))

# Check which number is the largest
if number1 >= number2 and number1 >= number3:
    largest = number1
elif number2 >= number1 and number2 >= number3:
    largest = number2
else:
    largest = number3

# Displaying the result
print("The largest number is:", largest)



'''Output:
Enter first number: 18
Enter second number: 21
Enter third number: 90
The largest number is: 90'''
