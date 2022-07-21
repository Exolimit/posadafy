import 'package:flutter/material.dart';

import '../reservation/widgets/app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: const [
                    AppBarReservation(),
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1527133314196377600/YLnuI5CA_400x400.jpg'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Renato Balcazar",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Urbanist'),
                    ),
                    SizedBox(height: 10),
                    Text("renatojobal@gmail.com",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.person_outline_rounded, size: 24),
                          SizedBox(width: 20),
                          Text(
                            "Editar perfil",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Urbanist'),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.payment_rounded, size: 24),
                          SizedBox(width: 20),
                          Text(
                            "Métodos de pagos",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Urbanist'),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.notifications_none_outlined, size: 24),
                          SizedBox(width: 20),
                          Text(
                            "Notificaciones",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Urbanist'),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.security_rounded, size: 24),
                          SizedBox(width: 20),
                          Text(
                            "Seguridad",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Urbanist'),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.help_outline, size: 24),
                          SizedBox(width: 20),
                          Text(
                            "Ayuda",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Urbanist'),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(
                            Icons.login,
                            size: 24,
                            color: Colors.red,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Cerrar sesión",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Urbanist',
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
