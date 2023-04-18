class UsuarioLogin {
  final int idUsuario;
  final String userName;
  final String pass;
  final String codAlumno;
  final String apePaterno;
  final String? apeMaterno;
  final String nomAlumno;
  final String? dniM;
  final String? mail;

  UsuarioLogin(
      {required this.idUsuario,
      required this.userName,
      required this.pass,
      required this.codAlumno,
      required this.apePaterno,
      this.apeMaterno,
      required this.nomAlumno,
      this.dniM,
      this.mail});

  factory UsuarioLogin.fromJson(Map<String, dynamic> json) {
    return UsuarioLogin(
      idUsuario: json['idUsuario'] as int,
      userName: json['userName'] as String,
      pass: json['pass'] as String,
      codAlumno: json['codAlumno'] as String,
      apePaterno: json['apePaterno'] as String,
      apeMaterno: json['apeMaterno'] as String?,
      nomAlumno: json['nomAlumno'] as String,
      dniM: json['dniM'] as String?,
      mail: json['mail'] as String?,
    );
  }
  String get getEmail {
    String? correo = mail; //si una variable es Nullable, entonces usar el ?
    correo ??=
        "SIN CORREO"; //es como usar la condicional if para validar si valor de la variable correo es nulo, entonces le setea el valor predeterminado: if (correo is null) correo="SIN CORREO";
    return correo;
  }

  String get getDni {
    String? dni = dniM;
    dni ??= "SIN DNI";
    return dni;
  }

  String get getApeMaterno {
    String? lapeMaterno = apeMaterno;
    lapeMaterno ??= "SIN APELLIDO MATERNO";
    return lapeMaterno;
  }
}
