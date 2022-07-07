import 'package:flutter/cupertino.dart';

class BottomNavBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  set currentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  int get currentIndex => _currentIndex;
}
