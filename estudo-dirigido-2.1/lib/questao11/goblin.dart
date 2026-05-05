class Goblin extends Inimigo {
  double velocidade;

  Goblin(String nome, double vida, int nivel, double recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Velocidade: $velocidade');
  }
}
