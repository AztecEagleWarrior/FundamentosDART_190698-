void main() {
  // Práctica 04: Tipos de datos en DART
  
  // Cadenas(String)
  final String pokemon = "Snivy";
   
  // Enteros (Int)
  final int hp = 100;
  
  // Boolean (Boolean)
  final bool isAlive = true;
  
  final habilities = ['Ciclón de hojas','Placaje', 'Látigo cepa'];
  final sprites = <String>['snivy-front.png', 'snivy-back.png'];
  
  
  print(""" El pokemón que elegiste es: $pokemon 
  ---------------------------------------------------------------------------
  las estadisticas de $pokemon son:
  Vida(HP): $hp
  Estatus de vida: $isAlive
  habilidades: $habilities
  Imágenes: $sprites
  """);
}
