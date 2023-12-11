String giveMessage(double bmi) {
  if (bmi <= 15) {
    return "Severe Underweight\nWorried! You're underweight. Please consult a doctor and consider increasing your calorie intake.";
  } else if (bmi <= 16) {
    return "Moderate Underweight\nYou're underweight. Consider adding more nutritious foods to your diet and consulting a healthcare professional for personalized advice.";
  } else if (bmi <= 18.5) {
    return "Underweight\nYou're underweight. Consider adding more nutritious foods to your diet and consulting a healthcare professional for personalized advice.";
  } else if (bmi <= 25) {
    return "Normal Weight \nYou're at a healthy weight! Keep up the good work!";
  } else if (bmi <= 30) {
    return "Overweight\nYou're slightly overweight. Focusing on a balanced diet and regular exercise can help maintain good health.";
  } else if (bmi <= 35) {
    return "Obesity\nYou're seriously overweight. Making significant changes in diet and exercise is crucial for your health. Seek professional guidance from a doctor or nutritionist.";
  } else if (bmi <= 40) {
    return "Severe Obesity\nYou're at an extremely high risk for health complications due to obesity. Immediate professional medical intervention and lifestyle changes are essential.";
  } else {
    return "Very Severe Obesity\nYou're at an extremely high risk for health complications due to obesity. Immediate professional medical intervention and lifestyle changes are essential.";
  }
}
