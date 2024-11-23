import 'package:flutter/material.dart';

import '../forget_password.dart/forgot_password_view.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => const ForgotPasswordView()));
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xFF6574FF),
            ),
          ),
        ),
      ),
    );
  }
}
