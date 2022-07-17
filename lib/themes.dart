import 'package:flutter/material.dart';

ThemeData darkThemeHome() {
  return ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.amber,
      onPrimary: Colors.white,
      secondary: Colors.deepPurple,
      onSecondary: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      surface: Colors.deepPurpleAccent,
      onSurface: Colors.white,
      error: Colors.amber,
      onError: Colors.white,
    ),
  );
}
