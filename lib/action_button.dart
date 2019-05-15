import 'package:flutter/material.dart';
import 'constants.dart';

class ActionButton extends StatelessWidget {
  final String caption;
  ActionButton({@required this.caption});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/result');
      },
      child: Container(
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            caption,
            style: kButtonTextStyle,
          ),
        ),
        color: Colors.pink,
      ),
    );
  }
}
