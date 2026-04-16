class Produto {
  int codigo;
  String nome;
  double precoUnitario;

  Produto(this.codigo, this.nome, this.precoUnitario) {
    if (codigo <= 0) {
      throw ArgumentError("Código deve ser maior que 0.");
    }
    if (nome.isEmpty) {
      throw ArgumentError("Nome não pode ser vazio.");
    }
    if (precoUnitario <= 0) {
      throw ArgumentError("Preço deve ser maior que 0.");
    }
  }

  void exibirProduto() {
    print("Código: $codigo");
    print("Nome: $nome");
    print("Preço: R\$ ${precoUnitario.toStringAsFixed(2)}");
  }
}
