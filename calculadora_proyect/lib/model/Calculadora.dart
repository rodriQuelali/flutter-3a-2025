class Calculadora {

  String _num1 = "";
  String _num2 = "";

  Calculadora(this._num1, this._num2);

  //metodos
  String sumar() {
    /*double? num1 = double.tryParse(_num1);
    double? num2 = double.tryParse(_num2);
    double res;
    res = num1! + num2!;
    return res;*/
    String sacarP = ".0";
    if (_num1.indexOf(sacarP) == -1 || _num1.indexOf('.0') != -1) {
      print("dataaaaaaaaaaaaaaaaaaaaaa${_num1.toString()}");
       int? num1 = _num1.contains('.') ? int.tryParse(_num1.split('.')[0]) : int.tryParse(_num1);
       int? num2 = _num2.contains('.') ? int.tryParse(_num2.split('.')[0]) : int.tryParse(_num2);
       int res = 0;
       print("dataaaaaaaaaaaaaaaaaaaaaa${num2.toString()}");
        res = num1! + num2!;
        print("dataaaaaaaaaaaaaaaaaaaaaa${res.toString()}");
        return res.toString();
    }
    double? num1 = double.tryParse(_num1);
    double? num2 = double.tryParse(_num2);
    double res;
    res = num1! + num2!;
    return res.toString();
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


  

}