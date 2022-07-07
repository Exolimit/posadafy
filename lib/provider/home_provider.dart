import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier {
  int _selectedOption = 0;

  set selectedOption(int value) {
    _selectedOption = value;
    notifyListeners();
  }

  int get selectedOption => _selectedOption;
}
