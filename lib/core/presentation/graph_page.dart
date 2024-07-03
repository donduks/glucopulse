import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';
import 'package:gluco_pulse3/data_storage/domain/blood_sugar_entry.dart';
import 'package:hive_flutter/adapters.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextFieldFillColor,
      body: ValueListenableBuilder(
        valueListenable:
            Hive.box<BloodSugarEntry>('bloodSugarData').listenable(),
        builder: (context, Box<BloodSugarEntry> box, _) {
          if (box.isEmpty) {
            return const Center(
              child: Text('No data available'),
            );
          }

          // Prepare data for the bar chart
          final barGroups = <BarChartGroupData>[];
          for (int i = 0; i < box.length; i++) {
            final entry = box.getAt(i) as BloodSugarEntry;
            barGroups.add(
              BarChartGroupData(
                x: i,
                barRods: [
                  BarChartRodData(
                      toY: entry.value.toDouble(),
                      color: entry.value > 7
                          ? kSugarHigh
                          : entry.value < 4
                              ? kSugarLow
                              : kSugarOkColor,
                      width: 15,
                      borderRadius: BorderRadius.circular(4)),
                ],
                // showingTooltipIndicators: [0],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: BarChart(
              BarChartData(
                barGroups: barGroups,
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: true),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        final entry =
                            box.getAt(value.toInt()) as BloodSugarEntry;
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          angle: 0,
                          child: Text(
                            '${entry.dateTime.day}/${entry.dateTime.month}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
