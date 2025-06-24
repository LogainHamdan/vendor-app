import 'package:burger_home/constants/constants.dart';
import 'package:flutter/material.dart';

class OrderDetailsProvider extends ChangeNotifier {
  String? _selectedReason;
  String? get selectedReason => _selectedReason;
  void setReason(String value) {
    _selectedReason = value;
    notifyListeners();
  }

  final List<Map<String, dynamic>> orderItems = [
    {
      "name": "Juhayna Mango 300ml Lorem",
      "price": 4.99,
      "quantity": 2,
      "image": shampoo1,
    },
    {
      "name": "Juhayna Mango 300ml Lorem",
      "price": 4.99,
      "quantity": 3,
      "image": shampoo2,
    },
    {
      "name": "Juhayna Mango 300ml Lorem",
      "price": 4.99,
      "quantity": 1,
      "image": shampoo1,
    },
  ];
}
