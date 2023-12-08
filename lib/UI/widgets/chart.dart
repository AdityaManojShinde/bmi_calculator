import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BMIChart extends StatelessWidget {
  const BMIChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 5,
        centerSpaceRadius: 50,
        sections: [
          PieChartSectionData(
            title: 'Under Weight',
            value: 18.5,
            color: Colors.blueAccent,
          ),
          PieChartSectionData(
            title: 'Healthy',
            value: 24.9,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
