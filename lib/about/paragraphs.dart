import 'package:flutter/material.dart';
import 'package:gluco_pulse3/about/about_input.dart';

class Paragraphs extends StatelessWidget {
  const Paragraphs({super.key});
  final String paragraph =
      "GlucoPulse is a sophisticated yet user-friendly mobile application designed to assist individual in managing their blood sugar level effectively. With features such as conversion between mg/dl and mmol units, thorough analysis and storage of blood sugar readings, and seamless data sharing capabilities with healthcare professionals, GlucoPulse offers a comprehensive solution for diabetes management.";

  @override
  Widget build(BuildContext context) {
    final firstWord = paragraph.split(' ')[0];
    final remainingText = paragraph.substring(firstWord.length);
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstWord,
            style: bold1,
          ),
          TextSpan(
            text: remainingText,
            style: myStyle,
          ),
        ],
      ),
    );
  }
}
