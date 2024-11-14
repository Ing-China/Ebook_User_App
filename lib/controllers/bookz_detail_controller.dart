import 'package:bro_s_journey/models/bookz.dart';
import 'package:bro_s_journey/utils/api_client.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:flutter/material.dart';

class BookzDetailController extends ChangeNotifier {
  Bookz? _book;
  Bookz? get book => _book;

  bool isLoading = true;

  final ApiClient apiClient = ApiClient();

  Future<void> fecthBookById(String id) async {
    isLoading = true;
    notifyListeners();
    try {
      final response = await apiClient.getData('${AppConstant.BOOK}/$id');
      print('Response: $response');

      _book = Bookz.fromJson(response);

      isLoading = false;
    } catch (e) {
      print('Error fetching book details: $e');
      isLoading = false;
    }
    notifyListeners();
  }
}
