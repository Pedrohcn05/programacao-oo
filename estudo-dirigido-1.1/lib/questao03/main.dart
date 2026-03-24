void main() {
  var d = Data(10, 3, 2025);
  print(d);
}

class Data {
  int dia, mes, ano;

  Data(this.dia, this.mes, this.ano);

  String toString() => "$dia/$mes/$ano";
}
