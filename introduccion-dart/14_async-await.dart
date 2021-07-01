void main() async {
  // async

  // futore => tarea asincrona
  print('Antes de la peticion');

  final data = await httpGet('http://www.google.com');
  print(data);
  // httpGet('http://www.google.com').then((data) {
  //   print(data.toUpperCase());
  // });

  // final nombre = await getNombre('10');
  // print(nombre);
  //getNombre('10').then(print);

  print('Fin del programa');
}

Future<String> getNombre(String id) async {
  return '$id - Patrick';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola mundo - 3 segundos';
  });
}
