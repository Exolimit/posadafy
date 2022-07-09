import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/providers.dart';
import '../../shared/widgets.dart';
import '../screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavBarProvider bottomNavBarProvider =
        Provider.of<BottomNavBarProvider>(context);
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: _HomeBody(
        index: bottomNavBarProvider.currentIndex,
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final index;
  const _HomeBody({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return const ReservationPage();
      case 3:
        return const ProfilePage();
      default:
        return HomeScreen();
    }
  }
}
