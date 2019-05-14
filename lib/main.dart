import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple.shade900,
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: Colors.blue.shade100,
      ),
      home: InputPage(),
    );
  }
}
