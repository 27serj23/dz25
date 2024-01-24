#-------------------------задача-----------------------------------------------
# Создать класс "Book" с атрибутами "title", "author", "genre" и
# методами для чтения и записи данных всех трех атрибутов, а также реализовать валидацию для атрибута "genre":
# должно быть строкой
# не должно быть пустой строкой и
# должно содержать наименование только из указанного списка [“фантастика”, “драма”, “проза”]

class Book:
    def __init__(self, title, author, genre):
        self.set_title(title)
        self.set_author(author)
        self.set_genre(genre)

    def get_title(self):
        return self._title

    def set_title(self, title):
        if isinstance(title, str):
            self._title = title
        else:
            raise ValueError("Заголовок должен быть строкой.")

    def get_author(self):
        return self._author

    def set_author(self, author):
        if isinstance(author, str):
            self._author = author
        else:
            raise ValueError("Автор должен быть строкой.")

    def get_genre(self):
        return self._genre

    def set_genre(self, genre):
        valid_genres = ["фантастика", "драма", "проза"]
        if isinstance(genre, str) and genre.strip() != "" and genre in valid_genres:
            self._genre = genre
        else:
            raise ValueError("Недопустимый жанр. Допустимые значения: фантастика, драма, проза.")

# Пример использования класса
try:
    book1 = Book("Название книги", "Автор книги", "драма")
    print("Title:", book1.get_title())
    print("Author:", book1.get_author())
    print("Genre:", book1.get_genre())
except ValueError as e:
    print(f"Ошибка при создании книги: {e}")

try:
    # Попробуем создать книгу с недопустимым жанром
    book2 = Book("Название книги", "Автор книги", "поэзия")
except ValueError as e:
    print(f"Ошибка при создании книги: {e}")











