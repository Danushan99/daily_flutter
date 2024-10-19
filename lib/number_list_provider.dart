import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  final List<int> numbers = [1, 2, 3, 4, 5, 6];

  void addNum() {
    int last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }
}
