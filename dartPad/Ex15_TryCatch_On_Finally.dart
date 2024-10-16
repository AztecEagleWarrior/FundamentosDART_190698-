void main() async {
  
  print('Inicio del programa');
  // Se imprime "Inicio del programa" cuando comienza la ejecución.

  try {
    // Se utiliza el bloque try para intentar ejecutar la solicitud simulada.

    final value = await httpGet('https://aldair-amador.com');
    // Llama a la función asíncrona httpGet. La palabra clave 'await' asegura que el programa espera la respuesta antes de continuar.
    // El resultado de la llamada se almacena en la variable 'value'.
    
    print( 'éxito: $value' );
    // Si la llamada es exitosa, se imprime el mensaje "éxito" seguido del valor obtenido.

  } on Exception catch(err) {
    // Si ocurre una excepción de tipo 'Exception', se captura aquí.
    print('Tenemos una Exception: $err');
    // Se imprime un mensaje específico para las excepciones capturadas con 'on Exception', mostrando los detalles del error.

  } catch (err) {
    // Este bloque 'catch' captura cualquier otro tipo de error que no sea una 'Exception' específica.
    print('OOP!! algo terrible pasó: $err');
    // Imprime un mensaje genérico en caso de un error inesperado.

  } finally {
    print('Fin del try y catch');
    // El bloque 'finally' se ejecuta siempre, independientemente de si hubo un error o no. Se usa para finalizar la ejecución del bloque try-catch.
  }
  
  print('Fin del programa');
  // Se imprime "Fin del programa" al finalizar la ejecución principal.
}


Future<String> httpGet( String url ) async {
  // Función asíncrona que simula una solicitud HTTP.

  await Future.delayed( const Duration(seconds: 1));
  // Simula un retraso de 1 segundo como si estuviera esperando una respuesta de la red.

  throw Exception('No hay parámetros en el URL');
  // Lanza una excepción de tipo 'Exception' con el mensaje 'No hay parámetros en el URL'.
  // Este error será capturado en el bloque 'on Exception' de la función main.
}