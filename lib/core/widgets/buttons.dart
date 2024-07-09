import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.screenSize,
    required this.height,
    required this.width,
    required this.onTap,
    required this.text,
    required this.color,
    required this.offset,
  });

  final Size screenSize;
  final double height;
  final double width;
  final void Function() onTap;
  final Text text;
  final Color color;
  final Offset offset;

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
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: offset,
              blurRadius: 3,
            ),
          ],
        ),
        child: Center(child: text),
      ),
    );
  }
}
