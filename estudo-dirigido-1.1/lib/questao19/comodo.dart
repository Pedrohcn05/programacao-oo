class Comodo {
  String nome;
  double tamanho;

  // Construtor com validação
  Comodo(this.nome, this.tamanho) {
    if (nome.isEmpty) {
      throw ArgumentError("O nome do cômodo não pode ser vazio.");
    }
    if (tamanho <= 0) {
      throw ArgumentError("O tamanho deve ser maior que 0.");
    }
  }

  void exibirComodo() {
    print("Cômodo: $nome");
    print("Tamanho: $tamanho m²");
    print("----------------------");
  }
}
