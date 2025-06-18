

import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget{
  
  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person, color: Color.fromRGBO(4, 42, 109, 1),),
        title: Text("Login 3ro A", style: TextStyle(color: Color.fromRGBO(4, 42, 109, 1)),),
        backgroundColor: Color.fromRGBO(251, 246, 246, 1),
      ),
      body: Container(
        color: Color.fromRGBO(237, 235, 235, 1),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            titulo(),
            SizedBox(height: 20,),
            campoTexto("Usuario", Icons.person),
            SizedBox(height: 20,),
            campoTexto("Email", Icons.email),
          ],
        ),
      ),
    );
  }

  

  Widget campoTexto(String texto, IconData icono){
    return TextField(
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(171, 171, 11, 0.098),
                labelText: 'Nombre de la carrera',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: const Icon(Icons.school, color: Color.fromRGBO(199, 26, 7, 1)),
              ),
    );
  }

  Widget titulo(){
    return Text(
      "Login 3ro A",
      style: TextStyle(
        color: Color.fromRGBO(4, 42, 109, 1),
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
    );
  }
}