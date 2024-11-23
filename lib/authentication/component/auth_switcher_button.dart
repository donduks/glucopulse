import 'package:flutter/material.dart';

import 'slide_fade_switcher.dart';

const _kTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  color: Color(0xFF9A9A9A),
);

class AuthSwitcherButton extends StatelessWidget {
  const AuthSwitcherButton({
    super.key,
    required this.showSignIn,
    required this.onTap,
  });
  final bool showSignIn;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 30,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: showSignIn
              ? const SlideFadeSwitcher(
                  child: Text(
                    "Don't have an account? Sign Up",
                    key: ValueKey("SignIn"),
                    style: _kTextStyle,
                  ),
                )
              : const Text(
                  "Already have an account? Sign In",
                  key: ValueKey("SignUp"),
                  style: _kTextStyle,
                ),
        ),
      ),
    );
  }
}
