import 'package:flutter/material.dart';

class AddItemProvider with ChangeNotifier {
  bool showArabic = true;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController discountValueController = TextEditingController();
  final TextEditingController maxQtyController = TextEditingController();
  final TextEditingController stockController = TextEditingController();
  final Map<String, bool> _checkboxStates = {};

  final Map<String, String?> _selectedValues = {};
  bool isChecked(String key) => _checkboxStates[key] ?? false;

  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;
  void toggleCheck(String key) {
    _checkboxStates[key] = !isChecked(key);
    notifyListeners();
  }

  void setChecked(String key, bool value) {
    _checkboxStates[key] = value;
    notifyListeners();
  }

  Map<String, bool> get allStates => _checkboxStates;
  void setValue(String key, String value) {
    _selectedValues[key] = value;
    notifyListeners();
  }

  String? getValue(String key) {
    return _selectedValues[key];
  }

  void toggleExpanded() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  void collapse() {
    _isExpanded = false;
    notifyListeners();
  }

  void showArabicTab() {
    showArabic = true;
    notifyListeners();
  }

  void showEnglishTab() {
    showArabic = false;
    notifyListeners();
  }
}
