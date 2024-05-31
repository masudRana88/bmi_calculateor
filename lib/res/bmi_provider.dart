import 'package:bmi_calculator/res/bmi_level.dart';
import 'package:flutter/material.dart';

class BmiProvider extends ChangeNotifier{
  double _heightValue = 1.5;
  double _weightValue = 50.0;
  String _status = "";
  double _bmi = 0;
  Color _borderColor = Colors.green;

  double get heightValue => _heightValue;
  double get weightValue => _weightValue;
  String get status => _status;
  double get bmi => _bmi;
  Color get borderColor => _borderColor;

  BmiProvider(){
    _updateBmi();
  }
  void chageHeight(double value){
    _heightValue = value;
    _updateBmi();
    notifyListeners();
  }
  void chageWeight(double value){
    _weightValue = value;
    _updateBmi();
    notifyListeners();
  }

  void _updateBmi(){
    double bmiValue = weightValue/(heightValue * heightValue);
    _bmi = bmiValue;
    _updateColorAndStatus(bmi);
  }
  void _updateColorAndStatus(double bmi){
    if(bmi < 16){
      _borderColor = Colors.red.shade300;
      _status = BMI.uWSevere;
    }
    else if(bmi >= 16.0 && bmi <= 16.9){
      _borderColor = Colors.green.shade300;
      _status = BMI.uWModerate;
    }
    else if(bmi >= 17.0 && bmi <= 18.4){
      _borderColor = Colors.green.shade400;
      _status = BMI.uWMild;
    }
    else if(bmi >= 18.5 && bmi <= 24.9){
      _borderColor = Colors.green;
      _status = BMI.normal;
    }
    else if(bmi >= 25.0 && bmi <= 29.9){
      _borderColor = Colors.green.shade600;
      _status = BMI.oWPre;
    }
    else if(bmi >= 30.0 && bmi <= 34.9){
      _borderColor = Colors.red.shade300;
      _status = BMI.obese_1;
    }
    else if(bmi >= 35.0 && bmi <= 39.9){
      _borderColor = Colors.red.shade600;
      _status = BMI.obese_2;
    }
    else if(bmi >= 40.0){
      _borderColor = Colors.red.shade900;
      _status = BMI.obese_3;
    }
  }




}