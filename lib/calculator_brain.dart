import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Bajo peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Tienes un indice por encima de lo normal, intenta ejercitarte mas capo! 😆';
    } else if (_bmi > 18.5) {
      return 'Tienes un indice normal, bien hecho tigre! 😎';
    } else {
      return 'Tienes un indice por debajo de lo normal, intenta alimentarte mejor maquina! 😄';
    }
  }
}
