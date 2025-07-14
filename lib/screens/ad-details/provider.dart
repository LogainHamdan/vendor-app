import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateAdProvider with ChangeNotifier {
  bool delivery = true;
  bool cutlery = true;
  bool takeAway = true;
  String estimatedHours = '0';
  String estimatedMinutes = '0';
  String day = 'Saturday';
  String minOrder = '7-10 minutes';
  bool isAm = true;

  TimeOfDay start = TimeOfDay(hour: 11, minute: 0);
  TimeOfDay end = TimeOfDay(hour: 20, minute: 0);

  File? _logoImage;
  File? _coverImage;

  File? get logoImage => _logoImage;

  File? get coverImage => _coverImage;
  void setAm(bool value) {
    isAm = value;
    notifyListeners();
  }

  void updateEstimatedTime({
    required String hours,
    required String minutes,
    required bool amPmFormat,
  }) {
    estimatedHours = hours;
    estimatedMinutes = minutes;

    if (!amPmFormat) {
      minOrder =
          "${hours.padLeft(2, '0')} hours ${minutes.padLeft(2, '0')} minutes";
    } else {
      int hourInt = int.tryParse(hours) ?? 1;
      int minuteInt = int.tryParse(minutes) ?? 0;

      hourInt = hourInt.clamp(1, 12);

      String period = isAm ? "AM" : "PM";
      int nextHour = hourInt == 12 ? 1 : hourInt + 1;

      String nextPeriod =
          (hourInt == 11 && isAm) || (hourInt == 12 && !isAm)
              ? (isAm ? "PM" : "AM")
              : period;

      minOrder =
          "$hourInt:${minutes.padLeft(2, '0')} $period - $nextHour:${minutes.padLeft(2, '0')} $nextPeriod";
    }

    notifyListeners();
  }

  Future<void> pickLogoImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      _logoImage = File(picked.path);
      notifyListeners();
    }
  }

  void removeLogoImage() {
    _logoImage = null;
    notifyListeners();
  }

  Future<void> pickCoverImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      _coverImage = File(picked.path);
      notifyListeners();
    }
  }

  void removeCoverImage() {
    _coverImage = null;
    notifyListeners();
  }

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
