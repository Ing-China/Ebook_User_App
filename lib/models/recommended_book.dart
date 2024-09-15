class RecommendedBook {
  final int id;
  final String name;
  final String authors;
  final String rating;
  final String imageUrl;

  RecommendedBook({
    required this.id,
    required this.name,
    required this.authors,
    required this.rating,
    required this.imageUrl,
  });
}

final List<RecommendedBook> recommendedBook = [
  RecommendedBook(
    id: 1,
    name: "The Great Gatsby",
    authors: "F. Scott Fitzgerald",
    rating: "4.4",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9798886741940.jpg?height=500&v=v2-84fe661035b6c8a5fa2e81e32bb272e9",
  ),
  RecommendedBook(
    id: 2,
    name: "To Kill a Mockingbird",
    authors: "Harper Lee",
    rating: "4.8",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9780385550369.jpg?height=500&v=v2-ee78a15a9987be84e2e93a510c896e42",
  ),
  RecommendedBook(
    id: 3,
    name: "1984",
    authors: "George Orwell",
    rating: "4.7",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9781639733538.jpg?height=500&v=v2-b548b0a1fdf0c070e6d94c110f168c2e",
  ),
  RecommendedBook(
    id: 4,
    name: "Pride and Prejudice",
    authors: "Jane Austen",
    rating: "4.6",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9780593809860.jpg?height=500&v=v2-6a9e2579986085bb66e22c46fab8da5e",
  ),
  RecommendedBook(
    id: 5,
    name: "The Catcher in the Rye",
    authors: "J.D. Salinger",
    rating: "4.3",
    imageUrl:
        "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
  ),
];
