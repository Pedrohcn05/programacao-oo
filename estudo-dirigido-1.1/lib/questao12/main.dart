void main() {
  var c = Circulo(5);
  print(c.area());
}

class Circulo {
  double r;

  Circulo(this.r);

  double area() => 3.14 * r * r;
}
