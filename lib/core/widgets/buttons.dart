import 'package:flutter/material.dart';

import 'colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.screenSize,
    required this.height,
    required this.width,
    required this.onTap,
    required this.text,
  });

  final Size screenSize;
  final double height;
  final double width;
  final void Function() onTap;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.08,
            vertical: screenSize.height * 0.01),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: kTextFieldFillColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              offset: Offset(1, 0),
              blurRadius: 3,
            ),
          ],
        ),
        child: Center(child: text),
      ),
    );
  }
}
