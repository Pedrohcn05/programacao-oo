void main() {
  try {
    // Criando 2 personagens
    Personagem p1 = Personagem("Guerreiro", 50, 10);
    Personagem p2 = Personagem("Orc", 40, 8);

    // Status inicial
    print("Status inicial:");
    p1.exibirStatus();
    p2.exibirStatus();

    print("=== INÍCIO DO COMBATE ===");

    // Simulação de combate
    while (p1.estaVivo() && p2.estaVivo()) {
      p1.atacar(p2);
      p2.exibirStatus();

      if (p2.estaVivo()) {
        p2.atacar(p1);
        p1.exibirStatus();
      }

      print("----------------------");
    }

    print("=== FIM DO COMBATE ===");

    // Resultado final
    if (p1.estaVivo()) {
      print("${p1.nome} venceu!");
    } else {
      print("${p2.nome} venceu!");
    }

  } catch (e) {
    print("Erro: $e");
  }
}
