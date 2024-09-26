import 'package:bro_s_journey/models/book.dart';
import 'package:flutter/material.dart';

class BookController extends ChangeNotifier {
  bool isLoading = true;
  List<Book> books = [];

  Future<void> fetchBooksByCategory(int categoryId) async {
    books = Book.getBooksByCategory(categoryId);
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));
    isLoading = false;
    notifyListeners();
  }
}
