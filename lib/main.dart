import 'package:flutter/material.dart';
import 'package:gluco_pulse3/app_widget.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final documentDir = await getApplicationDocumentsDirectory();
  Hive.init(documentDir.path);
  runApp(const AppWidget());
}
