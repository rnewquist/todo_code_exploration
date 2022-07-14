import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  bool _isInitializing = true;
  bool get isInitializing => _isInitializing;
  set isInitializing(bool value) {
    if (value != _isInitializing) {
      _isInitializing = value;
      notifyListeners();
    }
  }
}
