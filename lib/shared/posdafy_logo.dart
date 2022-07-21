import 'package:flutter/material.dart';

class PosadaLogo extends StatelessWidget {
  const PosadaLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Image.asset(
        "assets/img/logo.png",
      ),
    );
  }
}
