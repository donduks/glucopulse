import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ThemeModeType { light, dark }

class ThemeNotifier extends StateNotifier<ThemeModeType> {
  ThemeNotifier() : super(ThemeModeType.light);

  void toggleTheme() {
    if (state == ThemeModeType.light) {
      state = ThemeModeType.dark;
    } else {
      state = ThemeModeType.light;
    }
  }
}
