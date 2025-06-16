import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login 3ro A", style: TextStyle(color: Color.fromRGBO(4, 42, 109, 1)),),
        backgroundColor: Color.fromRGBO(248, 160, 160, 1),
      ),
      body: Center(
        child: titulo(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Accion del boton
          print("Boton presionado");
        },
        child: Icon(Icons.ad_units),
        backgroundColor: Color.fromRGBO(248, 160, 160, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(248, 160, 160, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Color.fromRGBO(4, 42, 109, 1)),
              onPressed: () {
                // Accion del boton de inicio
                print("Inicio presionado");
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Color.fromRGBO(4, 42, 109, 1)),
              onPressed: () {
                // Accion del boton de configuracion
                print("Configuracion presionado");
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 160, 160, 1),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Color.fromRGBO(4, 42, 109, 1),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Color.fromRGBO(4, 42, 109, 1)),
              title: Text('Perfil'),
              onTap: () {
                // Accion del menu de perfil
                print("Perfil seleccionado");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Color.fromRGBO(4, 42, 109, 1)),
              title: Text('Cerrar Sesion'),
              onTap: () {
                // Accion del menu de cerrar sesion
                print("Cerrar Sesion seleccionado");
              },
            ),
          ],
        ),
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