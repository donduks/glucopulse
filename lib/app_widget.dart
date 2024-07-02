import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/widgets/bottom_navigation_bar.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
