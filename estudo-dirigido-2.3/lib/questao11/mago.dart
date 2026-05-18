class Mago extends Combatente implements Magico {
  int mana;

  Mago(
    String nome,
    int vida,
    int nivel,
    int forca,
    this.mana,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar() {
    print('$nome atacou com cajado mágico!');
  }

  @override
  void lancarMagia() {
    if (mana >= 10) {
      mana -= 10;
      print('$nome lançou uma magia poderosa!');
    } else {
      print('$nome não possui mana suficiente!');
    }
  }

  @override
  String toString() {
    return 'Mago -> Nome: $nome, Vida: $vida, '
        'Nível: $nivel, Força: $forca, Mana: $mana';
  }
}
