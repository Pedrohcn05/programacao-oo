class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(
    int codigo,
    double valorTotal,
    this.enderecoEntrega,
    this.taxaEntrega,
  ) : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print(
      'Pedido Delivery | Código: $codigo | Endereço: $enderecoEntrega | '
      'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}',
    );
  }

  @override
  String toString() {
    return 'Pedido Delivery -> Código: $codigo, '
        'Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}, '
        'Endereço: $enderecoEntrega, '
        'Taxa Entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}, '
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
