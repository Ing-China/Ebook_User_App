import 'package:bro_s_journey/models/book.dart';
import 'package:flutter/material.dart';

class BookdetailController extends ChangeNotifier {
  Book? _book;
  Book? get book => _book;

  bool isLoading = true;

  Future<void> fetchBookById(int id) async {
    _book = Book.getBookById(id);
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));
    isLoading = false;
    notifyListeners();
  }
}
