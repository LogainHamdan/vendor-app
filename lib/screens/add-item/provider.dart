import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AddItemProvider with ChangeNotifier {
  bool showArabic = true;

  // Text controllers for different fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController discountValueController = TextEditingController();
  final TextEditingController maxQtyController = TextEditingController();
  final TextEditingController stockController = TextEditingController();

  // Store values dynamically for each dropdown
  final Map<String, String?> _selectedValues = {};

  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;

  // Set the value for any key (category, discountType, etc.)
  void setValue(String key, String value) {
    _selectedValues[key] = value;
    notifyListeners();
  }

  // Get the value for a specific key
  String? getValue(String key) {
    return _selectedValues[key];
  }

  // Toggle the expanded state
  void toggleExpanded() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  // Collapse the dropdown
  void collapse() {
    _isExpanded = false;
    notifyListeners();
  }

  // Methods to switch between language tabs
  void showArabicTab() {
    showArabic = true;
    notifyListeners();
  }

  void showEnglishTab() {
    showArabic = false;
    notifyListeners();
  }
}
