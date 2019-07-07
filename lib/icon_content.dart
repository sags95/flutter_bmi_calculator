import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}