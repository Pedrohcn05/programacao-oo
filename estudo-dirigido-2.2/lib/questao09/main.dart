void main() {
  // Criando pedido delivery
  PedidoDelivery delivery = PedidoDelivery(
    101,
    80.0,
    'Rua das Flores, 123',
    10.0,
  );

  // Criando pedido para retirada
  PedidoRetirada retirada = PedidoRetirada(
    202,
    45.0,
    'Carlos Silva',
  );

  // Exibindo os pedidos
  delivery.exibirPedido();
  retirada.exibirPedido();
}
