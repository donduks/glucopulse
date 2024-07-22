import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/detail_page_header.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/my_entries.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';
import 'package:gluco_pulse3/core/widgets/text_style.dart';

class Hypoglycemia extends StatelessWidget {
  const Hypoglycemia({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: 'hypo',
              child: DetailPageHeader(
                text: Text(
                  'Hypoglycemia',
                  style: infoCardStyle,
                ),
                image: const AssetImage('images/hyper.jpg'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.8,
              width: screenSize.width * 0.9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    hypoIntro,
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    causesOfHypo,
                    one,
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    two,
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    three,
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    four,
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    five,
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    effectOfHypo,
                    Row(
                      children: [
                        mildHypo,
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.008,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect1,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect2,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect3,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect4,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect5,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect6,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect7,
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Row(
                      children: [
                        moderateHypo,
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.008,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect11,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect22,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect33,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect44,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect55,
                      ],
                    ),
                    Row(
                      children: [
                        severeHypo,
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.008,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect111,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect222,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                        SizedBox(
                          width: screenSize.height * 0.02,
                        ),
                        effect333,
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
