import 'package:flutter/material.dart';

class AppTheme {
  Color lightPrimaryColor = const Color.fromRGBO(30, 49, 51, 0.976);
  Color darkPrimaryColor = const Color.fromRGBO(6, 6, 170, 1);
  Color secondaryColor = const Color.fromRGBO(255, 139, 106, 1);
  Color accentColor = const Color.fromRGBO(255, 210, 187, 1);

  static ThemeData lightTheme = ThemeData(
      primaryColor: ThemeData.light().scaffoldBackgroundColor,
      colorScheme: const ColorScheme.light().copyWith(
        primary: _appTheme.lightPrimaryColor,
        secondary: _appTheme.secondaryColor,
      ));
  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Colors.white),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.white24),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _appTheme.darkPrimaryColor,
      secondary: _appTheme.secondaryColor,
    ),
  );
}

AppTheme _appTheme = AppTheme();
