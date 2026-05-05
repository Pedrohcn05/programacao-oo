class Personagem {
  String nome;
  double vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome não pode ser vazio.');
    }
    if (vida < 0) {
      throw ArgumentError('A vida não pode ser negativa.');
    }
    if (nivel < 1) {
      throw ArgumentError('O nível deve ser >= 1.');
    }
  }

  void exibirStatus() {
    print('Nome: $nome | Vida: $vida | Nível: $nivel');
  }

  void receberDano(double dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
    print('$nome recebeu $dano de dano.');
  }

  bool estaVivo() {
    return vida > 0;
  }
}
