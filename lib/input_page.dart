import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomConHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomConColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender){
    if (gender == 1){
      if (maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    else if (gender == 2){
      if (femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: new IconCard(icon: FontAwesomeIcons.mars, iconTitle: 'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ReusableCard(
                        cardChild: IconCard(icon: FontAwesomeIcons.venus, iconTitle: 'FEMALE'),
                          colour: femaleCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: activeCardColor),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomConColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity, // For landscape
              height: bottomConHeight,
            )
          ],
        ));
  }
}


