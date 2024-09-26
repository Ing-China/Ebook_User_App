import 'package:flutter/material.dart';

class BookmarkController extends ChangeNotifier {
  bool isLoading = true;

  BookmarkController() {
    loadBookMarks();
  }

  Future<void> loadBookMarks() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));
    isLoading = false;
    notifyListeners();
  }

  Future<void> refreshBookmarks() async {
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));
    notifyListeners();
  }
}
