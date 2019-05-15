import 'package:flutter/material.dart';
import 'action_button.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "Your Result",
              style: kHeaderStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kCardColor,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "NORMAL",
                    style: kLabelStyle,
                  ),
                  Text(
                    "22.1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
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
                  Text("You have a normal BMI", style: kLabelStyle)
                ],
              ),
            ),
          ),
          ActionButton(
            caption: "RE-CALCULATE",
          )
        ],
      ),
    );
  }
}
