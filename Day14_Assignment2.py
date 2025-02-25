#  Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer

def get_integer():
    try:
        return int(input("Enter an integer: "))
    except ValueError:
        print("Error: Invalid input! Please enter a valid integer.")
        return get_integer()

number = get_integer()
print(f"You entered: {number}")

'''Output:
Enter an integer: 46.90
Error: Invalid input! Please enter a valid integer.
Enter an integer: 78
You entered: 78'''
