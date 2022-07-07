import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          "Bienvenido Juan",
          style: TextStyle(
              fontSize: 32,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
