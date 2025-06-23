import 'package:flutter/cupertino.dart';

class SignInProvider extends ChangeNotifier {
  bool _showOwner = true;

  bool get showOwner => _showOwner;

  void showOwnerTab() {
    _showOwner = true;
    notifyListeners();
  }

  void showEmployeeTab() {
    _showOwner = false;
    notifyListeners();
  }
}
