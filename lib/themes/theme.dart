import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: const Color.fromRGBO(26, 182, 92, 1),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(26, 182, 92, 1),
    ),
  );
}
