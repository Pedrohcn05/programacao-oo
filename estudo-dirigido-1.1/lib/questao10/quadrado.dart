class Quadrado {
  double lado;
  String caractere;

  // Construtor com validação
  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) {
      throw ArgumentError("O lado deve ser maior que 0.");
    }
    if (caractere.isEmpty) {
      throw ArgumentError("O caractere não pode ser vazio.");
    }
    if (caractere.length != 1) {
      throw ArgumentError("O caractere deve ter apenas 1 símbolo.");
    }
  }

  // Área
  double calcularArea() {
    return lado * lado;
  }

  // Perímetro
  double calcularPerimetro() {
    return 4 * lado;
  }

  // Desenhar o quadrado
  void desenhar() {
    int tamanho = lado.toInt();

    for (int i = 0; i < tamanho; i++) {
      String linha = "";
      for (int j = 0; j < tamanho; j++) {
        linha += caractere;
      }
      print(linha);
    }
  }

  // Exibir resumo
  void exibirResumo() {
    print("Lado: $lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("----------------------");
  }

  // Comparar quadrados
  bool ehIgual(Quadrado outro) {
    return lado == outro.lado && caractere == outro.caractere;
  }
}
