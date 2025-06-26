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

  String minOrder = '';

  TimeOfDay start = TimeOfDay(hour: 11, minute: 0);
  TimeOfDay end = TimeOfDay(hour: 20, minute: 0);

  File? _logoImage;
  File? _coverImage;

  File? get logoImage => _logoImage;
  File? get coverImage => _coverImage;

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
