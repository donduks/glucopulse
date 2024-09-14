// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/colors.dart';
import 'package:gluco_pulse3/home_page/widgets/buttons.dart';

class OnBoardingCard extends StatelessWidget {
  const OnBoardingCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPress,
  });
  final String image, title, description, buttonText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(color: kButtonsTextColor),
                ),
              ],
            ),
          ),
          AppButton(
            screenSize: screenSize,
            height: 50,
            width: 350,
            onTap: () => onPress(),
            text: Text(buttonText),
            color: Colors.blue,
            offset: const Offset(0, 0),
          )
        ],
      ),
    );
  }
}
