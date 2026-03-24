void main() {
  var q = Quadrado(4);
  print(q.area());
}

class Quadrado {
  double lado;

  Quadrado(this.lado);

  double area() => lado * lado;
}
