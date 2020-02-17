import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int count = 0;

  increment() {
    count += 1;
    notifyListeners();
  }
}
