import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomConHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomConColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  Color maleCardColor = inactiveCardColor;
//  Color femaleCardColor = inactiveCardColor;
Gender selectedGender;

//  void updateColor(Gender gender){
//    if (gender == Gender.male){
//      if (maleCardColor == inactiveCardColor){
//        maleCardColor = activeCardColor;
//        femaleCardColor = inactiveCardColor;
//      } else {
//        maleCardColor = inactiveCardColor;
//      }
//    }
//    else if (gender == Gender.female){
//      if (femaleCardColor == inactiveCardColor){
//        femaleCardColor = activeCardColor;
//        maleCardColor = inactiveCardColor;
//      } else {
//        femaleCardColor = inactiveCardColor;
//      }
//    }
//  }

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
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                        cardChild: new IconCard(icon: FontAwesomeIcons.mars, iconTitle: 'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                         selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        cardChild: IconCard(icon: FontAwesomeIcons.venus, iconTitle: 'FEMALE'),
                          colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
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



