import 'package:flutter/material.dart';
import 'package:gluco_pulse3/home_page/presentation/detail_pages/detail_page_header.dart';
import 'package:gluco_pulse3/home_page/presentation/detail_pages/my_entries.dart';
import 'package:gluco_pulse3/home_page/widgets/text_style.dart';

class RoleOfVitamin extends StatelessWidget {
  const RoleOfVitamin({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: 'role',
              child: DetailPageHeader(
                  text: Text(
                    'Role of Vitamin in Diabetes',
                    style: infoCardStyle,
                  ),
                  image: const AssetImage('images/control.jpg'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ),
            Center(
              child: SizedBox(
                height: screenSize.height * 0.7,
                width: screenSize.width * 0.9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      roleNote,
                      Row(
                        children: [
                          vDHeader,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.2,
                        child: vD,
                      ),
                      Row(
                        children: [
                          vB1Header,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.2,
                        child: vB1,
                      ),
                      Row(
                        children: [
                          vB6Header,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.2,
                        child: vB6,
                      ),
                      Row(
                        children: [
                          vB12Header,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.2,
                        child: vB12,
                      ),
                      Row(
                        children: [
                          vCHeader,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.25,
                        child: vC,
                      ),
                      Row(
                        children: [
                          vEHeader,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.25,
                        child: vE,
                      ),
                      Row(
                        children: [
                          vKHeader,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.18,
                        child: vK,
                      ),
                      Row(
                        children: [
                          biotinHeader,
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.15,
                        child: biotin,
                      ),
                      conclusion,
                      SizedBox(
                        height: screenSize.height * 0.03,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
