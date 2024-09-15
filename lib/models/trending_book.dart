class Book {
  final int id;
  final String name;
  final String authors;
  final String rating;
  final String imageUrl;

  Book({
    required this.id,
    required this.name,
    required this.authors,
    required this.rating,
    required this.imageUrl,
  });
}

final List<Book> trendingBooks = [
  Book(
    id: 1,
    name: "The Great Gatsby",
    authors: "F. Scott Fitzgerald",
    rating: "4.4",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9780593734223.jpg?height=500&v=v2-56e1e38451424d2356aaffb019246ed2",
  ),
  Book(
    id: 2,
    name: "To Kill a Mockingbird",
    authors: "Harper Lee",
    rating: "4.8",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9781668000267.jpg?height=500&v=v2-f4dc65bc1c3ce9d5f050bdc9ed0e3a6b",
  ),
  Book(
    id: 3,
    name: "1984",
    authors: "George Orwell",
    rating: "4.7",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9780593798607.jpg?height=500&v=v2-eca9c34f10fdfe8e52d2fe16301bb168",
  ),
  Book(
    id: 4,
    name: "Pride and Prejudice",
    authors: "Jane Austen",
    rating: "4.6",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9780593446096.jpg?height=500&v=v2-96e6edde3fd27510dee0c0dd00000000",
  ),
  Book(
    id: 5,
    name: "The Catcher in the Rye",
    authors: "J.D. Salinger",
    rating: "4.3",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9781541606326.jpg?height=500&v=v2-1a57ebc1935bf52e94e51d9683428a59",
  ),
];

final List<Book> recommendedBook = [
  Book(
    id: 1,
    name: "The Great Gatsby",
    authors: "F. Scott Fitzgerald",
    rating: "4.4",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9798886741940.jpg?height=500&v=v2-84fe661035b6c8a5fa2e81e32bb272e9",
  ),
  Book(
    id: 2,
    name: "To Kill a Mockingbird",
    authors: "Harper Lee",
    rating: "4.8",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9780385550369.jpg?height=500&v=v2-ee78a15a9987be84e2e93a510c896e42",
  ),
  Book(
    id: 3,
    name: "1984",
    authors: "George Orwell",
    rating: "4.7",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9781639733538.jpg?height=500&v=v2-b548b0a1fdf0c070e6d94c110f168c2e",
  ),
  Book(
    id: 4,
    name: "Pride and Prejudice",
    authors: "Jane Austen",
    rating: "4.6",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9780593809860.jpg?height=500&v=v2-6a9e2579986085bb66e22c46fab8da5e",
  ),
  Book(
    id: 5,
    name: "The Catcher in the Rye",
    authors: "J.D. Salinger",
    rating: "4.3",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
  ),
];
