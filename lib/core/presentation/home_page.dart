import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/shared/providers.dart';
import 'package:gluco_pulse3/core/widgets/rectangles.dart';
import 'package:gluco_pulse3/core/presentation/graph_page.dart';
import 'package:gluco_pulse3/core/presentation/info_cards.dart';
import 'package:hive_flutter/adapters.dart';

import '../../data_storage/aplication/box_data.dart';
import '../../data_storage/domain/blood_sugar_entry.dart';
import '../widgets/buttons.dart';
import '../widgets/circles.dart';
import '../widgets/colors.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final TextEditingController myController = TextEditingController();
  late BoxData myBox;
  @override
  void initState() {
    super.initState();
    myBox = BoxData();
  }

  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.13,
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
                      padding: EdgeInsets.only(left: screenSize.width * 0.03),
                      child: Text(
                        'Hello $name',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kButtonsTextColor,
                          fontSize: screenSize.width * 0.05,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: screenSize.width * 0.04),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: const AssetImage('images/beat.gif'),
                        backgroundColor: kButtonsColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * 0.015,
                  top: screenSize.height * 0.02,
                ),
                child: Text(
                  'My Recent Blood Sugar Level',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: screenSize.width * 0.04,
                    color: kButtonsTextColor,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * 0.03,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: screenSize.height * 0.3,
                        width: screenSize.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: const GraphPage(),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: screenSize.height * 0.3,
                        width: screenSize.width * 0.9,
                        decoration: BoxDecoration(
                          color: kButtonsColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ValueListenableBuilder(
                          valueListenable:
                              Hive.box<BloodSugarEntry>('bloodSugarData')
                                  .listenable(),
                          builder: (context, Box<BloodSugarEntry> box, _) {
                            // Get the latest entry
                            final latestEntry = box.isNotEmpty
                                ? box.getAt(box.length - 1)
                                : null;
                            return Center(
                              child: latestEntry != null
                                  ? Stack(
                                      children: [
                                        Positioned(
                                          top: 5,
                                          left: 35,
                                          child: Text(
                                            'Recent',
                                            style: TextStyle(
                                                fontSize:
                                                    screenSize.width * 0.05),
                                          ),
                                        ),
                                        Positioned(
                                          top: screenSize.height * 0.045,
                                          left: screenSize.width * 0.05,
                                          child: const Rectangle(),
                                        ),
                                        Positioned(
                                          top: screenSize.height * 0.065,
                                          left: screenSize.width * 0.2,
                                          child: NewCircle(
                                            bigHeight: screenSize.height * 0.16,
                                            bigWidth: screenSize.width * 0.37,
                                            color: latestEntry.value > 7
                                                ? kSugarHigh
                                                : latestEntry.value < 4
                                                    ? kSugarLow
                                                    : kSugarOkColor,
                                            smallHeight: screenSize.width * 0.3,
                                            smallWidth: screenSize.width * 0.3,
                                          ),
                                        ),
                                        Positioned(
                                          top: screenSize.height * 0.14,
                                          left: screenSize.width * 0.25,
                                          child: Text(
                                            '${latestEntry.value.toString()} mmol',
                                            style: TextStyle(
                                              fontSize: screenSize.width * 0.05,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: screenSize.height * 0.175,
                                          left: screenSize.width * 0.57,
                                          child: Text(
                                            '${latestEntry.dateTime.day.toString()}/${latestEntry.dateTime.month.toString()}/${latestEntry.dateTime.year.toString()}',
                                            style: TextStyle(
                                              fontSize: screenSize.width * 0.05,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: screenSize.height * 0.15,
                                          left: screenSize.width * 0.58,
                                          child: Text(
                                            'fasting',
                                            style: TextStyle(
                                              fontSize: screenSize.width * 0.05,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: screenSize.height * 0.018,
                                          left: screenSize.width * 0.77,
                                          child: CircleAvatar(
                                            radius: 6,
                                            backgroundColor:
                                                latestEntry.value > 7
                                                    ? kSugarHigh
                                                    : latestEntry.value < 4
                                                        ? kSugarLow
                                                        : kSugarOkColor,
                                          ),
                                        ),
                                        Positioned(
                                          top: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.045,
                                          left:
                                              MediaQuery.sizeOf(context).width *
                                                  0.5,
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.03,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.3,
                                            decoration: BoxDecoration(
                                              color: kButtonsTextColor,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: kBoxShadowColor,
                                                  offset: const Offset(5, 5),
                                                  blurRadius: 5,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.045,
                                          left:
                                              MediaQuery.sizeOf(context).width *
                                                  0.55,
                                          child: Text(
                                            '${(latestEntry.value * 18).toStringAsFixed(0)}mg/dl',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.042,
                                                fontWeight: FontWeight.bold,
                                                color: kTextFieldFillColor),
                                          ),
                                        ),
                                      ],
                                    )
                                  : const Text('No entries yet'),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(
                screenSize: screenSize,
                height: screenSize.height * 0.04,
                width: screenSize.width * 0.3,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Add Data'),
                        content: TextField(
                          keyboardType: TextInputType.number,
                          controller: myController,
                          decoration: const InputDecoration(
                            hintText: 'Sugar Reading...',
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              final double value =
                                  double.tryParse(myController.text) ?? 0;
                              myBox.add(value);
                              myController.clear();
                              setState(() {});
                              Navigator.pop(context);
                            },
                            child: const Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                  /*  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataStoragePage()),
                  ); */
                },
                text: const Text('Click to Add'),
              ),
              SizedBox(
                height: screenSize.height * 0.008,
              ),
              const InfoCards()
            ],
          ),
        ),
      ),
    );
  }
}
