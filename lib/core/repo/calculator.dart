import 'dart:math';

double calculateBMI(double weight, double height) {
  if (height == 0) {
    return 0;
  } else {
    // Convert height to meters
    final heightInMeters = height / 100;

    // Calculate BMI
    final bmi = weight / pow(heightInMeters, 2);

    return bmi;
  }
}
