import 'package:flutter/material.dart';

class BurgerHomeProvider with ChangeNotifier {
  bool _showItems = true;

  bool get showItems => _showItems;

  void showAllItems() {
    _showItems = true;
    notifyListeners();
  }

  void showReviews() {
    _showItems = false;
    notifyListeners();
  }
}
