class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  // Construtor com validação
  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp) {
    if (numero <= 0) {
      throw ArgumentError("Número deve ser maior que 0.");
    }
    if (nome.isEmpty) {
      throw ArgumentError("Nome não pode ser vazio.");
    }
    if (tipo.isEmpty) {
      throw ArgumentError("Tipo não pode ser vazio.");
    }
    if (nivel < 1 || nivel > 100) {
      throw ArgumentError("Nível deve estar entre 1 e 100.");
    }
    if (hp <= 0) {
      throw ArgumentError("HP deve ser maior que 0.");
    }
  }

  void exibirPokemon() {
    print("Nº: $numero");
    print("Nome: $nome");
    print("Tipo: $tipo");
    print("Nível: $nivel");
    print("HP: $hp");
    print("----------------------");
  }
}
