import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/colors.dart';
import 'package:lottie/lottie.dart';

import '../../home_page/shared/providers.dart';
import '../infrastructure/number_buttons.dart';

class MgdlConverter extends ConsumerStatefulWidget {
  const MgdlConverter({super.key});

  @override
  ConsumerState<MgdlConverter> createState() => _MgdlConverterState();
}

class _MgdlConverterState extends ConsumerState<MgdlConverter>
    with SingleTickerProviderStateMixin {
  late final AnimationController myController;

  String inputText = '';
  bool onPressed = false;
  double mgdl = 0;

  @override
  void initState() {
    super.initState();
    myController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    inputText = ref.watch(numberProvider);

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenSize.width * 0.05),
              child: Text(
                'Converter',
                style: TextStyle(
                  fontSize: screenSize.width * 0.06,
                  fontWeight: FontWeight.w900,
                  color: kButtonsTextColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: screenSize.width * 0.05),
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.1,
              color: kAppColor2,
              child: Center(
                child: Text(
                  inputText,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kButtonsTextColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: screenSize.width * 0.05),
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.05,
              color: kAppColor1,
              child: Row(
                children: [
                  Text(
                    'mmol',
                    style: TextStyle(
                      color: onPressed ? Colors.black26 : Colors.green,
                      fontWeight: onPressed ? FontWeight.bold : FontWeight.w900,
                      fontSize: onPressed
                          ? screenSize.width * 0.03
                          : screenSize.width * 0.06,
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.02,
                  ),
                  Lottie.asset(
                    'images/new.json',
                    controller: myController,
                    width: screenSize.width * 0.1,
                    height: screenSize.height * 0.1,
                    repeat: false,
                  ),
                  SizedBox(
                    width: screenSize.width * 0.02,
                  ),
                  Text(
                    'mg/dl',
                    style: TextStyle(
                      color: onPressed ? Colors.green : Colors.black26,
                      fontWeight: onPressed ? FontWeight.w900 : FontWeight.bold,
                      fontSize: onPressed
                          ? screenSize.width * 0.06
                          : screenSize.width * 0.03,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: screenSize.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButtons(number: '1', ref: ref),
                    NumberButtons(number: '2', ref: ref),
                    NumberButtons(number: '3', ref: ref),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButtons(number: '4', ref: ref),
                    NumberButtons(number: '5', ref: ref),
                    NumberButtons(number: '6', ref: ref),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButtons(number: '7', ref: ref),
                    NumberButtons(number: '8', ref: ref),
                    NumberButtons(number: '9', ref: ref),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberButtons(number: '.', ref: ref),
                    NumberButtons(number: '0', ref: ref),
                    SizedBox(
                      height: screenSize.height * 0.08,
                      width: screenSize.width * 0.25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kAppColor1,
                        ),
                        onPressed: () {
                          ref.read(numberProvider.notifier).onClearPressed();
                          //onClearPressed();
                          myController.reset();
                          onPressed = false;
                          mgdl = 0;
                        },
                        child: const Text('C'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.04),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      screenSize.width * 0.75,
                      screenSize.height * 0.05,
                    ),
                    backgroundColor: Colors.green,
                    elevation: 5,
                  ),
                  onPressed: () {
                    final yourMmol = double.parse(inputText);
                    if (inputText.isNotEmpty) {
                      ref.read(numberProvider.notifier).convert(multiplier: 18);
                      mgdl = yourMmol * 18;

                      myController.forward();
                      onPressed = true;

                      return;
                    }
                  },
                  child: const Text('Convert'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
