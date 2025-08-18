import 'package:flutter/material.dart';
import 'package:navigator/view/DetallePagina.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetallePagina()),
            );
          },
          child: const Text('Ir a Detalles'),
        ),
      ),
    );
  }
}