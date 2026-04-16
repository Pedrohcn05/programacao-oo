class Lampada {
  bool ligada;
  int quantidadeLigacoes;
  bool queimada;

  // Construtor padrão
  Lampada()
      : ligada = false,
        quantidadeLigacoes = 0,
        queimada = false;

  // Método para ligar
  void ligar() {
    if (queimada) {
      print("A lâmpada está queimada e não pode ser ligada.");
      return;
    }

    if (!ligada) {
      ligada = true;
      quantidadeLigacoes++;

      print("Lâmpada ligada.");

      // Verifica se queimou
      if (quantidadeLigacoes >= 5) {
        queimada = true;
        ligada = false;
        print("A lâmpada queimou!");
      }
    }
  }

  // Método para desligar
  void desligar() {
    if (ligada) {
      ligada = false;
      print("Lâmpada desligada.");
    }
  }

  // Método para exibir estado
  void exibirEstado() {
    if (queimada) {
      print("Estado: Queimada");
    } else if (ligada) {
      print("Estado: Ligada");
    } else {
      print("Estado: Desligada");
    }

    print("Quantidade de ligações: $quantidadeLigacoes");
    print("----------------------");
  }
}
