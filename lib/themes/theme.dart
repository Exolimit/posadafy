import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: const Color.fromRGBO(26, 182, 92, 1),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1, color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 1,
          color: Color.fromRGBO(26, 182, 92, 1),
        ),
      ),
      labelStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(26, 182, 92, 1),
    ),
  );
}
