import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/provider/bottom_nav_bar_provider.dart';
import 'package:take_a_break/routes/routes.dart';
import 'package:take_a_break/themes/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
      ],
      child: MaterialApp(
        title: 'Posadafy',
        debugShowCheckedModeBanner: false,
        initialRoute: 'homePage',
        theme: getAppTheme(),
        routes: getAppRoutes(),
      ),
    );
  }
}
