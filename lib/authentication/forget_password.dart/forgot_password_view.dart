import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';

import '../component/loading_error.dart';
import '../component/text_input.dart';
import 'controller/forgot_password_controller.dart';

class ForgotPasswordView extends ConsumerWidget {
  const ForgotPasswordView({super.key});

  String _getButtonText(FormzStatus status) {
    if (status.isSubmissionInProgress) {
      return "requesting";
    } else if (status.isSubmissionFailure) {
      return "failed";
    } else if (status.isSubmissionSuccess) {
      return "done ✅";
    } else {
      return "request";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forgotPasswordState = ref.watch(forgotPasswordProvider);
    final status = forgotPasswordState.status;

    ref.listen<ForgotPasswordState>(
      forgotPasswordProvider,
      (previous, current) {
        if (current.status.isSubmissionFailure) {
          Navigator.of(context).pop();
          ErrorDialog.show(context, "${current.errorMessage}");
        }
      },
    );

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInputField(
                hintText: 'Please enter your Email',
                errorText: Email.showEmailErrorMessage(
                  forgotPasswordState.email.error,
                ),
                onChanged: (email) {
                  ref
                      .read(forgotPasswordProvider.notifier)
                      .onEmailChange(email);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: status.isSubmissionInProgress
                        ? null
                        : () {
                            Navigator.of(context).pop();
                          },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: status.isSubmissionInProgress
                        ? null
                        : () {
                            ref
                                .read(forgotPasswordProvider.notifier)
                                .forgotPassword();
                          },
                    child: Text(_getButtonText(status)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
