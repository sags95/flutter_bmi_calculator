import 'package:flutter/material.dart';
import 'constants.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final String iconTitle;


  IconCard({@required this.icon, @required this.iconTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconTitle,
          style: klabelTextStyle
        ),
      ],
    );
  }
}