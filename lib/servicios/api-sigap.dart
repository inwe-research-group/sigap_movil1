import 'dart:convert';
import 'package:sigap_movil1/modelos/UsuarioLogin.dart';
import 'package:http/http.dart' as http;

class URLS {
  // ignore: constant_identifier_names
  static const String BASE_URL = 'http://137.184.120.127:8081';
}

class ApiSigap {
  static Future<UsuarioLogin> fetchLogin(
      String usuario, String password) async {
    var client = http.Client();
    var url =
        '${URLS.BASE_URL}/usuario/alumnoprograma/buscar/$usuario/$password';
    var uri = Uri.parse(url);
    var response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return UsuarioLogin.fromJson(json.decode(response.body));
    } else if (response.statusCode == 500) {
      throw Exception("Usuario o Password es Incorrecto");
    } else {
      throw Exception("Error en la Autenticacion");
    }
  }
}
