void main() {
  // final wolverine = new Heroe();
  // wolverine.nombre = 'Logan';
  // wolverine.poder = 'Regeneracion';

  final wolverine = new Heroe(nombre: 'Patrick', poder: 'Desconocido');

  print(wolverine);
}

class Heroe {
  // Metodos, propiedades, constructor, mixins, etc.
  String nombre;
  String poder;

  // Constuctor
  // Heroe(String pNombre, String pPoder) {
  //   this.nombre = pNombre;
  //   this.poder = pPoder;
  //  // }
  // Forma corta {} => simbolizan que son argumentos por nombre
  Heroe({required this.nombre, required this.poder});

  // @override indica que queremos sobreescribir algo que ya existe
  @override
  String toString() {
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
