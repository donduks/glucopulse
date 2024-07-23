import 'package:flutter/material.dart';

class DetailPageHeader extends StatelessWidget {
  const DetailPageHeader({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });

  final Text text;
  final AssetImage image;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.15,
      decoration:
          BoxDecoration(image: DecorationImage(image: image, fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            top: screenSize.height * 0.1,
            left: screenSize.width * 0.1,
            child: text,
          ),
          Positioned(
              child: GestureDetector(
                  onTap: onTap,
                  child: const Image(image: AssetImage('images/back.png')))),
        ],
      ),
    );
  }
}
