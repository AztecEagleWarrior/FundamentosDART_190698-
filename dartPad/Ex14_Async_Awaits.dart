void main() async {  
  print('Inicio del programa');
  // Se imprime "Inicio del programa" cuando se inicia la ejecución.

  try {
    // El bloque try-catch maneja posibles errores que ocurran durante la ejecución.
    
    final value = await httpGet('https://adan_salas.com/cursos');
    // Se realiza una llamada asíncrona a la función httpGet.
    // La palabra clave 'await' hace que el programa espere el resultado de la función antes de continuar.
    // El resultado se almacena en 'value' y luego se imprime.
    
    print( value );
    // Se imprime el resultado de la función httpGet, si la llamada es exitosa.

  } catch (err) {
    // Si ocurre un error durante la ejecución de la llamada asíncrona, el error es capturado aquí.
    print('Tenemos un error: $err');
    // Se imprime un mensaje que indica que ocurrió un error, seguido del detalle del error.
  }

  print('Fin del programa');
  // Se imprime "Fin del programa" al final de la ejecución de la función main.
}


Future<String> httpGet( String url ) async {
  // Función asíncrona que simula una solicitud HTTP.

  await Future.delayed( const Duration(seconds: 1));
  // Simula un retraso de 1 segundo, como si estuviera esperando una respuesta de la red.

  throw 'Error en la petición';
  // Lanza una excepción con el mensaje 'Error en la petición', simulando un fallo en la solicitud HTTP.
}
