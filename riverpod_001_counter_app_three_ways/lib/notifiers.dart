import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/all.dart';

class CounterChangeNotifier extends ChangeNotifier {
  CounterChangeNotifier([this.count = 0]);

  int count;

  void increment() {
    count++;
    notifyListeners();
  }
}

class CounterStateNotifier extends StateNotifier<Counter> {
  CounterStateNotifier([Counter counter]) : super(counter ?? Counter(0));

  void increment() {
    state = Counter(state.count + 1);
  }
}

class Counter {
  final int count;

  Counter(this.count);
}
