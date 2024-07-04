import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });
  final AssetImage image;
  final Text text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          height: 130,
          width: 360,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: image,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 90, left: 20),
            child: text,
          ),
        ),
      ),
    );
  }
}
