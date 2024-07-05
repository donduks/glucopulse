import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_pulse3/core/infrastructure/get_cicle_color.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/shared/providers.dart';
import '../../core/widgets/circles.dart';
import '../../core/widgets/colors.dart';
import '../aplication/box_data2.dart';
import '../domain/blood_sugar_entry2.dart';

class DataStorageRandom extends ConsumerStatefulWidget {
  const DataStorageRandom({super.key});

  @override
  ConsumerState<DataStorageRandom> createState() => _DataStorageRandomState();
}

class _DataStorageRandomState extends ConsumerState<DataStorageRandom> {
  final TextEditingController myController = TextEditingController();
  late BoxData2 myBox2;
  late bool isFasting;
  late bool isRandom;

  @override
  void initState() {
    super.initState();
    myBox2 = BoxData2();
    isFasting = true;
    isRandom = false;
  }

  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: screenSize.height * 0.15,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.08),
                    child: Text(
                      'Hello $name ',
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
                      backgroundColor: kButtonsColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable:
                    Hive.box<BloodSugarEntry2>('bloodSugarData2').listenable(),
                builder: (context, Box<BloodSugarEntry2> box, _) {
                  return ListView.builder(
                    itemCount: box.length,
                    itemBuilder: (context, index) {
                      final entry = box.getAt(box.length - 1 - index);
                      if (entry is BloodSugarEntry2) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.125,
                            decoration: BoxDecoration(
                              color: kTextFieldFillColor,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: kBoxShadowColor,
                                  offset: const Offset(5, 5),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: NewCircle(
                                    bigHeight: screenSize.height * 0.16,
                                    bigWidth: screenSize.width * 0.37,
                                    color: getRandomCircleColor(entry.value),
                                    smallHeight: screenSize.height * 0.3,
                                    smallWidth: screenSize.width * 0.3,
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height * 0.05,
                                  left: MediaQuery.sizeOf(context).width * 0.06,
                                  child: Text(
                                    '${entry.value.toString()} mmol',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.042,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height * 0.06,
                                  left: MediaQuery.sizeOf(context).width * 0.32,
                                  child: Text(
                                    '${entry.dateTime.day.toString()}.${entry.dateTime.month.toString()}.${entry.dateTime.year.toString()}\n${entry.dateTime.hour.toString()}.${entry.dateTime.minute.toString()}',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.038,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height * 0.06,
                                  left: MediaQuery.sizeOf(context).width * 0.75,
                                  child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text('Delete Data'),
                                            content:
                                                const Text('Are You Sure?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  box.deleteAt(
                                                      box.length - 1 - index);
                                                  // ignore: use_build_context_synchronously
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Yes'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Cancel'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    icon: const Icon(Icons.delete),
                                    color: kButtonsTextColor,
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height * 0.06,
                                  left: MediaQuery.sizeOf(context).width * 0.65,
                                  child: IconButton(
                                    onPressed: () {
                                      Share.share(
                                        'Fasting \nSugar Level: ${entry.value.toString()}mmol, \nDate:${entry.dateTime.toString()},'
                                        '\ngluco pulse',
                                      );
                                      // Share.share('gluco pulse' );
                                    },
                                    icon: const Icon(Icons.share),
                                    color: kButtonsTextColor,
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height * 0.03,
                                  left: MediaQuery.sizeOf(context).width * 0.32,
                                  child: Text(
                                    'Fasting',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.042,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height * 0.01,
                                  left: MediaQuery.sizeOf(context).width * 0.56,
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.03,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    decoration: BoxDecoration(
                                      color: kButtonsTextColor,
                                      borderRadius: BorderRadius.circular(20),
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
                                  top: MediaQuery.sizeOf(context).height * 0.01,
                                  left: MediaQuery.sizeOf(context).width * 0.62,
                                  child: Text(
                                    '${(entry.value * 18).toStringAsFixed(0)}mg/dl',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.042,
                                        fontWeight: FontWeight.bold,
                                        color: kTextFieldFillColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: appFloatingActionButtonRandom(context),
    );
  }

  FloatingActionButton appFloatingActionButtonRandom(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kButtonsTextColor,
      child: const Text('Add'),
      onPressed: () {
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
                    myBox2.add(value);
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
      },
    );
  }
}
