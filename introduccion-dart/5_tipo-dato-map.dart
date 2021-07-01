main() {
  // Mapa no tipado
  Map persona = {
    'nombre': 'Patrick',
    'edad': '23',
    'soltero': false,
    true: false,
    1: 100,
    2: 500
  };

  // Aniadir
  persona.addAll({3: 'Elizabeth'});
  print(persona);
  // Acceder a un elemento
  print(persona['nombre']);
  print(persona[true]);

  // Mapa tipado
  Map<String, String> personaTipada = {
    'nombre': 'Patrick',
    'edad': '23',
    'soltero': 'no',
  };

  print(personaTipada);
}
