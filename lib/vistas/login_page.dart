import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sigap_movil1/servicios/api-sigap.dart';
import 'package:sigap_movil1/utilitarios/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFE0E7EB),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(50),
                  bottomRight: const Radius.circular(50),
                )),
          )
        ],
      ),
    ));
  }
}
