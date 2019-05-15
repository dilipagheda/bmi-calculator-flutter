import 'package:flutter/material.dart';

import 'constants.dart';

class GenderCardContent extends StatelessWidget {
  final IconData contentIcon;
  final String contentText;
  GenderCardContent({this.contentIcon, this.contentText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            contentIcon,
            color: Colors.white,
            size: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            contentText,
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }
}
