class Produto {
  String nome;
  double preco;

  // Construtor
  Produto(this.nome, this.preco);

  // Método para exibir dados
  void exibir() {
    print("Nome: $nome");
    print("Preço: R\$ $preco");
  }
}
