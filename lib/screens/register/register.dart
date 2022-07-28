import 'package:flutter/material.dart';
import 'package:take_a_break/Styles/buttons.dart';
import 'package:take_a_break/shared/posdafy_logo.dart';

import '../../Styles/input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text(
                    "Crear cuenta",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const PosadaLogo(widthSize: 250),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Form(
                  child: Column(
                    children: [
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
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputFormDecoration.formInputDecoration(
                          icon: Icons.password,
                          labelText: 'Contraseña',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputFormDecoration.formInputDecoration(
                          icon: Icons.password,
                          labelText: 'Repetir contraseña',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputFormDecoration.formInputDecoration(
                          icon: Icons.password,
                          labelText: 'Nombre completo',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputFormDecoration.formInputDecoration(
                          icon: Icons.password,
                          labelText: 'Fecha de nacimiento',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputFormDecoration.formInputDecoration(
                          icon: Icons.password,
                          labelText: 'Número de teléfono',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).nextFocus();
                        },
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                          style: ButtonsDecoration.buttonPrimaryStyle(
                              context: context, elevation: 3),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20),
                            child: Text("Crear cuenta"),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
