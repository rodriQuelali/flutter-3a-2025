import 'package:calculadora_proyect/model/Calculadora.dart';
import 'package:flutter/material.dart';

class CalculadoraPages extends StatefulWidget {
  const CalculadoraPages({super.key});

  @override
  State<CalculadoraPages> createState() => _CalculadoraPagesState();
}

class _CalculadoraPagesState extends State<CalculadoraPages> {

  //para obtener los datos de los TextField
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  //para mostrar el resultado
  String resultado = "";

  // Método para realizar la operación
  void calcular(String operacion) {
    double? num1 = double.tryParse(num1Controller.text);
    double? num2 = double.tryParse(num2Controller.text);

    if (num1 == null || num2 == null) {
      // setState para actualizar el estado de la UI
      setState(() {
        resultado = "Ingresa números válidos";
      });
      return;
    }

    String res = "0";

    switch (operacion) {
      case '+':
        //Calculadora cal = Calculadora(num1.toString(), num2.toString());
        res = Calculadora(num1.toString(), num2.toString()).sumar();
        break;
      case '-':
        //res = Calculadora(num1.toString(), num2.toString()).restar();
        break;
      case '*':
        //res = Calculadora(num1.toString(), num2.toString()).multiplicar();
        break;
      case '/':
        if (num2 == 0) {
          setState(() {
            resultado = "División por cero no permitida";
          });
          return;
        }
        //res = Calculadora(num1.toString(), num2.toString()).dividir();
        break;
      default:
        res = "0";
    }

    setState(() {
      resultado = "Resultadosssss: $res";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora Flutter")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            SizedBox(height: 20),
            // Wrap para los botones de operaciones, como un grid
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  // onPressed para llamar al método calcular con la operación correspondiente, es igual a onclick
                  onPressed: () => {
                      calcular('+')
                    },
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('-'),
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('*'),
                  child: Text('×'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('/'),
                  child: Text('÷'),
                ),
              ],
            ),
            SizedBox(height: 30),

            Text(
              "Data : ${resultado}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
