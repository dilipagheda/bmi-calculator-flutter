import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onClick;
  RoundIconButton({@required this.icon, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(
          icon,
          color: Colors.white,
        ),
        elevation: 6.0,
        shape: CircleBorder(),
        onPressed: onClick,
        fillColor: Colors.pink,
        constraints: BoxConstraints(
          minWidth: 45.0,
          minHeight: 45.0,
        ));
  }
}
