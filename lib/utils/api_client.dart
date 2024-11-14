import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'app_constant.dart';
import 'dart:io';

class ApiClient {
  final String baseUrl;
  final int TIMEOUT = 30;
  static const String NO_INTERNET = 'Lost Connection';

  ApiClient({this.baseUrl = AppConstant.BASE_URL});

  Future<dynamic> getData(String endpoint,
      {Map<String, String>? headers}) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');

    try {
      final response = await http
          .get(url, headers: headers)
          .timeout(Duration(seconds: TIMEOUT));
      return _handleResponse(response);
    } on SocketException {
      throw Exception(NO_INTERNET);
    } on TimeoutException {
      throw Exception('Request timed out after $TIMEOUT seconds.');
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed with status code: ${response.statusCode}');
    }
  }
}
