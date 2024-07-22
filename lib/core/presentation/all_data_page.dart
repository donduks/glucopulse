import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:share_plus/share_plus.dart';

import '../../data_storage/aplication/box_data.dart';
import '../../data_storage/domain/blood_sugar_entry.dart';

class AllDataPage extends StatelessWidget {
  const AllDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<BloodSugarEntry>('bloodSugarData');
    final boxData = BoxData();
    final average = boxData.getAverage();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Sugar Entries'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              final data = box.values
                  .map((entry) =>
                      'Blood Sugar: ${entry.value}, Date: ${entry.dateTime}')
                  .join('\n');
              Share.share(data);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Text('Average Blood Sugar: ${average.toStringAsFixed(2)}'),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(3),
              },
              children: [
                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Blood Sugar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Date',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                ...box.values.map(
                  (entry) {
                    return TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(entry.value.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(entry.dateTime.toString()),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
