void main() {
  var myName = 'Adan';
  String myLastName = 'Salas';
  final int myDNI = 190698;
  late final int myAge;
  
  //String myName = 'Adán'
  
  print('Hola, $myName');
  
  //Corregir nombre
  myName = 'Adán'
  
  //
  
  print('Hola, $myName $myLastName, tu matricula es: $myDNI y tu edad no sé cuando naciste');
  //Interpolando el valor de las variables con métodos de manipulación o transformación
  
  print('Hola, ${myName.toUpperCase()} ${myLastName.toUpperCase()} mi matricula es $myDNI y tu edad aun no la conozco, porque no se cuando naciste.');


}