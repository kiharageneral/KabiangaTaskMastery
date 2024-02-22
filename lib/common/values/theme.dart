import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xFF5A55CA),
      secondary: const Color(0xFF72FFFF),
      surface: const Color(0xFF2CC09C),
      background: const Color(0xFFF0F4FD),
      onBackground: const Color(0xFF172774),
      tertiary: const Color(0xFFF0F4FD),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Color(0xFF172774)),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Color(0xFF172774),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Color(0xFF0B204C)),
      titleMedium: TextStyle(color: Color(0xFF0B204C)),
      titleSmall: TextStyle(color: Color(0xFF172774)),
      bodyLarge: TextStyle(color: Color(0xFF172774)),
      bodyMedium: TextStyle(color: Color(0xFF172774)),
      bodySmall: TextStyle(color: Color(0xFF172774)),
      headlineSmall: TextStyle(color: Color(0xFF2CC09C)),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: const Color(0xFF00FFAB),
      secondary: const Color(0xFFFF0075),
      surface: Colors.white,
      background: Colors.black87,
      onBackground: Colors.black,
      tertiary:  Colors.black,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Color(0xFF2CC09C)),

    ),
  );
}
