import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/onboardingOrBottomNavBar');
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: screenSize.width * 0.009),
          child: CircleAvatar(
            radius: 80,
            backgroundImage: const AssetImage('images/beat.gif'),
            backgroundColor: kAppColor2,
          ),
        ),
      ),
    );
  }
}
