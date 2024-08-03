import 'package:flutter/material.dart';
import 'package:gluco_pulse3/home_page/presentation/detail_pages/my_entries.dart';

import '../../../core/colors.dart';
import '../../widgets/text_style.dart';
import 'detail_page_header.dart';

class HowToControlDiabetes extends StatelessWidget {
  const HowToControlDiabetes({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Hero(
            tag: 'how',
            child: DetailPageHeader(
              text: Text(
                'How To Control Diabetes',
                style: infoCardStyle,
              ),
              image: const AssetImage('images/howtoc.jpg'),
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
                  howToIntro,
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  howTo1,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.7,
                          child: howTo11),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.12,
                          width: screenSize.width * 0.7,
                          child: howTo12),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.08,
                          width: screenSize.width * 0.7,
                          child: howTo13),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                          height: screenSize.height * 0.08,
                          width: screenSize.width * 0.7,
                          child: howTo14),
                    ],
                  ),
                  howTo2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.15,
                        width: screenSize.width * 0.7,
                        child: howTo21,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.08,
                        width: screenSize.width * 0.7,
                        child: howTo22,
                      ),
                    ],
                  ),
                  howTo3,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                        width: screenSize.width * 0.7,
                        child: howTo31,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                        width: screenSize.width * 0.7,
                        child: howTo32,
                      ),
                    ],
                  ),
                  howTo4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                        width: screenSize.width * 0.7,
                        child: howTo41,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                        width: screenSize.width * 0.7,
                        child: howTo42,
                      ),
                    ],
                  ),
                  howTo5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.075,
                        width: screenSize.width * 0.7,
                        child: howTo51,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                        width: screenSize.width * 0.7,
                        child: howTo52,
                      ),
                    ],
                  ),
                  howTo6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.7,
                        child: howTo61,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.7,
                        child: howTo62,
                      ),
                    ],
                  ),
                  howTo7,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.07,
                        width: screenSize.width * 0.7,
                        child: howTo71,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.7,
                        child: howTo72,
                      ),
                    ],
                  ),
                  howTo8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                        width: screenSize.width * 0.7,
                        child: howTo81,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                        width: screenSize.width * 0.7,
                        child: howTo82,
                      ),
                    ],
                  ),
                  howTo9,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.7,
                        child: howTo91,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: kButtonsTextColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.06,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.15,
                        width: screenSize.width * 0.7,
                        child: howTo22,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
