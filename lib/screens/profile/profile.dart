import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/user_provider.dart';
import 'widgets/loged_user.dart';
import 'widgets/login_or_register.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: userProvider.client != null
          ? const LogedUserProfile()
          : const LoginOrRegisterView(),
    );
  }
}
