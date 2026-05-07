class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(
    int codigo,
    double valorTotal,
    this.nomeCliente,
  ) : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Pedido para Retirada');
    print('Código: $codigo');
    print('Valor total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Cliente: $nomeCliente');
    print('---------------------------');
  }
}
