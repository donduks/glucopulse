import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/widgets/onboarding_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../home_page/widgets/buttons.dart';
import '../../bottom_navigation_bar.dart';

class OnBoarding3Card extends StatelessWidget {
  const OnBoarding3Card({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/health3.png',
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                send,
              ],
            ),
          ),
          AppButton(
            screenSize: screenSize,
            height: 50,
            width: 350,
            onTap: () async {
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('onboardingCompleted', true);

              Navigator.pushReplacement(
                  // ignore: use_build_context_synchronously
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavBar()));
            },
            text: const Text('Done'),
            color: Colors.blue,
            offset: const Offset(0, 0),
          )
        ],
      ),
    );
  }
}
