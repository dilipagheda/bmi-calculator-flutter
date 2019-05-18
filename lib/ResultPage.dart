import 'package:flutter/material.dart';
import 'action_button.dart';
import 'constants.dart';
import 'model/BMI.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double bmiValue = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your Result",
                style: kHeaderStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              cardColor: kCardColor,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    BMI.interpretation(bmiValue),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    bmiValue.toStringAsFixed(1),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Normal BMI Range:", style: kLabelStyle),
                  Text(
                    "18.5 - 25",
                    style: kContentStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      BMI.recommendation(bmiValue),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ActionButton(
              caption: "RE-CALCULATE",
              action: (bmi) {
                print("pop");
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
