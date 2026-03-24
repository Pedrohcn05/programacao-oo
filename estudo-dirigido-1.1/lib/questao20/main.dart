void main() {
  var t = Treinador();
  t.add(Pokemon(10));
  t.add(Pokemon(20));
  print(t.poder());
}

class Pokemon {
  int nivel;

  Pokemon(this.nivel);
}

class Treinador {
  List<Pokemon> lista = [];

  void add(Pokemon p) => lista.add(p);

  int poder() {
    int t = 0;
    for (var p in lista) {
      t += p.nivel;
    }
    return t;
  }
}
