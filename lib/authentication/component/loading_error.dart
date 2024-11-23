import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog._(this.error, {super.key});
  final String error;

  static Future<void> show(BuildContext context, String errorMessage) {
    return showDialog(
        context: context, builder: (context) => ErrorDialog._(errorMessage));
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(error),
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Okay'),
        ),
      ],
    );
  }
}

class LoadingSheet extends StatelessWidget {
  const LoadingSheet._({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.blueGrey.withOpacity(0.5),
        isDismissible: false,
        enableDrag: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(48))),
        context: context,
        builder: (_) => const LoadingSheet._());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: LoadingAnimationWidget.newtonCradle(
          color: const Color.fromARGB(255, 25, 34, 39),
          size: 80,
        ),
      ),
    );
  }
}
