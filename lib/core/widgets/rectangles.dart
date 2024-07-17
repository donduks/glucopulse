import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.235,
            width: MediaQuery.sizeOf(context).width * 0.8,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        Positioned(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.22,
            width: MediaQuery.sizeOf(context).width * 0.8,
            decoration: BoxDecoration(
                color: kAppColor2,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
          ),
        ),
        Positioned(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.2,
            width: MediaQuery.sizeOf(context).width * 0.8,
            decoration: BoxDecoration(
                color: kAppColor1,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
          ),
        ),
      ],
    );
  }
}
