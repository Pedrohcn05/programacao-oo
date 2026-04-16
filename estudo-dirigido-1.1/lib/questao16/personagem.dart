class Personagem {
  String nome;
  int vida;
  int ataque;

  // Construtor com validação
  Personagem(this.nome, this.vida, this.ataque) {
    if (nome.isEmpty) {
      throw ArgumentError("O nome não pode ser vazio.");
    }
    if (vida <= 0) {
      throw ArgumentError("A vida deve ser maior que 0.");
    }
    if (ataque <= 0) {
      throw ArgumentError("O ataque deve ser maior que 0.");
    }
  }

  // Verifica se está vivo
  bool estaVivo() {
    return vida > 0;
  }

  // Atacar outro personagem
  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("$nome não pode atacar, está derrotado.");
      return;
    }

    if (!inimigo.estaVivo()) {
      print("$nome não pode atacar ${inimigo.nome}, ele já está derrotado.");
      return;
    }

    inimigo.vida -= ataque;

    // Evita vida negativa
    if (inimigo.vida < 0) {
      inimigo.vida = 0;
    }

    print("$nome atacou ${inimigo.nome} causando $ataque de dano.");
  }

  // Exibir status
  void exibirStatus() {
    print("Nome: $nome");
    print("Vida: $vida");
    print("Ataque: $ataque");
    print("----------------------");
  }
}
