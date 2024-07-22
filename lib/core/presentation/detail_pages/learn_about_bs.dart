import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/detail_page_header.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/my_entries.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';
import 'package:gluco_pulse3/core/widgets/text_style.dart';

class LearnAboutBS extends StatelessWidget {
  const LearnAboutBS({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: 'learn',
              child: DetailPageHeader(
                  text: Text(
                    'Learn About Blood Sugar',
                    style: infoCardStyle,
                  ),
                  image: const AssetImage('images/labs.jpg'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ),
            header1,
            Container(
              height: screenSize.height * 0.7,
              width: screenSize.width * 0.9,
              decoration: const BoxDecoration(),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.06),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      body1,
                      type1Diabetes,
                      type1DiabetesBody,
                      type2Diabetes,
                      type2DiabetesBody,
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      body2,
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      body3,
                      symptoms,
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom1,
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom2,
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom3,
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom4,
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom5,
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom6,
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom7,
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.09,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
