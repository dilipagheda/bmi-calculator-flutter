import 'package:bmi_calculator/action_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'RoundIconButton.dart';
import 'constants.dart';
import 'gender_card_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double height = 180;
  int weight = 80;
  int age = 38;

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
                            ? kSelectedCardColor.shade900
                            : kCardColor,
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
                            ? kSelectedCardColor.shade900
                            : kCardColor,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                    cardColor: kCardColor,
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "HEIGHT",
                              style: kLabelStyle,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toStringAsFixed(1),
                              style: kContentStyle,
                            ),
                            Text(
                              "cm",
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                              overlayColor: Colors.white,
                              thumbColor: Colors.pink,
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 15,
                              )),
                          child: Slider(
                            min: 100.0,
                            max: 300.0,
                            value: height,
                            onChanged: (double value) {
                              setState(() {
                                height = value;
                              });
                            },
                          ),
                        )
                      ],
                    )),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        cardColor: kCardColor,
                        content: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "WEIGHT",
                                style: kLabelStyle,
                              ),
                            ),
                            Text(
                              weight.toString(),
                              style: kContentStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onClick: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onClick: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        cardColor: kCardColor,
                        content: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "AGE",
                                style: kLabelStyle,
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: kContentStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onClick: () {
                                      setState(() {
                                        age++;
                                      });
                                    }),
                                RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onClick: () {
                                      setState(() {
                                        age--;
                                      });
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ActionButton(caption: "CALCULATE")
            ],
          ),
        ));
  }
}
