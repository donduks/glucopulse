import 'package:flutter/material.dart';
import 'package:gluco_pulse3/authentication/signin/signin_page.dart';

import 'component/auth_switcher_button.dart';
import 'component/slide_fade_switcher.dart';
import 'signup/signup_page.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool _showSignIn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SlideFadeSwitcher(
              child: _showSignIn ? const SignInPage() : const SignUpPage()),
          AuthSwitcherButton(
              showSignIn: _showSignIn,
              onTap: () {
                setState(() {
                  _showSignIn = !_showSignIn;
                });
              })
        ],
      ),
    );
  }
}
