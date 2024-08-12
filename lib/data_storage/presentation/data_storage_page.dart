import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/data_storage/presentation/fasting_storage_page.dart';
import 'package:gluco_pulse3/data_storage/presentation/random_storage_page.dart';

import '../../home_page/shared/providers.dart';
import '../../home_page/widgets/buttons.dart';
import '../../core/colors.dart';

class AppDataStoragePage extends ConsumerStatefulWidget {
  const AppDataStoragePage({super.key});

  @override
  ConsumerState<AppDataStoragePage> createState() => _AppDataStoragePageState();
}

class _AppDataStoragePageState extends ConsumerState<AppDataStoragePage> {
  late bool isFasting;
  late bool isRandom;
  @override
  void initState() {
    super.initState();
    isFasting = true;
    isRandom = false;
  }

  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: screenSize.height * 0.15,
            decoration: BoxDecoration(
              color: kAppColor1,
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
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.08),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kButtonsTextColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.08),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: const AssetImage('images/beat.gif'),
                    backgroundColor: kAppColor1,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              AppButton(
                screenSize: screenSize,
                height: screenSize.height * 0.03,
                width: screenSize.width * 0.2,
                onTap: () {
                  setState(() {
                    isFasting = true;
                    isRandom = false;
                  });
                },
                text: Text(
                  'Fasting',
                  style: TextStyle(
                    color: isFasting ? Colors.black : Colors.grey,
                    fontWeight: isFasting ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                color: isFasting ? kAppColor2 : kAppColor1,
                offset: isFasting ? const Offset(0, 0) : const Offset(0, 3),
              ),
              SizedBox(
                width: screenSize.width * 0.28,
              ),
              AppButton(
                screenSize: screenSize,
                height: screenSize.height * 0.03,
                width: screenSize.width * 0.2,
                onTap: () {
                  setState(() {
                    isRandom = true;
                    isFasting = false;
                  });
                },
                text: Text(
                  'Random',
                  style: TextStyle(
                    color: isRandom ? Colors.black : Colors.grey,
                    fontWeight: isRandom ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                color: isRandom ? kAppColor2 : kAppColor1,
                offset: isRandom ? const Offset(0, 0) : const Offset(0, 3),
              ),
            ],
          ),
          Expanded(
              child:
                  isFasting ? const FastingDataPage() : const RandomDataPage())
        ],
      ),
    );
  }
}
