import 'package:bmi_calculator/Data/chart_data/chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BMIChart extends StatelessWidget {
  const BMIChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      swapAnimationDuration: const Duration(milliseconds: 720),
      PieChartData(
        borderData: FlBorderData(show: false),
        sectionsSpace: 3,
        centerSpaceRadius: 80,
        sections: chartData,
      ),
    );
  }
}
