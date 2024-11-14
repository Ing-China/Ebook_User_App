// import 'dart:math';

// class Bookz {
//   final String id;
//   final String name;
//   final String ratting;
//   final String language;
//   final String pages;
//   final String description;
//   final String authorId;
//   final String authorName;
//   final String bookTypeId;
//   final String bookTypeName;
//   final String image;
//   final String pdf;
//   final bool isActive;
//   final bool isFavorite;
//   final bool isRecommended;
//   final bool isTrending;

//   Bookz({
//     required this.id,
//     required this.name,
//     required this.ratting,
//     required this.language,
//     required this.pages,
//     required this.description,
//     required this.authorId,
//     required this.authorName,
//     required this.bookTypeId,
//     required this.bookTypeName,
//     required this.image,
//     required this.pdf,
//     required this.isActive,
//     required this.isFavorite,
//     required this.isRecommended,
//     required this.isTrending,
//   });

//   // Factory method to create a Book instance from JSON
//   factory Bookz.fromJson(Map<String, dynamic> json) {
//     return Bookz(
//       id: json['_id'],
//       name: json['name'],
//       ratting: json['ratting'],
//       language: json['language'],
//       pages: json['pages'],
//       description: json['description'],
//       authorId: json['author']['_id'],
//       authorName: json['author']['name'],
//       bookTypeId: json['bookType']['_id'],
//       bookTypeName: json['bookType']['name'],
//       image: json['image'],
//       pdf: json['pdf'],
//       isActive: json['isActive'],
//       isFavorite: json['isFavorite'],
//       isRecommended: json['isRecommended'],
//       isTrending: json['isTrending'],
//     );
//   }

//   static List<Bookz> fakeBookz = [
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//     Bookz(
//       id: '1',
//       name: "China",
//       ratting: '5',
//       language: 'English',
//       pages: '100',
//       description: 'Writing Book',
//       authorId: '1',
//       authorName: 'China',
//       bookTypeId: '1',
//       bookTypeName: 'China',
//       image:
//           "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
//       pdf: 'pdf',
//       isActive: true,
//       isFavorite: true,
//       isRecommended: true,
//       isTrending: true,
//     ),
//   ];
// }

import 'package:bro_s_journey/models/authorz.dart';

class Bookz {
  String? id;
  String? name;
  String? rating;
  String? language;
  String? pages;
  String? description;
  Authorz? author;
  BookType? bookType;
  String? image;
  String? pdf;
  bool? isActive;
  bool? isFavorite;
  bool? isRecommended;
  bool? isTrending;

  Bookz({
    this.id,
    this.name,
    this.rating,
    this.language,
    this.pages,
    this.description,
    this.author,
    this.bookType,
    this.image,
    this.pdf,
    this.isActive,
    this.isFavorite,
    this.isRecommended,
    this.isTrending,
  });

  Bookz.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    rating = json['ratting'];
    language = json['language'];
    pages = json['pages'];
    description = json['description'];
    author = json['author'] != null ? Authorz.fromJson(json['author']) : null;
    bookType =
        json['bookType'] != null ? BookType.fromJson(json['bookType']) : null;
    image = json['image'];
    pdf = json['pdf'];
    isActive = json['isActive'];
    isFavorite = json['isFavorite'];
    isRecommended = json['isRecommended'];
    isTrending = json['isTrending'];
  }

  // Sample fake data for Bookz instances
  static List<Bookz> fakeBookz = [
    Bookz(
      id: '1',
      name: 'Rich Dad Poor Dad',
      rating: '5',
      language: 'English',
      pages: '241',
      description:
          'A book about financial wisdom from two different perspectives.',
      author: Authorz(
        id: '1',
        name: 'Robert T. Kiyosaki',
        age: '50',
        bookCount: '5',
        bio: 'An entrepreneur and financial educator.',
        isActive: true,
        image: 'https://example.com/author_image.jpg',
      ),
      bookType: BookType(
        id: '1',
        name: 'Finance',
      ),
      image:
          "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
      pdf: 'https://example.com/book_pdf.pdf',
      isActive: true,
      isFavorite: true,
      isRecommended: true,
      isTrending: true,
    ),
    Bookz(
      id: '1',
      name: 'Rich Dad Poor Dad',
      rating: '5',
      language: 'English',
      pages: '241',
      description:
          'A book about financial wisdom from two different perspectives.',
      author: Authorz(
        id: '1',
        name: 'Robert T. Kiyosaki',
        age: '50',
        bookCount: '5',
        bio: 'An entrepreneur and financial educator.',
        isActive: true,
        image: 'https://example.com/author_image.jpg',
      ),
      bookType: BookType(
        id: '1',
        name: 'Finance',
      ),
      image:
          "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
      pdf: 'https://example.com/book_pdf.pdf',
      isActive: true,
      isFavorite: true,
      isRecommended: true,
      isTrending: true,
    ),
    Bookz(
      id: '1',
      name: 'Rich Dad Poor Dad',
      rating: '5',
      language: 'English',
      pages: '241',
      description:
          'A book about financial wisdom from two different perspectives.',
      author: Authorz(
        id: '1',
        name: 'Robert T. Kiyosaki',
        age: '50',
        bookCount: '5',
        bio: 'An entrepreneur and financial educator.',
        isActive: true,
        image: 'https://example.com/author_image.jpg',
      ),
      bookType: BookType(
        id: '1',
        name: 'Finance',
      ),
      image:
          "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
      pdf: 'https://example.com/book_pdf.pdf',
      isActive: true,
      isFavorite: true,
      isRecommended: true,
      isTrending: true,
    ),
    Bookz(
      id: '1',
      name: 'Rich Dad Poor Dad',
      rating: '5',
      language: 'English',
      pages: '241',
      description:
          'A book about financial wisdom from two different perspectives.',
      author: Authorz(
        id: '1',
        name: 'Robert T. Kiyosaki',
        age: '50',
        bookCount: '5',
        bio: 'An entrepreneur and financial educator.',
        isActive: true,
        image: 'https://example.com/author_image.jpg',
      ),
      bookType: BookType(
        id: '1',
        name: 'Finance',
      ),
      image:
          "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
      pdf: 'https://example.com/book_pdf.pdf',
      isActive: true,
      isFavorite: true,
      isRecommended: true,
      isTrending: true,
    ),
    Bookz(
      id: '1',
      name: 'Rich Dad Poor Dad',
      rating: '5',
      language: 'English',
      pages: '241',
      description:
          'A book about financial wisdom from two different perspectives.',
      author: Authorz(
        id: '1',
        name: 'Robert T. Kiyosaki',
        age: '50',
        bookCount: '5',
        bio: 'An entrepreneur and financial educator.',
        isActive: true,
        image: 'https://example.com/author_image.jpg',
      ),
      bookType: BookType(
        id: '1',
        name: 'Finance',
      ),
      image:
          "https://images-us.bookshop.org/ingram/9781250331045.jpg?height=500&v=v2-101d4a3e1503410db1a7010555e14d0e",
      pdf: 'https://example.com/book_pdf.pdf',
      isActive: true,
      isFavorite: true,
      isRecommended: true,
      isTrending: true,
    ),
  ];
}
