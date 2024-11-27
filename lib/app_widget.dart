import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/bottom_navigation_bar.dart';
import 'package:gluco_pulse3/core/presentation/onboarding_screen.dart';
import 'package:gluco_pulse3/core/presentation/widgets/splash_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'authentication/auth_view.dart';
import 'authentication/controller/auth_controller.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({super.key});

  @override
  ConsumerState<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  bool _onboardingCompleted = false;

  @override
  void initState() {
    super.initState();
    _checkOnboarding();
  }

  Future<void> _checkOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _onboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/onboardingOrBottomNavBar': (context) => _onboardingCompleted
            ? GetHome().getHome(ref)
            : const OnBoardingScreen1(),
      },
    );
  }
}

class GetHome {
  Widget getHome(WidgetRef ref) {
    final authenticationState = ref.watch(authProvider);
    if (authenticationState.status == AuthenticationStatus.authenticated) {
      return const BottomNavBar();
    } else if (authenticationState.status ==
        AuthenticationStatus.unauthenticated) {
      return const AuthView();
    } else {
      return const AuthView();
    }
  }
}
