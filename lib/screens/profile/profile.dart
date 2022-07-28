import 'package:flutter/material.dart';
import 'widgets/loged_user.dart';
import 'widgets/login_or_register.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginOrRegisterView(),
    );
  }
}
