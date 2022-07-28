import 'package:flutter/material.dart';
import 'package:take_a_break/Styles/buttons.dart';

import '../../../Styles/input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const SizedBox(height: 25),
          TextFormField(
            decoration: InputFormDecoration.formInputDecoration(
              icon: Icons.email,
              labelText: 'Correo',
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (value) {
              FocusScope.of(context).nextFocus();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputFormDecoration.formInputDecoration(
              icon: Icons.lock_outline,
              labelText: 'Contraseña',
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (value) {
              FocusScope.of(context).nextFocus();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: true,
                onChanged: (value) {},
              ),
              const Text("Recuerdame")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonsDecoration.buttonPrimaryStyle(
                  context: context, elevation: 3),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40),
                child: Text(
                  "Iniciar sesión",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
