import 'package:bmi_calculator/Data/consts/colors.dart';
import 'package:bmi_calculator/UI/widgets/indicator.dart';
import 'package:flutter/material.dart';

class BmiIndicators extends StatelessWidget {
  const BmiIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BMI Categories:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 2,
        ),
        Indicator(
          color: AppColors.chartColorUnderweight,
          text: 'Underweight = <18.5',
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: AppColors.chartColorNormalweight,
          text: 'Normal weight = 18.5–24.9',
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: AppColors.chartColorOverweight,
          text: 'Overweight = 25–29.9',
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: AppColors.chartColorObesity,
          text: 'Obesity = BMI of 30 or greater',
        ),
        SizedBox(
          height: 28,
        ),
      ],
    );
  }
}
