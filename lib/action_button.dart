import 'package:flutter/material.dart';
import 'constants.dart';
import 'model/BMI.dart';

class ActionButton extends StatelessWidget {
  final String caption;
  final double height;
  final int weight;
  final Function action;
  ActionButton(
      {@required this.caption,
      @required this.action,
      this.height,
      this.weight});

  @override
  Widget build(BuildContext context) {
    BMI bmi = BMI(height: height, weight: weight);

    return GestureDetector(
      onTap: () {
        action(bmi.calc());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            caption,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
