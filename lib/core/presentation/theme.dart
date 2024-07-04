import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/application/theme_notifier.dart';
import 'package:gluco_pulse3/core/shared/providers.dart';

class AppThemePage extends ConsumerWidget {
  const AppThemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListTile(
        title: const Text('Dark Mode'),
        trailing: Switch(
          value: themeMode == ThemeModeType.dark,
          onChanged: (value) {
            ref.read(themeNotifierProvider.notifier).toggleTheme();
          },
        ),
      ),
    );
  }
}
