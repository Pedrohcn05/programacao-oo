void main() {
  var pedido = Pedido(101, 80.0);
  pedido.exibirPedido();

  print('---');

  var delivery = PedidoDelivery(102, 80.0, 'Rua A, 123', 10.0);
  delivery.exibirPedido();
  print('Endereço de entrega: ${delivery.enderecoEntrega}');
  print('Valor final: R\$ ${delivery.calcularValorFinal().toStringAsFixed(2)}');
}
