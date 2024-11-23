import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

import '../component/animated_button.dart';
import '../component/rounded_button.dart';
import 'controller/signin_controller.dart';

class AppSignInButton extends ConsumerWidget {
  const AppSignInButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    final bool isValidated = signInState.status.isValidated;
    final signInController = ref.read(signInProvider.notifier);
    return AnimatedButton(
      onTap: isValidated
          ? () => signInController.signInWithEmailAndPassword()
          : null,
      child: RoundedButtonStyle(
        title: title,
      ),
    );
  }
}
