class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(
    int codigo,
    double valorTotal,
    this.taxaUrgencia,
  ) : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaUrgencia;
  }

  @override
  void exibirPedido() {
    print(
      'Pedido Express | Código: $codigo | '
      'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}',
    );
  }

  @override
  String toString() {
    return 'Pedido Express -> Código: $codigo, '
        'Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}, '
        'Taxa Urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)}, '
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
