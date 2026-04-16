class Treinador {
  String nome;
  Pokemon pokemon1;
  Pokemon pokemon2;
  Pokemon pokemon3;

  // Construtor com validação
  Treinador(this.nome, this.pokemon1, this.pokemon2, this.pokemon3) {
    if (nome.isEmpty) {
      throw ArgumentError("Nome do treinador não pode ser vazio.");
    }
  }

  // Exibir time completo
  void exibirTime() {
    print("🎮 Treinador: $nome");
    print("======================");

    pokemon1.exibirPokemon();
    pokemon2.exibirPokemon();
    pokemon3.exibirPokemon();
  }

  // Calcular poder total (soma dos níveis)
  int calcularPoderTotal() {
    return pokemon1.nivel + pokemon2.nivel + pokemon3.nivel;
  }

  // Encontrar o pokémon mais forte
  void pokemonMaisForte() {
    Pokemon maisForte = pokemon1;

    if (pokemon2.nivel > maisForte.nivel) {
      maisForte = pokemon2;
    }
    if (pokemon3.nivel > maisForte.nivel) {
      maisForte = pokemon3;
    }

    print("🔥 Pokémon mais forte:");
    print("Nome: ${maisForte.nome}");
    print("Nível: ${maisForte.nivel}");
  }
}
