void main() {
  // Mapa
  final rawJson = {'nombre': 'Tony Stark', 'poder': 'dinero'};

  // final ironman = new Heroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);
  // print(ironman);

  // Instancia con json
  final ironman = new Heroe.fromJson(rawJson);
  print(ironman);

  //final wolverine = new Heroe(nombre: 'Patrick', poder: 'Desconocido');
  //print(wolverine);
}

class Heroe {
  String nombre;
  String poder;

  // Consructor
  Heroe({required this.nombre, required this.poder});

  // Constructor 2 (Los dos puntos significan que lo que esta en seguida se ejecutara en el
  // momento en el que se crea la instancia)
  Heroe.fromJson(Map<String, String> json):
    this.nombre = json['nombre'] ?? 'No tiene nombre',
    this.poder = json['poder'] ?? 'No tiene poder';
  

  @override
  String toString() {
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
