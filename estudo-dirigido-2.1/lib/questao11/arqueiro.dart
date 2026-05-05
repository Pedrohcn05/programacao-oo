class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, double vida, int nivel, double forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      flechas--;
      print('$nome atira uma flecha em ${alvo.nome}!');
      alvo.receberDano(forca);
    } else {
      print('$nome não tem flechas para atacar!');
    }
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Flechas: $flechas');
  }
}
