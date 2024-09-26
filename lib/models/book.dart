class Book {
  final int id;
  final String name;
  final String authors;
  final String rating;
  final String imageUrl;
  final bool isRecommended;
  final bool isTrending;
  final String languageType;
  final String pages;
  final String description;
  final String pdfPath;
  final int categoryId;
  final bool isBookMark;

  Book({
    required this.id,
    required this.name,
    required this.authors,
    required this.rating,
    required this.imageUrl,
    required this.isRecommended,
    required this.isTrending,
    required this.languageType,
    required this.pages,
    required this.description,
    required this.pdfPath,
    required this.categoryId,
    required this.isBookMark,
  });

  static List<Book> books = [
    Book(
      id: 1,
      name: "The Great Gatsby",
      authors: "F. Scott Fitzgerald",
      rating: "4.4",
      imageUrl:
          "https://imgproxy.pdfroom.com/LMjmmmHJWJ5lGSEoBuL48bNRwKsDZnRm6AwEt0tKu9c/rs:auto:200:276:0/g:no/MEsybGs0WTBnYXAucG5n.jpg",
      isRecommended: true,
      isTrending: false,
      languageType: "English",
      pages: "180",
      description: "A book description is a brief",
      pdfPath:
          "https://www.jica.go.jp/Resource/project/ghana/0604654/pdf/Module_6_main_content.pdf",
      categoryId: 1,
      isBookMark: true,
    ),
    Book(
      id: 2,
      name: "To Kill a Mockingbird",
      authors: "Harper Lee",
      rating: "4.8",
      imageUrl:
          "https://imgproxy.pdfroom.com/8_KBU3SG2wtEiHm9WqeVOoBBGD8xOLTGxwzeIDrC1jk/rs:auto:200:276:0/g:no/MEsybGtxMFpnYXAucG5n.jpg",
      isRecommended: true,
      isTrending: false,
      languageType: "English",
      pages: "281",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://americanenglish.state.gov/files/ae/resource_files/lesson_planning_101-pre-recording_0.pdf",
      categoryId: 2,
      isBookMark: true,
    ),
    Book(
      id: 3,
      name: "1984",
      authors: "George Orwell",
      rating: "4.7",
      imageUrl:
          "https://imgproxy.pdfroom.com/OL40Zh1IF-AgXRo1-LcM1itzs8Jnm47uMehmt7Hc_vU/rs:auto:200:276:0/g:no/a001clllTloyRTMucG5n.jpg",
      isRecommended: true,
      isTrending: false,
      languageType: "English",
      pages: "328",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 3,
      isBookMark: true,
    ),
    Book(
      id: 4,
      name: "Pride and Prejudice",
      authors: "Jane Austen",
      rating: "4.6",
      imageUrl:
          "https://images-us.bookshop.org/ingram/9780593446096.jpg?height=500&v=v2-96e6edde3fd27510dee0c0dd00000000",
      isRecommended: true,
      isTrending: false,
      languageType: "English",
      pages: "279",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 3,
      isBookMark: true,
    ),
    Book(
      id: 5,
      name: "The Catcher in the Rye",
      authors: "J.D. Salinger",
      rating: "4.3",
      imageUrl:
          "https://images-us.bookshop.org/ingram/9781541606326.jpg?height=500&v=v2-1a57ebc1935bf52e94e51d9683428a59",
      isRecommended: true,
      isTrending: false,
      languageType: "English",
      pages: "277",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 3,
      isBookMark: true,
    ),
    Book(
      id: 6,
      name: "The Great Gatsby",
      authors: "F. Scott Fitzgerald",
      rating: "4.4",
      imageUrl:
          "https://images-us.bookshop.org/ingram/9798886741940.jpg?height=500&v=v2-84fe661035b6c8a5fa2e81e32bb272e9",
      isRecommended: false,
      isTrending: true,
      languageType: "English",
      pages: "180",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 1,
      isBookMark: true,
    ),
    Book(
      id: 7,
      name: "To Kill a Mockingbird",
      authors: "Harper Lee",
      rating: "4.8",
      imageUrl:
          "https://images-us.bookshop.org/ingram/9780385550369.jpg?height=500&v=v2-ee78a15a9987be84e2e93a510c896e42",
      isRecommended: false,
      isTrending: true,
      languageType: "English",
      pages: "281",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 1,
      isBookMark: true,
    ),
    Book(
      id: 8,
      name: "1984",
      authors: "George Orwell",
      rating: "4.7",
      imageUrl:
          "https://images-us.bookshop.org/ingram/9781639733538.jpg?height=500&v=v2-b548b0a1fdf0c070e6d94c110f168c2e",
      isRecommended: false,
      isTrending: true,
      languageType: "English",
      pages: "328",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 1,
      isBookMark: true,
    ),
    Book(
      id: 9,
      name: "Pride and Prejudice",
      authors: "Jane Austen",
      rating: "4.6",
      imageUrl:
          "https://images-us.bookshop.org/ingram/9780593809860.jpg?height=500&v=v2-6a9e2579986085bb66e22c46fab8da5e",
      isRecommended: false,
      isTrending: true,
      languageType: "English",
      pages: "279",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 1,
      isBookMark: true,
    ),
    Book(
      id: 10,
      name: "The Catcher in the Rye",
      authors: "J.D. Salinger",
      rating: "4.3",
      imageUrl:
          "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
      isRecommended: false,
      isTrending: true,
      languageType: "English",
      pages: "277",
      description:
          "A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.A book description is a brief overview of the plot, main characters, and themes of the story. It's an important tool that helps in book promotion and sales. Many times, book descriptions also include information about the author. This helps to build credibility and establish a connection with the reader.",
      pdfPath:
          "https://www.igntu.ac.in/eContent/BEd-02Sem-DrRameshM-Teaching%20of%20Biological%20Science.pdf",
      categoryId: 1,
      isBookMark: true,
    ),
  ];

  static Book? getBookById(int id) {
    final bookList = books.where((book) => book.id == id).toList();
    if (bookList.isNotEmpty) {
      return bookList.first;
    }
    return null;
  }

  static List<Book> get recommendedBooks {
    return books.where((book) => book.isRecommended).toList();
  }

  static List<Book> get trendingBooks {
    return books.where((book) => book.isTrending).toList();
  }

  static List<Book> getBooksByCategory(int categoryId) {
    // If the first category is selected, return all books
    if (categoryId == 1) {
      return List.from(
          books); // Return a fresh copy of all books to avoid references
    }

    // Otherwise, filter the books by the given categoryId
    return books.where((book) => book.categoryId == categoryId).toList();
  }

  static List<Book> get bookMarks {
    return books.where((book) => book.isBookMark).toList();
  }
}
