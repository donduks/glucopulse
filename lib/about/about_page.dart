import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/about/about_input.dart';
import 'package:gluco_pulse3/about/paragraphs.dart';

import '../home_page/shared/providers.dart';
import '../core/colors.dart';

class AboutPage extends ConsumerStatefulWidget {
  const AboutPage({super.key});

  @override
  ConsumerState<AboutPage> createState() => _AboutPageState();
}

TextEditingController nameController = TextEditingController();

class _AboutPageState extends ConsumerState<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.16,
              decoration: BoxDecoration(
                color: kTextFieldFillColor,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(5, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.08),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.06),
                          child: Text(
                            'Hello $name',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: kButtonsTextColor,
                              fontSize: screenSize.width * 0.05,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Your User Name'),
                                    content: TextField(
                                      controller: nameController,
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            ref
                                                .read(nameProvider.notifier)
                                                .addName(nameController.text);

                                            Navigator.pop(context);
                                            nameController.clear();
                                          },
                                          child: const Text('Save'))
                                    ],
                                  );
                                });
                          },
                          child: Text(
                            'click to enter name',
                            style: TextStyle(color: kButtonsTextColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: screenSize.width * 0.08,
                        top: screenSize.height * 0.05),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: const AssetImage('images/beat.gif'),
                      backgroundColor: kAppColor2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.006,
            ),
            SizedBox(
              height: screenSize.height * 0.78,
              width: screenSize.width * 0.9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.05),
                          child: about,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.05),
                      child: const Paragraphs(),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.05,
                              vertical: screenSize.height * 0.05),
                          child: kfs,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.05),
                          child: kf1Head,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: screenSize.height * 0.07,
                              left: screenSize.width * 0.095),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                            width: screenSize.width * 0.7,
                            height: screenSize.height * 0.1,
                            child: kf1_1),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: screenSize.height * 0.07,
                              left: screenSize.width * 0.095),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                            width: screenSize.width * 0.7,
                            height: screenSize.height * 0.1,
                            child: kf1_2),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.05),
                          child: kf2Head,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: screenSize.height * 0.07,
                              left: screenSize.width * 0.095),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                            width: screenSize.width * 0.7,
                            height: screenSize.height * 0.12,
                            child: kf2_1),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: screenSize.height * 0.07,
                              left: screenSize.width * 0.095),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                            width: screenSize.width * 0.7,
                            height: screenSize.height * 0.1,
                            child: kf2_2),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.05),
                          child: kf3Head,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: screenSize.height * 0.07,
                              left: screenSize.width * 0.095),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: kButtonsTextColor,
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.7,
                          height: screenSize.height * 0.1,
                          child: kf3_1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.04,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
