void main() {
  
  emitNumbers().listen( (value) {
    // Se llama a la función emitNumbers() que retorna un Stream.
    // Se utiliza el método listen() para escuchar los valores emitidos por el Stream.
    // Cada vez que el Stream emite un nuevo valor, se ejecuta el callback que imprime el valor en la consola.
    
    print('Stream value: $value');
    // Imprime el valor emitido por el Stream.
  });
  
} 


Stream<int> emitNumbers() {
  // La función emitNumbers() retorna un Stream de enteros.
  
  return Stream.periodic( const Duration(seconds: 1), (value) {
    // Stream.periodic emite un nuevo valor periódicamente, en este caso, cada segundo.
    // El valor que emite es un entero que empieza en 0 y aumenta con cada emisión.
    
    return value;
    // Se retorna el valor del contador que incrementa con cada llamada.
  }).take(5);
  // El método take(5) limita el número de emisiones a 5, es decir, el Stream solo emitirá 5 valores y luego se cerrará.
}