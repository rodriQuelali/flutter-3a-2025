import 'package:flutter/material.dart';


class DetallePagina extends StatelessWidget {
  const DetallePagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle Página'),
      ),
      body: Text('Esta es la página de detalles', 
        style: TextStyle(fontSize: 24), 
        textAlign: TextAlign.center, 
        ),
    );
  }
}