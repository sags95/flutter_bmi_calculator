import 'package:flutter/material.dart';
import 'constants.dart';

class BottomBtn extends StatelessWidget {
  final Function onTap;
  final String btnTitle;

  BottomBtn({@required this.onTap, @required this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child:
        Center(child: Text(btnTitle, style: kLargeBtnTxtStyle)),
        color: kBottomConColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity, // For landscape
        height: kBottomConHeight,
      ),
    );
  }
}
