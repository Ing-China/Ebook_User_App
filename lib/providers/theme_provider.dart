import 'package:bro_s_journey/theme/dark_theme.dart';
import 'package:bro_s_journey/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkTheme = false;

  ThemeProvider() {
    _loadThemePreference(); // Load the theme preference on initialization
  }

  bool get isDarkTheme => _isDarkTheme;

  ThemeData get currentTheme => _isDarkTheme ? darkTheme : lightTheme;

  Future<void> _loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkTheme = prefs.getBool('isDarkTheme') ??
        false; // Load stored preference, default to false
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(
        'isDarkTheme', _isDarkTheme); // Save the current theme preference
  }
}
