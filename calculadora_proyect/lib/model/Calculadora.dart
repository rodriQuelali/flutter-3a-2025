class Calculadora {

  String _num1 = "";
  String _num2 = "";

  Calculadora(this._num1, this._num2);


  // Crear una clase que que valide los datos de entrada, y llame al clase Calculadora.
  // utlizar POO, asociacion, agregacion o dependencia. 
  // y verificar que principio es.
  // rediseño La UI de la calculadora.
  // UI solo tiene que llamar ala clase validar, no tiene que realizar ninguna operacion.

  //metodos
  String sumar() {
    String sacarP = ".0";
    if(validaDatosEntrada(_num1, _num2) !=""){
      return validaDatosEntrada(_num1, _num2);
    }
    //tareas una funcion de parceo solo uno...
    double? num1 = double.tryParse(_num1);
    double? num2 = double.tryParse(_num2);
    double res;
    res = num1! + num2!;
    return validarDecimalEntero(res.toString());
  }

  double restar() {
    return double.parse(_num1) - double.parse(_num2);
  }

  double multiplicar() {
    return double.parse(_num1) * double.parse(_num2);
  }

  double dividir() {
    if (double.parse(_num2) == 0) {
      //throw Exception("División por cero"); manejo de excepciones
      throw Exception("División por cero");
    }
    return double.parse(_num1) / double.parse(_num2);
  }


  //validaciones
  String validarDecimalEntero(String val){
    double res = double.parse(val);
    if(res % 1.0 == 0.0){
      return res.toInt().toString();
    }
    return res.toString();
  }

  String validaDatosEntrada(String num_1, String num_2) {
    double? num1 = double.tryParse(num_1);
    double? num2 = double.tryParse(num_2);

    if (num1 == null || num2 == null) {
      return "Ingresa números válidos";
    }
    return "";
  }

  //validar operador... +,-,* y /
  


}