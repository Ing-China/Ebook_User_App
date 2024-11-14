class Authorz {
  String? id;
  String? name;
  String? age;
  String? bookCount;
  String? bio;
  bool? isActive;
  String? image;
  BookType? bookType;

  Authorz({
    this.id,
    this.name,
    this.age,
    this.bookCount,
    this.bio,
    this.isActive,
    this.image,
    this.bookType,
  });
  static List<BookType> fakeBookTypes = [
    BookType(id: '1', name: 'Fiction'),
  ];

  static List<Authorz> fakeAuthors = [
    Authorz(
      id: '1',
      name: 'China',
      age: '20',
      bookCount: '100',
      bio:
          'ringing ideas to life with sleek, high-performance apps. Passionate about clean code, elegant design, and delivering seamless user experiences.',
      isActive: true,
      image: 'https://ebook-api-psi.vercel.app/uploads/images/china.JPG',
      bookType: fakeBookTypes.first,
    ),
    Authorz(
        id: '1',
        name: 'China',
        age: '20',
        bookCount: '100',
        bio:
            'ringing ideas to life with sleek, high-performance apps. Passionate about clean code, elegant design, and delivering seamless user experiences.',
        isActive: true,
        image: 'https://ebook-api-psi.vercel.app/uploads/images/china.JPG'),
    Authorz(
        id: '1',
        name: 'China',
        age: '20',
        bookCount: '100',
        bio:
            'ringing ideas to life with sleek, high-performance apps. Passionate about clean code, elegant design, and delivering seamless user experiences.',
        isActive: true,
        image: 'https://ebook-api-psi.vercel.app/uploads/images/china.JPG'),
    Authorz(
        id: '1',
        name: 'China',
        age: '20',
        bookCount: '100',
        bio:
            'ringing ideas to life with sleek, high-performance apps. Passionate about clean code, elegant design, and delivering seamless user experiences.',
        isActive: true,
        image: 'https://ebook-api-psi.vercel.app/uploads/images/china.JPG'),
    Authorz(
        id: '1',
        name: 'China',
        age: '20',
        bookCount: '100',
        bio:
            'ringing ideas to life with sleek, high-performance apps. Passionate about clean code, elegant design, and delivering seamless user experiences.',
        isActive: true,
        image: 'https://ebook-api-psi.vercel.app/uploads/images/china.JPG'),
    Authorz(
        id: '1',
        name: 'China',
        age: '20',
        bookCount: '100',
        bio:
            'ringing ideas to life with sleek, high-performance apps. Passionate about clean code, elegant design, and delivering seamless user experiences.',
        isActive: true,
        image: 'https://ebook-api-psi.vercel.app/uploads/images/china.JPG'),
    Authorz(
        id: '1',
        name: 'China',
        age: '20',
        bookCount: '100',
        bio:
            'ringing ideas to life with sleek, high-performance apps. Passionate about clean code, elegant design, and delivering seamless user experiences.',
        isActive: true,
        image: 'https://ebook-api-psi.vercel.app/uploads/images/china.JPG'),
  ];

  Authorz.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    age = json['age'];
    bookCount = json['bookCount'];
    bio = json['bio'];
    isActive = json['isActive'];
    image = json['image'];
    bookType = json['bookType'] != null
        ? BookType.fromJson(json['bookType'] as Map<String, dynamic>)
        : null;
  }
}

class BookType {
  String? id;
  String? name;

  BookType({this.id, this.name});

  BookType.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
  }
}
