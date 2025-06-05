import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class BurgerHomeProvider with ChangeNotifier {
  bool _showItems = true;
  final List<Map<String, dynamic>> reviews = [
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),
      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),
      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),
      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),
      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),
      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),
      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),
      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),

      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
    {
      'date': "20/12/2020",
      'image': Image.asset(person, fit: BoxFit.cover),

      'opinion':
          "teksturnya ngga sekentel day creamnya jadi setelah di pake di wajah ngga terasa berat gitu, ini ngel",
    },
  ];

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
