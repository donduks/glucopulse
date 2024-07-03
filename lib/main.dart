import 'package:flutter/material.dart';
import 'package:gluco_pulse3/app_widget.dart';
import 'package:hive_flutter/adapters.dart';

import 'data_storage/domain/blood_sugar_entry.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(BloodSugarEntryAdapter());
  await Hive.openBox<BloodSugarEntry>('bloodSugarData');
  runApp(const AppWidget());
}
