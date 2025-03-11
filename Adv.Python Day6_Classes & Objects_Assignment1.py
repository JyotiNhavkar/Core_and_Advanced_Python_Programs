# Write a Python program to model a Library system.
# Decleared the Library Class
class Library:
    total_books = 0
    all_books = []

# Decleared Instance Attribute in the constructor 
    def __init__(self, name):
        self.name = name
        self.borrowed_books = []
# Instance methods
    def borrow_book(self, book):
        if book in Library.all_books:
            self.borrowed_books.append(book)
            Library.all_books.remove(book)
            Library.total_books -= 1
            print(f"{self.name} borrowed {book}.")
        else:
            print("Book not available.")

    def return_book(self, book):
        if book in self.borrowed_books:
            self.borrowed_books.remove(book)
            Library.all_books.append(book)
            Library.total_books += 1
            print(f"{self.name} returned {book}.")

    @classmethod
    def view_library_books(cls):
        print(f"Total books: {cls.total_books}")
        print("Books available:", cls.all_books)


Library.all_books = ["Python Programming", "Data Science", "Machine Learning" ,"PowerBI"]
Library.total_books = len(Library.all_books)

user = Library("Jyoti")
Library.view_library_books()
user.borrow_book("PowerBI")
Library.view_library_books()
user.return_book("PowerBI")
Library.view_library_books()


'''Output:
Total books: 4
Books available: ['Python Programming', 'Data Science', 'Machine Learning', 'PowerBI']
Jyoti borrowed PowerBI.
Total books: 3
Books available: ['Python Programming', 'Data Science', 'Machine Learning']
Jyoti returned PowerBI.
Total books: 4
Books available: ['Python Programming', 'Data Science', 'Machine Learning', 'PowerBI']'''

