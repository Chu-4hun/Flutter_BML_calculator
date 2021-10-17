import 'dart:math';

class CalculatorBrian {
  CalculatorBrian({required this.height, required this.weight});

  final int height;
  final int weight;

  String calculateBMI() {
    return (weight / pow(height / 100, 2)).toStringAsFixed(1);
  }

  String getResult() {
    double bmi = (weight / pow(height / 100, 2));
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getComment() {
    double bmi = (weight / pow(height / 100, 2));
    if (bmi >= 25) {
      return 'Try to eat less';
    } else if (bmi > 18.5) {
      return 'Nice dick, bro';
    } else {
      return 'Eat freakn meat';
    }
  }
}
