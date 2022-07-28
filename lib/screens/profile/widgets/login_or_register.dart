import 'package:flutter/material.dart';
import 'package:take_a_break/Styles/buttons.dart';

import '../../../shared/posdafy_logo.dart';
import 'login_button.dart';

class LoginOrRegisterView extends StatelessWidget {
  const LoginOrRegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            const Text(
              "Iniciar sesión",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Urbanist'),
            ),
            const SizedBox(height: 25),
            LoginButton(
              text: "Ingresar con Facebook",
              networkImage:
                  "https://www.profesionalreview.com/wp-content/uploads/2018/04/C%C3%B3mo-descargar-todos-los-datos-que-Facebook-tiene-sobre-ti-3.jpg",
              onPressed: onPressedMethod,
            ),
            LoginButton(
              text: "Ingresar con Google",
              networkImage:
                  "https://cdn-icons-png.flaticon.com/512/2991/2991148.png",
              onPressed: onPressedMethod,
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ButtonsDecoration.buttonPrimaryStyle(
                    context: context, elevation: 3),
                onPressed: () {
                  Navigator.pushNamed(context, 'loginPage');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8),
                  child: Text(
                    "Iniciar con usuario y contraseña",
                    style: TextStyle(fontSize: 16),
                  ),
                )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("No tienes cuenta?"),
                TextButton(
                    onPressed: () {},
                    child: Text("Crear cuenta",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onPressedMethod() {
    print("Pressed");
  }
}
