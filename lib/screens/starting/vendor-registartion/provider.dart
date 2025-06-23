import 'package:flutter/material.dart';

class RegistrationProvider with ChangeNotifier {
  bool _showEnglish = true;
  bool _isSubscriptionBase = false;

  bool get isSubscriptionBase => _isSubscriptionBase;

  bool get showEnglish => _showEnglish;

  final List<String> stepTitles = [
    'Vendor Information',
    'Location Information',
    'Review',
  ];

  int _currentStep = 0;
  int get currentStep => _currentStep;

  void nextStep() {
    if (_currentStep < 2) {
      _currentStep++;
      notifyListeners();
    }
  }

  void showEnglishTab() {
    _showEnglish = true;
    notifyListeners();
  }

  void showArabicTab() {
    _showEnglish = false;
    notifyListeners();
  }

  void previousStep() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }
  }

  void toggleCommissionType(bool isSubscription) {
    _isSubscriptionBase = isSubscription;
    notifyListeners();
  }
}
