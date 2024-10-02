void main() {
  
  final pokemon = {
    'name': 'Pikachu',
    'HP':100,
    'abilities':['Impact trueno', 'Cola de hierro', 'Rápido'],
    'isAlive': true,
    'sprites':
    {
      1: "Pikachu/back.png",
      2: "pikachu/front.png"
    }
    };
  
 
  
  
    //  Los primeros valores van en string y los segundos pueden variar de string a booleanos.
    final Map<String,dynamic> trainer = {
      'Name': 'Ash Ketchup',
      'Gender':'Male',
      'Age': 12,
      'IsGymnasiumLeader':false
      
    };
  

  
  //  Los primeros valores van en string y los segundos pueden variar de string a booleanos.
    final pokemons= 
    {
      1: "Pikachu",
      2: "Charmander",
      3: "Squirtle",
      4: "Pidgeot"
    };
  
  
  
  print("""-----------------------------------------------------------------------
 Los datos del pokemon son usando el Mapa son: 
  ---------------------------------
  Pokemon = $pokemon
  Trainer = $trainer
  Pokemons = $pokemons
  """);

print("******************************************************************");

  // Reto 01: Obtener el valor de inmediatamente de las imagenes de Front y Back del Pokemon
  
  // Front: ${(pokemon['sprites'])[1]}
  // Back: ${(pokemon['sprites'])[2]}
  
  // Dado que la solución ya esta obsoleta lo que queda es crear una nueva varible con el objeto y destructurar las imagenes para acceder a ellas.
  
  
  print("**************************************************");
  print("""
  Accediendo a las propiedades del pokemón usando los braquets/corchetes[]:
  -------------------------------------------------------------------------
  Nombre: ${pokemon['name']}
  HP: ${pokemon['HP']}
  Vivo: ${pokemon['isAlive']}
  Sprites: ${pokemon['sprites']}
  -------------------------------------------------------------------------
 
  """);
  
    final tmp_sprites = pokemon['sprites'] as Map<int,String>;
  
print("""
  Accediendo a las propiedades del pokemo usando los braquets/corchetes [] : 
  --------------------------------------------------
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
  Sprites = ${pokemon['sprites']}
  ---------------------------------------------------
  Back: ${tmp_sprites[2]}
  Front: ${tmp_sprites[1]}
  }
  """);
  }
