import 'package:flutter/material.dart';

class BannersProvider extends ChangeNotifier {
  bool showArabic = false;

  void showArabicTab() {
    showArabic = true;
    notifyListeners();
  }

  void showEnglishTab() {
    showArabic = false;
    notifyListeners();
  }
}
