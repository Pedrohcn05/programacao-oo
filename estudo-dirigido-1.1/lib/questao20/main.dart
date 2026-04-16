void main() {
  try {
    // Criando pokémons
    Pokemon p1 = Pokemon(25, "Pikachu", "Elétrico", 50, 120);
    Pokemon p2 = Pokemon(6, "Charizard", "Fogo", 70, 200);
    Pokemon p3 = Pokemon(9, "Blastoise", "Água", 65, 180);

    // Criando treinador
    Treinador treinador = Treinador("Ash", p1, p2, p3);

    // Exibindo time
    treinador.exibirTime();

    // Poder total
    int poder = treinador.calcularPoderTotal();
    print("⚡ Poder total do time: $poder");

    // Pokémon mais forte
    treinador.pokemonMaisForte();

  } catch (e) {
    print("Erro: $e");
  }
}
