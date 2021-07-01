main() {
  // Forma 1 (Lista dinamica, acepta todo tipo de dato)
  List numeros = [1, 2, 3, 4, 5, 6];
  print(numeros);

  // Forma 2 (Lista tipada)
  List<int> numerosTipada = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numerosTipada);

  // Metodos ------------------
  // Insertar
  numeros.add(8);
  numeros.add('Patrick');
  // Obtener
  print(numeros[4]);

  print(numeros);

  // nulos
  //List? numbersNull = null;

  // Metodos estaticos (funciones que podemos llamar sin crear una instancia de la misma)
  // Generamos una lista que contenga 100 elementos (10)
  final masNumeros = List.generate(100, (int index) => 10);
  print(masNumeros);
}
