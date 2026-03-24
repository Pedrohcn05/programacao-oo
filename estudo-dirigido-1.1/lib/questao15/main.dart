void main() {
  var c = Cofrinho();
  c.depositar(50);
  print(c.quebrar());
}

class Cofrinho {
  double saldo = 0;

  void depositar(double v) => saldo += v;

  double quebrar() {
    double t = saldo;
    saldo = 0;
    return t;
  }
}
