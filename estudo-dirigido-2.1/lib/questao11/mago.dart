class Mago extends Combatente {
  double mana;

  Mago(String nome, double vida, int nivel, double forca, this.mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      print('$nome lança magia em ${alvo.nome}!');
      alvo.receberDano(forca + 15);
      mana -= 10;
    } else {
      print('$nome não tem mana suficiente!');
    }
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Mana: $mana');
  }
}
