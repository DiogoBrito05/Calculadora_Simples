import 'dart:io';

void main() {
  double numero1 = 0;
  double numero2 = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];

  void soma() {
    print(numero1 + numero2);
  }

  void subtracao() {
    print(numero1 - numero2);
  }

  void divisao() {
    print(numero1 / numero2);
  }

  void multiplicar() {
    print(numero1 * numero2);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();

      case "-":
        subtracao();

      case "/":
        divisao();

      case "*":
        multiplicar();

        break;
    }
  }

  void getOperacao() {
    print("Digite uma operação ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      }else{
        print("Operação inválida");
        getOperacao();
      }
    }
  }

  print("Digite o primeior valor!");

  if (entrada != null) {
    if (entrada != "") {
      numero1 = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo valor!");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numero2 = double.parse(entrada!);
    }
  }

  print("O resultado da operação é:");

  calcular();
}
