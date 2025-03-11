# Movie Library Create a class MovieLibrary that manages a collection of movies
# Declared the Movie Class
class MovieLibrary:
    available_movies = []

    def __init__(self, member_name):
        self.member_name = member_name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        if movie in MovieLibrary.available_movies:
            self.borrowed_movies.append(movie)
            MovieLibrary.available_movies.remove(movie)
            print(f"{self.member_name} borrowed {movie}.")
        else:
            print("Movie not available.")

    def return_movie(self, movie):
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)
            MovieLibrary.available_movies.append(movie)
            print(f"{self.member_name} returned {movie}.")

    def view_borrowed_movies(self):
        print(f"{self.member_name} has borrowed: {self.borrowed_movies}")

# Examples
MovieLibrary.available_movies = ["Chhava", "Pavankhind", "Tanhaji"]
# Create Objects
user = MovieLibrary("Asmita")
user.borrow_movie("Tanhaji")
user.view_borrowed_movies()
user.return_movie("Tanhaji")
user.view_borrowed_movies()

'''Output:
Asmita borrowed Tanhaji.
Asmita has borrowed: ['Tanhaji']
Asmita returned Tanhaji.
Asmita has borrowed: [] '''

