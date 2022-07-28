import 'package:flutter/material.dart';

class DontHaveAccountButton extends StatelessWidget {
  const DontHaveAccountButton(
      {Key? key, required this.popLastPage, required this.context})
      : super(key: key);
  final bool popLastPage;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("No tienes cuenta?"),
        TextButton(
            onPressed: () {
              popLastPage
                  ? Navigator.popAndPushNamed(context, 'registerPage')
                  : Navigator.pushNamed(context, 'registerPage');
            },
            child: Text("Crear cuenta",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor))),
      ],
    );
  }
}
