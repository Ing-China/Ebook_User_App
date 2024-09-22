import 'dart:io';

import 'package:bro_s_journey/helper/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimension {
  // Full screen height and width
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Screen height/width percentage methods
  static double screenHeightPercentage(
      BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage;
  }

  static double screenWidthPercentage(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }

  // Responsive font sizes
  static double fontSizeExtraSmall(BuildContext context) {
    return ResponsiveHelper.isTab(context)
        ? 16
        : (MediaQuery.of(context).size.width >= 1300 ? 14 : 10);
  }

  static double fontSizeSmall(BuildContext context) {
    return ResponsiveHelper.isTab(context)
        ? 22
        : (MediaQuery.of(context).size.width >= 1300 ? 16 : 12);
  }

  static double fontSizeDefault(BuildContext context) {
    return ResponsiveHelper.isTab(context)
        ? 24
        : (MediaQuery.of(context).size.width >= 1300 ? 18 : 14);
  }

  static double fontSizeLarge(BuildContext context) {
    return ResponsiveHelper.isTab(context)
        ? 26
        : (MediaQuery.of(context).size.width >= 1300 ? 20 : 16);
  }

  static double fontSizeExtraLarge(BuildContext context) {
    return ResponsiveHelper.isTab(context)
        ? 28
        : (MediaQuery.of(context).size.width >= 1300 ? 22 : 18);
  }

  static double fontSizeOverLarge(BuildContext context) {
    return ResponsiveHelper.isTab(context)
        ? 34
        : (MediaQuery.of(context).size.width >= 1300 ? 28 : 24);
  }

  double cardHeight(BuildContext context) {
    return ResponsiveHelper.isTab(context) ? 450 : 275;
  }

  // Top padding for iOS devices (to handle notch, etc.)
  static double getTopPadding(BuildContext context) {
    return Platform.isIOS ? MediaQuery.of(context).padding.top : 0.0;
  }

  // Bottom padding for iOS devices (to handle safe area at bottom)
  static double getBottomPadding(BuildContext context) {
    return Platform.isIOS ? MediaQuery.of(context).padding.bottom : 0.0;
  }

  static double topPadding(BuildContext context) {
    return getTopPadding(context);
  }

  static double bottomPadding(BuildContext context) {
    return getBottomPadding(context);
  }
}
