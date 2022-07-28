import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/Styles/buttons.dart';
import 'package:take_a_break/provider/user_provider.dart';
import '../../../Styles/input.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const SizedBox(height: 25),
          TextFormField(
            controller: _userController,
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
            controller: _passwordController,
            obscureText: true,
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
          userProvider.isLoading
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  style: ButtonsDecoration.buttonPrimaryStyle(
                      context: context, elevation: 3),
                  onPressed: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    final result = await userProvider.loginUser(
                        _userController.text, _passwordController.text);
                    if (result['status']) {
                      final response =
                          await userProvider.getUserData(result['userUID']);
                      if (response['status']) {
                        Navigator.pop(context);
                      } else {
                        final SnackBar snackBar = SnackBar(
                          content: Text(
                            result['message'],
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.red,
                          duration: const Duration(seconds: 1),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    } else {
                      final SnackBar snackBar = SnackBar(
                        content: Text(
                          result['message'],
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                        duration: const Duration(seconds: 1),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 40),
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
