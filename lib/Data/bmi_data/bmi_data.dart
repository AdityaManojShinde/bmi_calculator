class BmiInfo {
  static const String title = 'Body Mass Index(BMI)';
  static const String description =
      'Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.';

  static const Map<String, String> info = {
    'Severe Thinness (BMI <= 15):':
        "Worried! You're underweight. Please consult a doctor and consider increasing your calorie intake.",
    'Moderate Thinness (15 < BMI <= 16):':
        "You're underweight. Consider adding more nutritious foods to your diet and consulting a healthcare professional for personalized advice.",
    'Mild Thinness (16 < BMI <= 18.5):':
        "You're slightly underweight. Eating more balanced meals and focusing on healthy weight gain might be beneficial.",
    'Normal Weight (18.5 < BMI <= 25):':
        "You're at a healthy weight! Keep up the good work!",
    'Overweight (25 < BMI <= 30):':
        "You're slightly overweight. Focusing on a balanced diet and regular exercise can help maintain good health.",
    'Moderate Obesity (30 < BMI <= 35):':
        "You're overweight. Implementing lifestyle changes like healthy eating and regular physical activity can be helpful. Consulting a doctor is recommended.",
    'Severe Obesity (35 < BMI <= 40):':
        "You're seriously overweight. Making significant changes in diet and exercise is crucial for your health. Seek professional guidance from a doctor or nutritionist.",
    'Very Severe Obesity (BMI > 40):':
        "You're at an extremely high risk for health complications due to obesity. Immediate professional medical intervention and lifestyle changes are essential.",
  };
}
