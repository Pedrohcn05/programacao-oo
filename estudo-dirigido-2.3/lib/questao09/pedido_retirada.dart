class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(
    int codigo,
    double valorTotal,
    this.nomeCliente,
  ) : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal;
  }

  @override
  void exibirPedido() {
    print(
      'Pedido Retirada | Código: $codigo | Cliente: $nomeCliente | '
      'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}',
    );
  }

  @override
  String toString() {
    return 'Pedido Retirada -> Código: $codigo, '
        'Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}, '
        'Cliente: $nomeCliente, '
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
