import 'package:hive/hive.dart';

part 'blood_sugar_entry2.g.dart';

@HiveType(typeId: 1)
class BloodSugarEntry2 extends HiveObject {
  @HiveField(0)
  double value;

  @HiveField(1)
  DateTime dateTime;

  BloodSugarEntry2({required this.value, required this.dateTime});
}
