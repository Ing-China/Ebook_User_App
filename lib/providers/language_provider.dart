import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = const Locale('en'); // Default to English
  Locale get locale => _locale;

  static const String languageCodeKey = 'language_code';

  LanguageProvider() {
    _loadLocale(); // Load saved locale when the provider is created
  }

  // Set and save the locale
  Future<void> setLocale(Locale locale) async {
    if (_locale == locale) return;

    _locale = locale;
    notifyListeners();

    // Save the selected language in SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(languageCodeKey, locale.languageCode);
  }

  // Load saved locale from SharedPreferences
  Future<void> _loadLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString(languageCodeKey);

    if (languageCode != null) {
      _locale = Locale(languageCode);
      notifyListeners();
    }
  }
}
