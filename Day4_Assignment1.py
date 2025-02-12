# To Check the year is leap year or Not

# Input year from the user
Year = int(input("Enter a year: "))

# Check if the year is divisible by 4 and either not divisible by 100 or divisible by 400
if (Year % 4 == 0 and (Year % 100 != 0 or Year % 400 == 0)):
    print("Year is a leap year.")
else:
    print("Year is not a leap year.")

    
'''Output:
Enter a year: 1890
Year is not a leap year.'''
