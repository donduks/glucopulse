import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

import '../component/text_input.dart';
import 'controller/signin_controller.dart';

class SignInEmailField extends ConsumerWidget {
  const SignInEmailField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInProvider);
    final bool showError = signInState.email.invalid;
    final signInController = ref.read(signInProvider.notifier);
    return TextInputField(
      hintText: 'Email',
      errorText: showError
          ? Email.showEmailErrorMessage(signInState.email.error)
          : null,
      onChanged: (email) => signInController.onEmailChange(email),
    );
  }
}
