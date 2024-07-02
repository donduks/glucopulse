import 'package:hive/hive.dart';

part 'blood_sugar_entry.g.dart';

@HiveType(typeId: 0)
class BloodSugarEntry extends HiveObject {
  @HiveField(0)
  double value;

  @HiveField(1)
  DateTime dateTime;

  BloodSugarEntry({required this.value, required this.dateTime});
}
