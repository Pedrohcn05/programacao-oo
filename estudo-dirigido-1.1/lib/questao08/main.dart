void main() {
  var c = Contador();
  c.inc();
  print(c.get());
}

class Contador {
  int valor = 0;

  void inc() => valor++;
  void dec() {
    if (valor > 0) valor--;
  }

  int get() => valor;
}
