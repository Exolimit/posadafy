import 'package:flutter/material.dart';

class ButtonsDecoration {
  static ButtonStyle buttonPrimaryStyle({
    required BuildContext context,
    required double elevation,
  }) {
    return ButtonStyle(
        elevation: MaterialStateProperty.all<double>(elevation),
        backgroundColor:
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))));
  }
}
