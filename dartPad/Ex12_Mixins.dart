abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
    void volar() => print('Estoy volando!');
    void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima}');
    void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel de mar.');

    void descender(String velocidadMaxima) => print('Este animal puede descender hasta una velocidad de ${velocidadMaxima}');
}

mixin Caminante {
    void caminar() => print('Estoy caminando');

    void correr(String velocidadMaxima) => print('Este animal puede correr hasta una velocidad de ${velocidadMaxima}');

    void trotar(bool puedeTrotar) {
        if(puedeTrotar) print('Este animal puede trotar');
        else print('Este animal no puede trotar');
    }

    void saltar(bool puedeSaltar) {
        if(puedeSaltar) print('Este animal puede saltar');
        else print('Este animal no puede saltar');
    }
}

mixin Nadador {
    void nadar() => print('Estoy nadando');

    void sumergir(double profundidadMaxima) => print('Este animal puede sumergirse hasta una profundidad de ${profundidadMaxima}');

    void respirar(bool estaRespirando) {
        if(estaRespirando) print('Estoy respirando');
        else print('No estoy respirando');
    }
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}
class PezVolador extends Ave with Volador, Nadador {}

void main() {
    final flipper = Delfin();
    print("Instanciando la clase de Delfin, y accediendo a sus funciones.");
    flipper.nadar();

    print("--------------------------------------------------------------");
    print("Instanciando la clase de murciélago, y accediendo a sus funciones.");
    final chupacabras = Murcielago();
    chupacabras.caminar();
    chupacabras.volar();

    print("--------------------------------------------------------------");
    print("Instanciando la clase de Pato, y accediendo a sus funciones.");
    final gizard = Pato();
    gizard.caminar();
    gizard.volar();
    gizard.nadar();

    print("-------------------------PALOMA TORCAZA-------------------------");
    final palomaTorcaza = Paloma();
    palomaTorcaza.caminar();
    palomaTorcaza.correr("40 km/h");
    palomaTorcaza.trotar(true);
    palomaTorcaza.saltar(true);
    palomaTorcaza.volar();
    palomaTorcaza.planear(6000);
    palomaTorcaza.ascender(1000);
    palomaTorcaza.descender("54 km/h");
    
   
    print("-------------------------DELFIN GIRADOR-------------------------");
    final delfinGirador = Delfin();
    delfinGirador.nadar();
    delfinGirador.sumergir(300);
    delfinGirador.respirar(true);
}