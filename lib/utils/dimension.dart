import 'package:flutter/material.dart';

class Dimension {
  // Method to get the full screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Method to get the full screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Method to get a percentage of the screen height
  static double screenHeightPercentage(
      BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage;
  }

  // Method to get a percentage of the screen width
  static double screenWidthPercentage(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }
}
