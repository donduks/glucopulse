import 'package:hive/hive.dart';

import '../domain/blood_sugar_entry2.dart';

class BoxData2 {
  late Box<BloodSugarEntry2> box2;

  BoxData2() {
    box2 = Hive.box<BloodSugarEntry2>('bloodSugarData2');
  }

  void add(double value) {
    final entry = BloodSugarEntry2(value: value, dateTime: DateTime.now());
    box2.add(entry);
  }

  BloodSugarEntry2? get(double key) {
    return box2.get(key);
  }

  double getAverage() {
    if (box2.isEmpty) return 0;
    final total =
        box2.values.fold<double>(0, (sum, entry) => sum + entry.value);
    return total / box2.length;
  }
}
