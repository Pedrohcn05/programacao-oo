class Dragao extends Inimigo {
  double poderFogo;

  Dragao(String nome, double vida, int nivel, double recompensa, this.poderFogo)
      : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    print('$nome cospe fogo em ${alvo.nome}!');
    alvo.receberDano(poderFogo);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Poder de Fogo: $poderFogo');
  }
}
