import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

import '../component/text_input.dart';
import 'controller/signup_controller.dart';

class NameField extends ConsumerWidget {
  const NameField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProvider);
    final showError = signUpState.name.invalid;
    final signUpController = ref.read(signUpProvider.notifier);

    return TextInputField(
      hintText: 'Name',
      errorText:
          showError ? Name.showNameErrorMessage(signUpState.name.error) : null,
      onChanged: (name) => signUpController.onNameChange(name),
      //onChanged: (name) => ref.read(nameProvider.notifier).addName(name),
    );
  }
}
