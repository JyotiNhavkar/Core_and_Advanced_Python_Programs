#  Write a function in python to read the content from a text file "ABC.txt" line by line and display the same on screen.
#  Read function applying on ABC.txt file
with open("D:\\Textfiles\\ABC.txt", "r") as file:
    for line in file:
        print(line.strip())


        
'''Output:
hii I am Jyoti Nhavkar
I am from pune
I have currently persuing the WEPP Course in Anudip Foundation
this course Doner Is Capegemine'''
