void main() {
  ListaGenerica<Processavel> lista =
      ListaGenerica<Processavel>();

  lista.adicionar(
    PedidoDelivery(
      1001,
      120.00,
      'Rua A, 100',
      15.00,
    ),
  );

  lista.adicionar(
    PedidoRetirada(
      1002,
      80.00,
      'Ana',
    ),
  );

  lista.adicionar(
    PedidoExpress(
      1003,
      200.00,
      40.00,
    ),
  );

  lista.adicionar(
    PedidoDelivery(
      1004,
      150.00,
      'Rua B, 250',
      20.00,
    ),
  );

  lista.adicionar(
    PedidoRetirada(
      1005,
      60.00,
      'Bruno',
    ),
  );

  print('--- Lista de pedidos ---');
  lista.imprimirItens();

  print('\n--- Processamento dos pedidos ---');

  for (var pedido in lista.obterItens()) {
    pedido.exibirPedido();

    print(
      'Valor final calculado: '
      'R\$ ${pedido.valorFinal().toStringAsFixed(2)}\n',
    );
  }
}
