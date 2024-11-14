import 'package:bro_s_journey/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeHelper {
  static Color getPrimaryColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context).currentTheme.primaryColor;
  }

  static Color getCanvasColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context).currentTheme.canvasColor;
  }

  static Color getGreyShade50(BuildContext context) {
    return Provider.of<ThemeProvider>(context).currentTheme.colorScheme.primary;
  }

  static Color getBlackColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context).currentTheme.indicatorColor;
  }

  static Color getGreyShade100(BuildContext context) {
    return Provider.of<ThemeProvider>(context)
        .currentTheme
        .colorScheme
        .secondary;
  }

  static Color getBackgroundColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context)
        .currentTheme
        .colorScheme
        .background;
  }
}
