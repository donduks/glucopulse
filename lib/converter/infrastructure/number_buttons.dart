import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/shared/providers.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';

class NumberButtons extends StatelessWidget {
  const NumberButtons({
    super.key,
    required this.number,
    required this.ref,
  });

  final String number;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width * 0.25,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kButtonsColor,
        ),
        onPressed: () =>
            ref.read(numberProvider.notifier).onNumberPressed(number),
        //onNumberPressed(number),
        child: Text(number),
      ),
    );
  }
}
