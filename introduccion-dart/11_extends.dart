void main() {
  final superman = new Heroe('Spiderman');
  final thanos = new Villano('thanos');

  print(superman);
  print(thanos);
  print(thanos.maldad);
}

abstract class Personaje {
  String? poder;
  String nombre;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;
  // super llama al constructor de la clase que extiende
  Heroe(String nombre) : super(nombre);
}

class Villano extends Personaje {
  int maldad = 50;

  Villano(String nombre) : super(nombre);
}
