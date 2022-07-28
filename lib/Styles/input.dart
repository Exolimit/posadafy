import 'package:flutter/material.dart';

class InputFormDecoration {
  static InputDecoration formInputDecoration({
    required IconData icon,
    required String labelText,
  }) {
    return InputDecoration(
      filled: true, //<-- SEE HERE
      fillColor: Colors.grey[100],

      prefix: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
      labelText: labelText,
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
