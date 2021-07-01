abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Estoy volando');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  // Delfin
  final delfin1 = new Delfin();
  delfin1.nadar();

  // Murcielago
  final murcielago1 = new Murcielago();
  murcielago1.caminar();
  murcielago1.volar();

  // Gato
  final gato1 = new Gato();
  gato1.caminar();

  // Paloma
  final paloma1 = new Paloma();
  paloma1.caminar();
  paloma1.volar();

  // Pato
  final pato1 = new Pato();
  pato1.caminar();
  pato1.nadar();
  pato1.volar();

  // Tiburon
  final tiburon1 = new Tiburon();
  tiburon1.nadar();

  // Pez volador
  final pezVolador1 = new PezVolador();
  pezVolador1.nadar();
  pezVolador1.volar();
}
