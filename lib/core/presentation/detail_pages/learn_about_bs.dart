import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/my_entries.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';

class LearnAboutBS extends StatelessWidget {
  const LearnAboutBS({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kInfoPage,
      appBar: AppBar(
        title: const Text('Learn About Blood Sugar'),
        backgroundColor: kInfoPage,
      ),
      body: Center(
        child: Column(
          children: [
            header1,
            Container(
              height: screenSize.height * 0.8,
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
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.brown,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom1,
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.brown,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom2,
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.brown,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom3,
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.brown,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom4,
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.brown,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom5,
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.brown,
                          ),
                          SizedBox(
                            width: screenSize.width * 0.08,
                          ),
                          symptom6,
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.brown,
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
