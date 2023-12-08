import 'package:bmi_calculator/core/repo/calculator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final weightProvider = StateProvider<double>((ref) => 0);
final heightProvider = StateProvider<double>((ref) => 0);
final bmiProvider = Provider<double>((ref) {
  final weight = ref.watch(weightProvider);
  final height = ref.watch(heightProvider);
  final bmi = calculateBMI(weight, height);
  return bmi;
});
