import 'package:bmi_calculator/Data/consts/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

const double chartRadius = 60;
const TextStyle chartTitleStyle = TextStyle(
  color: AppColors.colorWhite,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

final List<PieChartSectionData> chartData = [
  PieChartSectionData(
    titleStyle: chartTitleStyle,
    radius: chartRadius,
    showTitle: true,
    title: '18.5',
    value: 18.5,
    color: AppColors.chartColorUnderweight,
  ),
  PieChartSectionData(
    titleStyle: chartTitleStyle,
    radius: chartRadius,
    showTitle: true,
    title: '18.5-24.9',
    value: 24.9,
    color: AppColors.chartColorNormalweight,
  ),
  PieChartSectionData(
    titleStyle: chartTitleStyle,
    radius: chartRadius,
    showTitle: true,
    title: '25.0-29.9',
    value: 29.9,
    color: AppColors.chartColorOverweight,
  ),
  PieChartSectionData(
    titleStyle: chartTitleStyle,
    radius: chartRadius,
    showTitle: true,
    title: '30.0 or more',
    value: 30.0,
    color: AppColors.chartColorObesity,
  ),
];
