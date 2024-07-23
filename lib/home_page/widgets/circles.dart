import 'package:flutter/material.dart';
import 'package:gluco_pulse3/home_page/widgets/colors.dart';

class NewCircle extends StatelessWidget {
  const NewCircle({
    super.key,
    required this.bigHeight,
    required this.bigWidth,
    required this.color,
    required this.smallHeight,
    required this.smallWidth,
  });

  final double bigHeight;
  final double bigWidth;
  final Color color;
  final double smallHeight;
  final double smallWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: bigHeight,
          width: bigWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Container(
          height: smallHeight,
          width: smallWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kAppColor2,
          ),
        ),
      ],
    );
  }
}
