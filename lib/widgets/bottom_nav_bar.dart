import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/providers.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    BottomNavBarProvider bottomNavBarProvider =
        Provider.of<BottomNavBarProvider>(context);
    return BottomNavigationBar(
      backgroundColor: Colors.red,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedLabelStyle: const TextStyle(color: Colors.grey),
      //showUnselectedLabels: true,
      elevation: 1,
      currentIndex: bottomNavBarProvider.currentIndex,
      onTap: (int index) => bottomNavBarProvider.currentIndex = index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Búsqueda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.document_scanner,
          ),
          label: 'Reservas',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Perfil',
        ),
      ],
    );
  }
}
