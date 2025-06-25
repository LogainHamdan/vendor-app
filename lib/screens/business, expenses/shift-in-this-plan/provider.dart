import 'package:flutter/material.dart';

class ShiftInThisPlanProvider extends ChangeNotifier {
  bool _isBOP = false;
  bool _jawwal = false;
  bool _isPalpay = false;
  bool _isdebit = false;

  bool get isBOP => _isBOP;

  bool get isJawwal => _jawwal;

  bool get isPalpay => _isPalpay;

  bool get isdebit => _isdebit;
  void toggleBOP() {
    _isBOP = !_isBOP;
    _jawwal = false;
    _isPalpay = false;
    _isdebit = false;
    notifyListeners();
  }

  void toggleJawwal() {
    _jawwal = !_jawwal;
    _isPalpay = false;
    _isdebit = false;
    _isBOP = false;

    notifyListeners();
  }

  void togglePalpay() {
    _isPalpay = !_isPalpay;
    _jawwal = false;
    _isdebit = false;
    _isBOP = false;
    notifyListeners();
  }

  void toggleDebit() {
    _isdebit = !_isdebit;
    _jawwal = false;
    _isPalpay = false;
    _isBOP = false;
    notifyListeners();
  }
}
