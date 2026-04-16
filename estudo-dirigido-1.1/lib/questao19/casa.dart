class Casa {
  String proprietario;
  Comodo comodo1;
  Comodo comodo2;
  Comodo comodo3;

  // Construtor com validação
  Casa(this.proprietario, this.comodo1, this.comodo2, this.comodo3) {
    if (proprietario.isEmpty) {
      throw ArgumentError("O proprietário não pode ser vazio.");
    }
  }

  // Exibir casa completa
  void exibirCasa() {
    print("🏠 Proprietário: $proprietario");
    print("======================");

    comodo1.exibirComodo();
    comodo2.exibirComodo();
    comodo3.exibirComodo();
  }

  // Calcular área total
  double calcularAreaTotal() {
    return comodo1.tamanho +
        comodo2.tamanho +
        comodo3.tamanho;
  }
}
