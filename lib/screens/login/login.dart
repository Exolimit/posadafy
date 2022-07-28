import 'package:flutter/material.dart';

import '../../shared/dont_have_account.dart';
import '../../shared/widgets.dart';
import 'widgets/form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const SizedBox(height: 60),
                  const Text(
                    "Iniciar sesión",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist'),
                  ),
                  const SizedBox(height: 40),
                  LoginForm(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "O continúa con",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, fontFamily: 'Urbanist'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              "https://www.profesionalreview.com/wp-content/uploads/2018/04/C%C3%B3mo-descargar-todos-los-datos-que-Facebook-tiene-sobre-ti-3.jpg"),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          backgroundImage: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/2991/2991148.png"),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          backgroundImage: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/2491px-Twitter-logo.svg.png",
                            fit: BoxFit.fitHeight,
                          ).image,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  DontHaveAccountButton(
                    context: context,
                    popLastPage: true,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
