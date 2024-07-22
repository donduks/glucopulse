import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/shared/providers.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';

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
