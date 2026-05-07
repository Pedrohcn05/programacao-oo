class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      print("$nome dispara uma flecha!");
      alvo.receberDano(forca);
      flechas--;
    } else {
      print("$nome não tem flechas!");
    }
  }

  @override
  void exibirStatus() {
    print("Arqueiro: $nome | Vida: $vida | Nível: $nivel | Flechas: $flechas");
  }
}
