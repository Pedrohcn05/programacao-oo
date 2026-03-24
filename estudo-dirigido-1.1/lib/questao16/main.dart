void main() {
  var p1 = Personagem();
  var p2 = Personagem();

  p1.atacar(p2);
  print(p2.vida);
}

class Personagem {
  int vida = 100;

  void atacar(Personagem p) {
    p.vida -= 10;
  }
}
