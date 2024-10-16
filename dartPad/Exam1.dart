//Clase : Adán Salas Galván
abstract class PersonBase { 
  String tituloCortesia;
  String nombre;
  String primerApellido;
  String segundoApellido;
  DateTime fechaNacimiento;
  String fotografia;
  String genero;
  String tipoSangre;
  bool estatus;
  DateTime fechaRegistro;
  DateTime fechaActualizacion;

 
  // Constructor de la clase abstracta
  PersonBase({ 
    required this.tituloCortesia,
    required this.nombre,
    required this.primerApellido,
    required this.segundoApellido,
    required this.fechaNacimiento,
    required this.fotografia,
    required this.genero,
    required this.tipoSangre,
    required this.estatus,
    required this.fechaRegistro,
    required this.fechaActualizacion,
  });

  
  // Método abstracto para mostrar los datos
  String mostrarDatos();
}


// Clase hija Miembro con datos específicos para un miembro
class Member extends PersonBase {
  int id;
  int membresiaId;
  int usuarioId;

 // Constructor de la clase hija
  Member({ 
    required this.id,
    required this.membresiaId,
    required this.usuarioId,
    required String tituloCortesia,
    required String nombre,
    required String primerApellido,
    required String segundoApellido,
    required DateTime fechaNacimiento,
    required String fotografia,
    required String genero,
    required String tipoSangre,
    required bool estatus,
    required DateTime fechaRegistro,
    required DateTime fechaActualizacion,
  }) : super(
          tituloCortesia: tituloCortesia,
          nombre: nombre,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          fechaNacimiento: fechaNacimiento,
          fotografia: fotografia,
          genero: genero,
          tipoSangre: tipoSangre,
          estatus: estatus,
          fechaRegistro: fechaRegistro,
          fechaActualizacion: fechaActualizacion,
        );




  @override
  String mostrarDatos() {
    return '''
    ID: $id
    Membresía: $membresiaId
    Usuario: $usuarioId
    Titulo cortesia: $tituloCortesia
    Nombre Completo: $nombre $primerApellido $segundoApellido 
    Fecha de Nacimiento: ${fechaNacimiento.toIso8601String()}
    Fotografía: $fotografia
    Género: $genero
    Tipo de Sangre: $tipoSangre
    Estatus: ${estatus ? "Activo" : "Inactivo"}
    Fecha de Registro: ${fechaRegistro.toIso8601String()}
    Fecha de Actualización: ${fechaActualizacion.toIso8601String()}
    ''';
  }
}


// Caso 1: Nuevo miembro registrado hoy

void main() {
  Member nuevoMiembro = Member(
    id: 1,
    membresiaId: 1,
    usuarioId: 1,
    tituloCortesia: 'Sr.',
    nombre: 'Adán',
    primerApellido: 'Salas',
    segundoApellido: 'Galván',
    fechaNacimiento: DateTime(2001, 2, 18),
    fotografia: 'adan.jpg',
    genero: 'Masculino',
    tipoSangre: 'O+',
    estatus: true,
    fechaRegistro: DateTime(2024, 3, 12),
    fechaActualizacion: DateTime.now(),
  );


// Caso 2: Miembro nuevo que fue empleado del Gym

  Member exEmpleado = Member(  
    id: 2,
    membresiaId: 2,
    usuarioId: 2,
    tituloCortesia: 'Ing',
    nombre: 'Marco Antonio',
    primerApellido: 'Ramirez',
    segundoApellido: 'Hernandez',
    fechaNacimiento: DateTime(1980, 3, 12),
    fotografia: 'marc0.jpg',
    genero: 'Masculino',
    tipoSangre: 'O-',
    estatus: true,
    fechaRegistro: DateTime(2024, 8, 8),
    fechaActualizacion: DateTime.now(),
  );


// Caso 3: Miembro que se da de baja de la cortesía

  Member dadoDeBaja = Member( 
    id: 3,
    membresiaId: 3,
    usuarioId: 3,
    tituloCortesia: 'Jovencito', 
    nombre: 'Carlos Ivan',
    primerApellido: 'Pecina',
    segundoApellido: 'Sandoval',
    fechaNacimiento: DateTime(1971, 4, 13),
    fotografia: 'carlos.jpg',
    genero: 'Masculino',
    tipoSangre: 'AB+',
    estatus: false, 
    fechaRegistro: DateTime.now(),
    fechaActualizacion: DateTime.now(),
  );

 
 // imprimir casos
  print('Caso 1: Nuevo Miembro'); 
  print(nuevoMiembro.mostrarDatos());
  print('\nCaso 2: Ex-empleado que es miembro');
  print(exEmpleado.mostrarDatos());
  print('\nCaso 3: Miembro dado de baja');
  print(dadoDeBaja.mostrarDatos());
}