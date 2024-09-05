import 'package:flutter/material.dart';

class AppTextStyles {
  static const String fontFamily = 'Inter';

  static TextStyle displayLarge = const TextStyle(
    fontSize: 36,
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle displayMedium = const TextStyle(
    fontSize: 24,
    fontFamily: fontFamily,
  );

  static TextStyle headlineLarge = const TextStyle(
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineMedium = const TextStyle(
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineSmall = const TextStyle(
    fontSize: 12,
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyLarge = const TextStyle(
    fontSize: 16,
    fontFamily: fontFamily,
  );

  static TextStyle body = const TextStyle(
    fontSize: 14,
    fontFamily: fontFamily,
  );

  static TextStyle bodySmall = const TextStyle(
    fontSize: 12,
    fontFamily: fontFamily,
  );

  static TextStyle lableSmall = const TextStyle(
    fontSize: 10,
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
  );
}
