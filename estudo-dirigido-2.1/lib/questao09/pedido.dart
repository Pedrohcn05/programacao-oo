class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido() {
    print('Código do pedido: $codigo');
    print('Valor total: R\$ ${valorTotal.toStringAsFixed(2)}');
  }
}
