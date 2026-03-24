void main() {
  var c = Casa();
  c.add(Comodo(10));
  print(c.total());
}

class Comodo {
  double area;

  Comodo(this.area);
}

class Casa {
  List<Comodo> lista = [];

  void add(Comodo c) => lista.add(c);

  double total() {
    double t = 0;
    for (var c in lista) {
      t += c.area;
    }
    return t;
  }
}
