import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class UserName extends StateNotifier<String> {
  UserName() : super('') {
    // Initialize the state with the value from Hive
    state = box.get('userName', defaultValue: 'Guest')!;
  }

  final box = Hive.box<String>('nameBox');

  void addName(String value) {
    box.put('userName', value);
    state = value; // Update the state with the new value
  }
}
