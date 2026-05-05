class Combatente extends Personagem {
  double forca;

  Combatente(String nome, double vida, int nivel, this.forca)
      : super(nome, vida, nivel);

  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome}!');
    alvo.receberDano(forca);
  }
}
