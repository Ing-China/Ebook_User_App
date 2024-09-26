class Category {
  final int id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  static List<Category> categories = [
    Category(id: 1, name: "All"),
    Category(id: 2, name: "Non-Fiction"),
    Category(id: 3, name: "Science Fiction"),
    Category(id: 4, name: "Fantasy"),
    Category(id: 5, name: "Mystery"),
    Category(id: 6, name: "Biography"),
    Category(id: 7, name: "History"),
    Category(id: 8, name: "Children's"),
    Category(id: 9, name: "Self-Help"),
    Category(id: 10, name: "Romance"),
  ];
}
