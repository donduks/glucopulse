import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyConverter extends StateNotifier<String> {
  MyConverter() : super('');
  double myInput = 0;

  void onNumberPressed(String number) {
    state += number;
  }

  void onClearPressed() {
    state = '';
  }

  void convert({required double multiplier}) {
    final double inputValue = double.tryParse(state) ?? 0.0;
    final double result = inputValue * multiplier;
    try {
      state = result.toStringAsFixed(2);
    } catch (e) {
      Text('Error $e');
    }
  }
}
