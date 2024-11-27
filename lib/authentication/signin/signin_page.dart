import 'package:flutter/material.dart';
import 'package:gluco_pulse3/authentication/signin/signin_email.dart';
import 'package:gluco_pulse3/authentication/signin/signin_password.dart';

import '../../core/colors.dart';
import '../google_signin/google_signin_button.dart';
import 'forgot_password_button.dart';
import 'signin_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenSize.height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.4,
            ),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: const AssetImage('images/beat.gif'),
              backgroundColor: kAppColor2,
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenSize.width * 0.06),
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: screenSize.width * 0.06,
                fontWeight: FontWeight.w900,
                color: kButtonsTextColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenSize.width * 0.06),
            child: Text(
              'Login to continue using the app',
              style: TextStyle(color: kAppColor2),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenSize.width * 0.06),
            child: const Text(
              'Email',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.06),
            child: const SignInEmailField(),
          ),
          SizedBox(
            height: screenSize.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenSize.width * 0.06),
            child: const Text(
              'Password',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.06),
            child: const SignInPasswordField(),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenSize.width * 0.08),
            child: const ForgotPasswordButton(),
          ),
          SizedBox(
            height: screenSize.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.06),
            child: const AppSignInButton(title: 'Sign In'),
          ),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenSize.width * 0.42),
            child: const Text(
              'Or login with',
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          const GoogleSignInButton(),
        ],
      ),
    );
  }
}
