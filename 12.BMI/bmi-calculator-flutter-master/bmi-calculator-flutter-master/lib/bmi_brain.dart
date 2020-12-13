import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';

class BMIBrain {
  BMIBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;
  String calBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exrcise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.Good job.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  TextStyle getColor() {
    if (_bmi >= 18.5 && _bmi < 25) {
      return kResultTextStyle;
    } else {
      return kResultTextStyleRed;
    }
  }
}
