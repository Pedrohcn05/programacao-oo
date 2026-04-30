class ProdutoPerecivel extends Produto {
  String dataValidade;

  // Construtor chamando o da superclasse
  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  // Sobrescrita do método
  @override
  void exibir() {
    super.exibir(); // exibe nome e preço
    print("Data de validade: $dataValidade");
  }
}
