import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            "Sign In With google",
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
