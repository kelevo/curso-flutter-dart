import 'dart:math' as math;

void main() {
  final cuadrado = new Cuadrado(5);

  cuadrado.area = 100;

  //getter es un metodo que luce como un metodo pero se llama como una propiedad
  print('Area: ${cuadrado.calculaArea()}');
  print('Area get: ${cuadrado.area}');

  print('lado: ${cuadrado.lado}');
}

class Cuadrado {
  double lado = 0;

  // getter
  double get area {
    return this.lado * this.lado;
  }

  // setter
  set area(double valor) {
    this.lado = math.sqrt(valor);
    //print('set: $valor');
  }

  // Constructor
  Cuadrado(double lado) : this.lado = lado;

  double calculaArea() {
    return this.lado * this.lado;
  }
}
