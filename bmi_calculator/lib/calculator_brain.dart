
import 'dart:math';


class CalculatorBrain {

  final int height;
  final int weight;

  double _bmi = 0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI ()
  {
     _bmi = weight / pow(height/100, 2); // convert height in m , it is in cm

    return  _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    if( _bmi >= 25) {
      return 'Overweight';
    }
    else if (_bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }

  }

  String getInterpretation()  
  {
    if( _bmi >= 25) {
      return 'You need to walk a bit..get some walk';
    }
    else if (_bmi > 18.5) {
      return 'You just keep doing, you are good';
    }
    else {
      return 'Eat more buddy and have lot of fun!';
    }

  }


  
}