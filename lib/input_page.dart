import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_card_content.dart';

const cardColor = Colors.black;
const selectedCardColor = Colors.purple;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        tapHandler: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        content: GenderCardContent(
                          contentIcon: FontAwesomeIcons.mars,
                          contentText: "MALE",
                        ),
                        cardColor: selectedGender == Gender.male
                            ? selectedCardColor.shade900
                            : cardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        tapHandler: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        content: GenderCardContent(
                          contentIcon: FontAwesomeIcons.venus,
                          contentText: "FEMALE",
                        ),
                        cardColor: selectedGender == Gender.female
                            ? selectedCardColor.shade900
                            : cardColor,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: cardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        cardColor: cardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        cardColor: cardColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
