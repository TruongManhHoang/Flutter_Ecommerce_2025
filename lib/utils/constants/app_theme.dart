import 'package:flutter/material.dart';

class AppThemeBrightness {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
