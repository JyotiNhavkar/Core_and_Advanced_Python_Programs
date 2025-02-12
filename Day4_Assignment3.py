# To check if a number is positive, negative, or zero

# Input a number
num = int(input("Enter a number: "))

# Check the number using nested if-else
if num >= 0:
    if num == 0:
        print("The number is Zero.")
    else:
        print("The number is Positive.")
else:
    print("The number is Negative.")


'''Output:
Enter a number: 67
The number is Positive.

Enter a number: -7
The number is Negative.

Enter a number: 0
The number is Zero.'''
