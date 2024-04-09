import 'dart:math';
class CalculatorBrain {
  
  CalculatorBrain({required this.height,required this.weight});
  int height;
  int weight;
  double _bmi = 0;
  String calculateBMI(){
        _bmi=weight/pow(height/100, 2);
        return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >=25){
      return 'OVERWEIGHT';
    }else if(_bmi >= 19){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation(){
    if (_bmi >=25){
      return 'Your have higher weight than a normal body, you should exercise more!';
    }else if(_bmi >= 19){
      return 'You have normal BMI, Grrr8 Job!!!';
    }
    else{
      return 'You should Eat more';
    }
  }
}