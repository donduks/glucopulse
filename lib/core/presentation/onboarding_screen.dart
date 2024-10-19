import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/widgets/onboarding3_card.dart';
import 'package:gluco_pulse3/core/presentation/widgets/onboarding_card.dart';
import 'package:gluco_pulse3/core/presentation/widgets/onboarding_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  static final PageController _pageController = PageController(initialPage: 0);

  List<Widget> onBoardingPages = [
    OnBoardingCard(
      image: 'images/health1.png',
      title: 'Converter',
      description: converterText,
      buttonText: 'Next',
      onPress: () {
        _pageController.animateToPage(
          1,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    OnBoardingCard(
      image: 'images/health2.png',
      title: 'Analyze',
      description: analyzeText,
      buttonText: 'Next',
      onPress: () {
        _pageController.animateToPage(
          2,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    const OnBoarding3Card()
  ];

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: screen.height * 0.02),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: onBoardingPages,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
            )
          ],
        ),
      ),
    );
  }
}
