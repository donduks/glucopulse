import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../component/loading_error.dart';
import 'controller/google_signin_controller.dart';
import 'google_signin_button.dart';

class GoogleSignUpButton extends ConsumerStatefulWidget {
  const GoogleSignUpButton({super.key});

  @override
  ConsumerState<GoogleSignUpButton> createState() => _GoogleSignUpButtonState();
}

class _GoogleSignUpButtonState extends ConsumerState<GoogleSignUpButton> {
  @override
  void initState() {
    super.initState();
    myAuth.authStateChanges().listen((event) {
      user = event;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        const Image(
          image: AssetImage('images/gee.png'),
          width: 25,
          height: 25,
        ),
        TextButton(
          child: const Text(
            "Sign up With google",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          onPressed: () {
            ref.read(googleSignInProvider.notifier).signInWithGoogle();
          },
        ),
      ],
    );
  }
}
