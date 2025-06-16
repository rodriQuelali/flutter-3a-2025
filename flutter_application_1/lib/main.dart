
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/login.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPages()
    );
  }
}

/**
 * 1. Explicacion de la funcion  
 * @override
 * Widget build
 * 
 * que es BuildContext context y en que situacion se maneja?
 * 
 * 
 * 2. ciclo de vida en flutter?
 *  - demostrar en una aplicacion echa en flutter.
 * 
 * Ojo: la presentacion se realiza ele dia lunes a primera hora
 */
