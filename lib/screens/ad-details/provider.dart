import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdDetailsProvider with ChangeNotifier {
  bool delivery = true;
  bool cutlery = true;
  bool takeAway = true;
  String minOrder = '';
  TimeOfDay start = TimeOfDay(hour: 11, minute: 0);
  TimeOfDay end = TimeOfDay(hour: 20, minute: 0);

  void toggleDelivery(bool value) {
    delivery = value;
    notifyListeners();
  }

  void toggleCutlery(bool value) {
    cutlery = value;
    notifyListeners();
  }

  void toggleTakeAway(bool value) {
    takeAway = value;
    notifyListeners();
  }

  void updateMinOrder(String value) {
    minOrder = value;
    notifyListeners();
  }

  void updateStartTime(TimeOfDay time) {
    start = time;
    notifyListeners();
  }

  void updateEndTime(TimeOfDay time) {
    end = time;
    notifyListeners();
  }
}
