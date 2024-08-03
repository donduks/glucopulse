import 'package:hive/hive.dart';

import '../domain/blood_sugar_entry.dart';

class BoxData {
  late Box<BloodSugarEntry> box;

  BoxData() {
    box = Hive.box<BloodSugarEntry>('bloodSugarData');
  }

  void add(double value) {
    final entry = BloodSugarEntry(value: value, dateTime: DateTime.now());
    box.add(entry);
  }

  BloodSugarEntry? get(double key) {
    return box.get(key);
  }

  double getAverage() {
    if (box.isEmpty) return 0;
    final total = box.values.fold<double>(0, (sum, entry) => sum + entry.value);
    return total / box.length;
  }
}
