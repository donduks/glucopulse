import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';
import 'package:lottie/lottie.dart';

import '../../core/shared/providers.dart';
import '../infrastructure/number_buttons.dart';

class MmolConverter extends ConsumerStatefulWidget {
  const MmolConverter({super.key});

  @override
  ConsumerState<MmolConverter> createState() => _MmolConverterState();
}

class _MmolConverterState extends ConsumerState<MmolConverter>
    with SingleTickerProviderStateMixin {
  late final AnimationController myController;

  String inputText = '';
  bool onPressed = false;
  double mmol = 0;

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
      body: Column(
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
            color: kTextFieldFillColor,
            child: Center(
              child: Text(
                inputText,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: mmol > 7
                      ? Colors.red
                      : mmol < 4
                          ? Colors.blue
                          : Colors.green,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: screenSize.width * 0.05),
            width: screenSize.width * 0.9,
            height: screenSize.height * 0.05,
            color: kButtonsColor,
            child: Row(
              children: [
                Text(
                  'mg/dl',
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
                  'mmol',
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
            height: screenSize.height * 0.08,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*  SizedBox(
                height: screenSize.height * 0.05,
              ), */
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonsColor,
                    ),
                    onPressed: () {
                      ref.read(numberProvider.notifier).onClearPressed();
                      //onClearPressed();
                      myController.reset();
                      onPressed = false;
                      mmol = 0;
                    },
                    child: const Text('C'),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.08),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    screenSize.width * 0.75,
                    screenSize.height * 0.07,
                  ),
                  backgroundColor: Colors.green,
                  elevation: 5,
                ),
                onPressed: () {
                  final yourMgdl = double.parse(inputText);
                  if (inputText.isNotEmpty) {
                    ref
                        .read(numberProvider.notifier)
                        .convert(multiplier: 0.0556);
                    mmol = yourMgdl * 0.0556;

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
    );
  }
}
