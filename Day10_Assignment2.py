# Write a Python program to get the largest and smallest number from a list without built in functions.

#List
L2 = [3, 1, 7, 6, 9, 8]

smallest = largest = L2[0]

# For loop
for num in L2:
    if num > largest:
        largest = num
    if num < smallest:
        smallest = num
        
# Displaying the results
print("Smallest number:", smallest)
print("Largest number:", largest)


'''Output:
Smallest number: 1
Largest number: 9  '''
