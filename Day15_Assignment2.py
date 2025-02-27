# Write a function in Python to count and display the total number of words in a text file “ABC.txt”

with open("D:\\Textfiles\\ABC.txt", "r") as file:
            text = file.read()
            # Splitting text into words
            words = text.split()
            print("Total number of words:", len(words))

            
'''Output:
Total number of words: 24 '''
