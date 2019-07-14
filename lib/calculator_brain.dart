import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calcBMI(){
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result(){
    if (_bmi >= 25){
      return "Overweight";
    } else if (_bmi > 18.5){
      return "Normal";
    } else {
      return 'Underweight';
    }
  }

  String interpret(){
    if (_bmi >= 25){
      return "Absolute unit";
    } else if (_bmi > 18.5){
      return "You OK";
    } else {
      return 'You need to eat a lil more ok';
    }
  }
}