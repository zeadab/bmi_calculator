import 'dart:math';

class Bmi {
  Bmi({required this.height, required this.weight});
  final int height;
  final int weight;
   late double _bmi = 0;

  String CalculateBmi() {

    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }




  String Checkresult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else
      return 'UNDERWEIGHT';
  }

  String Resultmessage() {
    if (_bmi >= 25) {
      return 'You have to Excersice More';
    } else if (_bmi >= 18.5) {
      return 'Perfect! YOu are fit ';
    } else
      return 'You have to eat more, also excersice too ;)';
  }
}
