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
    if (_bmi >= 40) {
      return 'Obesidad extrema';
    } else if (_bmi > 35) {
      return 'Obesidad severa';
    } else if (_bmi > 30) {
      return 'Obesidad';
    } else if (_bmi > 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Bajo peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return 'Tienes un nivel de obesidad alarmante, empieza ya a tomar acciones master 🤪';
    } else if (_bmi > 35) {
      return 'Tienes un nivel de obesidad preocupante, es momento de mejorar dieta y ejercicio crack 🥴';
    } else if (_bmi > 30) {
      return 'Tienes un indice por encima del sobrepeso, deberias cambiar tus habitos de dieta y ejercicio titan! 🤠';
    } else if (_bmi > 25) {
      return 'Tienes un indice por encima de lo normal, intenta ejercitarte mas capo! 😆';
    } else if (_bmi > 18.5) {
      return 'Tienes un indice normal, bien hecho tigre! 😎';
    } else {
      return 'Tienes un indice por debajo de lo normal, intenta alimentarte mejor maquina! 😄';
    }
  }
}
