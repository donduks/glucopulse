import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/home_page/shared/providers.dart';
import 'package:gluco_pulse3/core/colors.dart';

import '../../home_page/widgets/buttons.dart';
import '../presentation/mgdl_converter.dart';
import '../presentation/mmol_converter.dart';

class Tabs extends ConsumerWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    final screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kAppColor1,
          title: Text(
            'Hello $name',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: kButtonsTextColor,
                fontSize: screenSize.width * 0.05),
          ),
          bottom: const TabBar(tabs: [
            Tab(text: 'mmol'),
            Tab(text: 'mg/dl'),
          ]),
        ),
        body: const TabBarView(children: [
          MmolConverter(),
          MgdlConverter(),
        ]),
      ),
    );
  }
}

class ConverterPage extends ConsumerStatefulWidget {
  const ConverterPage({super.key});

  @override
  ConsumerState<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends ConsumerState<ConverterPage> {
  late bool mgdlToMmolConverter;
  late bool mmolToMgdlConverter;
  @override
  void initState() {
    super.initState();
    mgdlToMmolConverter = true;
    mmolToMgdlConverter = false;
  }

  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: screenSize.height * 0.13,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.08),
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
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.08),
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
                  width: screenSize.width * 0.3,
                  onTap: () {
                    setState(() {
                      mgdlToMmolConverter = true;
                      mmolToMgdlConverter = false;
                    });
                  },
                  text: Text(
                    'mg/dl to mmol',
                    style: TextStyle(
                      color: mgdlToMmolConverter ? Colors.black : Colors.grey,
                      fontWeight: mgdlToMmolConverter
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  color: mgdlToMmolConverter ? kAppColor2 : kAppColor1,
                  offset: mgdlToMmolConverter
                      ? const Offset(0, 0)
                      : const Offset(0, 3),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                AppButton(
                  screenSize: screenSize,
                  height: screenSize.height * 0.03,
                  width: screenSize.width * 0.3,
                  onTap: () {
                    setState(() {
                      mmolToMgdlConverter = true;
                      mgdlToMmolConverter = false;
                    });
                  },
                  text: Text(
                    'mmol to mg/dl',
                    style: TextStyle(
                      color: mmolToMgdlConverter ? Colors.black : Colors.grey,
                      fontWeight: mmolToMgdlConverter
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  color: mmolToMgdlConverter ? kAppColor2 : kAppColor1,
                  offset: mmolToMgdlConverter
                      ? const Offset(0, 0)
                      : const Offset(0, 3),
                ),
              ],
            ),
            Expanded(
              child: mgdlToMmolConverter
                  ? const MmolConverter()
                  : const MgdlConverter(),
            )
          ],
        ),
      ),
    );
  }
}
