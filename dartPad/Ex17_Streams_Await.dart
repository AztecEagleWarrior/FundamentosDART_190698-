void main() {
  
  emitNumber()
     .listen( (int value) {
       // Se llama a la función emitNumber() que retorna un Stream asíncrono.
       // El método listen() se usa para escuchar los valores emitidos por el Stream.
       // Cada vez que el Stream emite un nuevo valor, se ejecuta el callback que imprime el valor.
       
       print( 'Stream value: $value' );
       // Imprime el valor emitido por el Stream.
       
     }); 
}


Stream<int> emitNumber() async* {
  // La función emitNumber() es una función generadora asíncrona (async*) que retorna un Stream de enteros.
  
  final valuesToEmit = [1, 2, 3, 4, 5];
  // Se define una lista de valores que se emitirán en el Stream.
  
  for (int i in valuesToEmit) {
    // Un bucle for que itera sobre cada valor de la lista valuesToEmit.
    
    await Future.delayed( const Duration(seconds: 1));
    // Se espera 1 segundo entre cada emisión de valor, simulando un retraso asíncrono como si se estuviera obteniendo cada valor después de un procesamiento o una solicitud de red.
    
    yield i;
    // 'yield' emite el valor actual del ciclo al Stream.
  }
}