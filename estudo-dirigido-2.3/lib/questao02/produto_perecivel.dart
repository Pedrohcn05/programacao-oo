class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(
    String nome,
    double preco,
    this.dataValidade,
  ) : super(nome, preco);

  @override
  void exibir() {
    print(toString());
  }

  @override
  String toString() {
    return 'Produto Perecível: $nome | '
        'Preço: R\$ ${preco.toStringAsFixed(2)} | '
        'Validade: $dataValidade';
  }
}
