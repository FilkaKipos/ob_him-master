import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Color(0xFF1F1F1F),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFBCFD4C)),
      scaffoldBackgroundColor: Color(0xFF1F1F1F),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 18,
        ),
        bodyMedium: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 16,
        ),
        displayLarge: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1F1F1F),
        titleTextStyle: TextStyle(
          color: Color(0xFFBCFD4C),
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Color(0xFFBCFD4C),
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
