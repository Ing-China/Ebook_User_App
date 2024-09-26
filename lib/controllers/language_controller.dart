import 'package:bro_s_journey/providers/language_provider.dart';
import 'package:flutter/material.dart';

class LanguageController {
  final LanguageProvider languageProvider;

  LanguageController(this.languageProvider);

  String get selectedLanguage {
    return languageProvider.locale.languageCode;
  }

  void changeLanguage(BuildContext context, String languageCode) {
    if (languageCode == 'km') {
      languageProvider.setLocale(const Locale('km'));
    } else {
      languageProvider.setLocale(const Locale('en'));
    }

    // Navigator.pop(context);
  }
}
