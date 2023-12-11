import 'package:bmi_calculator/Data/consts/colors.dart';
import 'package:flutter/material.dart';

Color changeColor(double bmi) {
  if (bmi == 0.0) {
    return AppColors.colorWhite;
  }
  if (bmi < 18.5) {
    return AppColors.chartColorUnderweight;
  } else if (bmi == 18.5 || bmi < 24.9) {
    return AppColors.chartColorNormalweight;
  } else if (bmi == 25 || bmi <= 29.9) {
    return AppColors.chartColorOverweight;
  } else {
    return AppColors.chartColorObesity;
  }
}
