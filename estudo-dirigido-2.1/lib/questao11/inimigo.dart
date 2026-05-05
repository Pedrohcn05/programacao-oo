class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, double vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);

  void exibirRecompensa() {
    print('Recompensa: $recompensa');
  }
}
