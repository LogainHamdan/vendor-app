import 'package:flutter/material.dart';

class AddItemProvider with ChangeNotifier {
  bool showArabic = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController discountValueController = TextEditingController();
  final TextEditingController maxQtyController = TextEditingController();
  final TextEditingController stockController = TextEditingController();
  String? selectedCategory;
  String? selectedDiscountType;
  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;

  void setSelectedCategory(String value) {
    selectedCategory = value;
    notifyListeners();
  }

  void setSelectedDiscountType(String value) {
    selectedDiscountType = value;
    notifyListeners();
  }

  void setValue(String key, String value) {
    switch (key) {
      case 'category':
        selectedCategory = value;
        break;
      case 'discountType':
        selectedDiscountType = value;
        break;
    }
    notifyListeners();
  }

  String? getValue(String key) {
    switch (key) {
      case 'category':
        return selectedCategory;
      case 'discountType':
        return selectedDiscountType;
      default:
        return null;
    }
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
