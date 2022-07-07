import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../screens/screens.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'homePage': (BuildContext context) => const HomePage(),
    'loginPage': (BuildContext context) => const LoginPage(),
    'registerPage': (BuildContext context) => const RegisterPage(),
    'profilePage': (BuildContext context) => const ProfilePage(),
  };
}
