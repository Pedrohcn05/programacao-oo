class Guerreiro extends Combatente {
  double armadura;

  Guerreiro(String nome, double vida, int nivel, double forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Armadura: $armadura');
  }

  void ataquePesado(Personagem alvo) {
    print('$nome usa ataque pesado em ${alvo.nome}!');
    alvo.receberDano(forca * 2);
  }
}
