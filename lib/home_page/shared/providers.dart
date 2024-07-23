import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/converter/application/store_notifier.dart';
import 'package:gluco_pulse3/home_page/application/theme_notifier.dart';
import 'package:gluco_pulse3/home_page/name_notifier.dart';

final nameProvider = StateNotifierProvider<Name, String>((ref) {
  return Name();
});

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, ThemeModeType>(
  (ref) => ThemeNotifier(),
);

final numberProvider =
    StateNotifierProvider<MyConverter, String>((ref) => MyConverter());
