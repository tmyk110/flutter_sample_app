import 'package:flutter/material.dart';
import '../repository/sample_repository.dart';

class CounterModel with ChangeNotifier {
  int count = 0;
  String message = '';
  SampleRepository repository = SampleRepository();

  increment() {
    count += 1;
    notifyListeners();
  }

  fetch() {
    repository.getUser().then((user) {
      message = "${user.firstName} ${user.lastName}";
      notifyListeners();
    });
  }
}
