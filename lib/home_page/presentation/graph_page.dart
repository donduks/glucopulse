import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gluco_pulse3/home_page/infrastructure/sugar_measurement_color.dart';
import 'package:gluco_pulse3/core/colors.dart';
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
                    color: getFastingCircleColor(entry.value),
                    width: 10,
                    borderRadius: BorderRadius.circular(2),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 20,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
                //showingTooltipIndicators: [0],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: BarChart(
              BarChartData(
                gridData: const FlGridData(show: false),
                barGroups: barGroups,
                borderData: FlBorderData(show: true),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
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
