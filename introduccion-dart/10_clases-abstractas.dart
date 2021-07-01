void main() {
  // Una clasea abstracta es una clase que no se puede instanciar
  // Sirven para que puedan otras clases implementar lo que tienen ellas

  final perro = new Perro();
  final gato = new Gato();

  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  int? patas;

  void emitirSonido();
}

class Perro implements Animal {
  int? patas;

  void emitirSonido() => print('wawwwwww');
}

class Gato implements Animal {
  int? patas;
  int? cola;

  void emitirSonido() => print('miauuuuuu');
}
