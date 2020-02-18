import 'package:flutter_test/flutter_test.dart';
import '../lib/model/counter_model.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = CounterModel();

    counter.increment();

    expect(counter.count, 1);
  });
}