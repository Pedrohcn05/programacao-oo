class ProdutoEletronico extends Produto implements Exibivel {
  int garantiaMeses;

  ProdutoEletronico(
    String nome,
    double preco,
    this.garantiaMeses,
  ) : super(nome, preco);

  @override
  void exibir() {
    print(toString());
  }

  @override
  String toString() {
    return 'Produto Eletrônico: $nome | '
        'Preço: R\$ ${preco.toStringAsFixed(2)} | '
        'Garantia: $garantiaMeses meses';
  }
}
