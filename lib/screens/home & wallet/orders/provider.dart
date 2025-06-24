import 'package:flutter/material.dart';

class OrdersProvider extends ChangeNotifier {
  final List<Map<String, String>> orderList = [
    {"id": "100003", "placedDate": "07 Aug 2025"},
    {"id": "100004", "placedDate": "01 Sep 2025"},
    {"id": "100005", "placedDate": "15 Jul 2025"},
  ];

  final List<Map<String, dynamic>> orderTabs = [
    {"label": "All", "selected": false},
    {"label": "Delivered", "selected": true},
    {"label": "Refunded", "selected": false},
  ];
}
