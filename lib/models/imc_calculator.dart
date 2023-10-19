import 'dart:math';


 class CalculatorIMC  {
  CalculatorIMC(this.altura, this.peso,);

  final int altura;
  final int peso;  
  dynamic _imc;
  

  String calculateIMC() {
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResults() {
    if (_imc >= 25) {
      return "ACIMA DO PESO";
    } else if (_imc > 18.5) {
      return "NORMAL";
    } else { 
      return "ABAIXO DO PESO";
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return "IMC acima do normal, você precisa diminuir o seu peso. Procure ajuda de um profissional na área de nutrição!";
    } else if (_imc > 18.5) {
      return "Parabéns, o seu peso está normal";
    } else { 
      return "IMC abaixo do normal, você precisa aumentar seu peso. Procure ajuda de um profissional na área de nutrição!";
    }
  }

}

  
