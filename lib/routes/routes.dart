import 'package:flutter/cupertino.dart';
import '../screens/screens.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    'homePage': (BuildContext context) => const HomePage(),
    'loginPage': (BuildContext context) => const LoginPage(),
    'registerPage': (BuildContext context) => const RegisterPage(),
    'profilePage': (BuildContext context) => const ProfilePage(),
    'roomDetailPage': (BuildContext context) => const DetailRoomPage(),
  };
}
