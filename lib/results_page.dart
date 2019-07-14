import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottomBtn.dart';

class ResultsPage extends StatelessWidget {

  final String BMIResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.interpretation, this.BMIResult, this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch, // In order to not set width to child container width (text)
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  resultText,
                  style: kTitleTxtStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTxtStyle,
                    ),
                    Text(
                      BMIResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTxtStyle,
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
            ),
            BottomBtn(
              btnTitle: 'RE-CALCULATE',
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
    );
  }
}
