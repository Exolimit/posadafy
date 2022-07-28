import 'package:flutter/material.dart';

class PosadaLogo extends StatelessWidget {
  const PosadaLogo({Key? key, required this.widthSize}) : super(key: key);
  final double widthSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSize,
      child: Image.asset(
        "assets/img/logo.png",
      ),
    );
  }
}
