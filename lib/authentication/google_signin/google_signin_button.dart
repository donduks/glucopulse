import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/colors.dart';

import '../component/loading_error.dart';
import 'controller/google_signin_controller.dart';

User? user;
final FirebaseAuth myAuth = FirebaseAuth.instance;

class GoogleSignInButton extends ConsumerStatefulWidget {
  const GoogleSignInButton({super.key});

  @override
  ConsumerState<GoogleSignInButton> createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends ConsumerState<GoogleSignInButton> {
  @override
  void initState() {
    super.initState();
    myAuth.authStateChanges().listen((event) {
      user = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    ref.listen<GoogleSignInState>(
      googleSignInProvider,
      (previous, current) {
        if (current == GoogleSignInState.loading) {
          LoadingSheet.show(context);
        } else if (current == GoogleSignInState.error) {
          Navigator.of(context).pop();

          ErrorDialog.show(context, "Google signin failed");
        } else {
          Navigator.of(context).pop();
        }
      },
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            ref.read(googleSignInProvider.notifier).signInWithGoogle();
          },
          child: Container(
            height: screenSize.height * 0.05,
            width: screenSize.width * 0.17,
            decoration: BoxDecoration(
              color: kAppColor2,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image(
              image: const AssetImage('images/gee.png'),
              width: screenSize.width * 0.02,
              height: screenSize.height * 0.02,
            ),
          ),
        ),
      ],
    );
  }
}
