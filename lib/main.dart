import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_a_break/provider/providers.dart';
import 'package:take_a_break/routes/routes.dart';
import 'package:take_a_break/themes/theme.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
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
