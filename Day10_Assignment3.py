# Write a Python program to find duplicate values from a list and display those.

# List
L3 = [1, 2, 3, 4, 5, 8, 3, 6, 7, 8, 1]  
duplicates = []

# for Loop and if statement 
for num in L3:
    if L3.count(num) > 1 and num not in duplicates:
        duplicates.append(num)

# Displaying the Result
print("Duplicate values:", duplicates)


'''Output:
Duplicate values: [1, 3, 8] '''

