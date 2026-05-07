class Guerreiro extends Combatente {
  String armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print("$nome ataca com espada!");
    alvo.receberDano(forca);
  }

  void ataquePesado(Personagem alvo) {
    print("$nome usa ataque pesado!");
    alvo.receberDano(forca * 2);
  }

  @override
  void exibirStatus() {
    print("Guerreiro: $nome | Vida: $vida | Nível: $nivel | Armadura: $armadura");
  }
}
