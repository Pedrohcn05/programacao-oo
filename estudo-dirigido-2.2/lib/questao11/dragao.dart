class Dragao extends Inimigo implements Flamejante {
  int poderFogo;

  Dragao(String nome, int vida, int nivel, int recompensa, this.poderFogo)
      : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo(Personagem alvo) {
    print("$nome cospe fogo!");
    alvo.receberDano(poderFogo);
  }

  @override
  void exibirStatus() {
    print("Dragão: $nome | Vida: $vida | Nível: $nivel | Poder de Fogo: $poderFogo");
  }

  @override
  void exibirRecompensa() {
    if (!estaVivo()) {
      print("Recompensa de $nome: $recompensa moedas");
    }
  }
}
