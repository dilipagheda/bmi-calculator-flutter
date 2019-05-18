import 'dart:math';

class BMI {
  int weight; //kg
  double height; //cm

  double _bmi;
  BMI({this.weight, this.height});
  double calc() {
    if (this.height == null || this.weight == null) return null;
    _bmi = this.weight / pow(this.height / 100, 2);
    return _bmi;
  }

  static String interpretation(double bmiValue) {
    String result = '';
    if (bmiValue <= 15) {
      result = 'Very severely underweight';
    } else if (bmiValue > 15 && bmiValue <= 16) {
      result = 'Severely underweight';
    } else if (bmiValue <= 18.5 && bmiValue > 16) {
      result = 'Underweight';
    } else if (bmiValue > 18.5 && bmiValue <= 25) {
      result = 'Normal (healthy weight)';
    } else if (bmiValue > 25 && bmiValue <= 30) {
      result = 'Overweight';
    } else if (bmiValue > 30 && bmiValue <= 35) {
      result = 'Moderately obese';
    } else if (bmiValue > 35 && bmiValue <= 40) {
      result = 'Severely obese';
    } else if (bmiValue > 40) {
      result = 'Very severely obese';
    }
    return result;
  }

  static String recommendation(double bmiValue) {
    String result = '';
    if (bmiValue <= 15) {
      result = 'You need to start eating lots!';
    } else if (bmiValue > 15 && bmiValue <= 16) {
      result = 'You need to eat a lot more!';
    } else if (bmiValue <= 18.5 && bmiValue > 16) {
      result = 'You need to eat little bit more!';
    } else if (bmiValue > 18.5 && bmiValue <= 25) {
      result = 'Normal (healthy weight)';
    } else if (bmiValue > 25 && bmiValue <= 30) {
      result = 'You need to eat bit less and move bit more';
    } else if (bmiValue > 30 && bmiValue <= 35) {
      result = 'You really need to cut down your calories and join a gym';
    } else if (bmiValue > 35 && bmiValue <= 40) {
      result = 'You only need to eat one meal a day and go to gym bit more';
    } else if (bmiValue > 40) {
      result = 'You need to start juice fasting and exercise really hard';
    }
    return result;
  }
}
