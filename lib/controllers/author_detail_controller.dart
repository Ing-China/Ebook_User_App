import 'package:bro_s_journey/utils/api_client.dart';
import 'package:flutter/material.dart';
import 'package:bro_s_journey/models/authorz.dart';

class AuthorDetailController extends ChangeNotifier {
  Authorz? _author;
  Authorz? get author => _author;

  bool isLoading = true;

  final ApiClient apiClient = ApiClient();

  Future<void> fetchAuthorById(String id) async {
    isLoading = true;
    notifyListeners();
    try {
      final response = await apiClient.getData('authors/$id');
      print('Response: $response');

      _author = Authorz.fromJson(response);

      isLoading = false;
    } catch (e) {
      print('Error fetching author details: $e');
      isLoading = false;
    }
    notifyListeners();
  }
}
