void main() {
  final nombre = 'Elizabeth';
  saludar(nombre);
  saludarOpcional();
  saludarOpcional(nombre);
  saludarMix('Patrick', 'Bienvenido al sistema');
  saludarMix('Patrick');
  saludoRequerido(nombre: 'Patrick', mensaje: 'Bienvenido al sistema');
}

void saludar(String nombre) {
  print('Hola mi nombre es $nombre');
}

// Argumentos opcionales con corchetes
void saludarOpcional([String nombreOpcional = 'Desconocido']) {
  print('Hola, bienvenid@ $nombreOpcional');
}

// Argumentos mezclados
void saludarMix(String nombre, [String mensaje = 'Bienvenid@']) {
  print('$nombre $mensaje');
}

// Valores requeridos (simepre que alguien use la funcion tiene que mandar parametros)
void saludoRequerido({required String nombre, required String mensaje}) {
  print('$mensaje $nombre');
}
