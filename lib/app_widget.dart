import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/application/app_theme.dart';
import 'package:gluco_pulse3/core/application/theme_notifier.dart';
import 'package:gluco_pulse3/core/shared/providers.dart';
import 'package:gluco_pulse3/core/widgets/bottom_navigation_bar.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:
          themeMode == ThemeModeType.dark ? ThemeMode.dark : ThemeMode.light,
      home: const BottomNavBar(),
    );
  }
}
