import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

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
        title: Text("Login 3ro A", style: TextStyle(color: Color.fromRGBO(4, 42, 109, 1)),),
        backgroundColor: Color.fromRGBO(248, 160, 160, 1),
      ),
      body: Container(
        child: Column(
          children: [
            titulo(),
            SizedBox(height: 20,),
            campoTexto("Usuario", Icons.person),
            SizedBox(height: 5,),
            campoTexto("Email", Icons.email),
          ],
        ),
      ),
    );
  }

  

  Widget campoTexto(String texto, IconData icono){
    return TextField(
      decoration: InputDecoration(
        labelText: texto,
        icon: Icon(icono),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
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