
class Mago extends Combatente implements Magico {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print("$nome ataca com cajado!");
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      print("$nome lança magia!");
      alvo.receberDano(forca + 15);
      mana -= 10;
    } else {
      print("$nome não tem mana suficiente!");
    }
  }

  @override
  void exibirStatus() {
    print("Mago: $nome | Vida: $vida | Nível: $nivel | Mana: $mana");
  }
}
