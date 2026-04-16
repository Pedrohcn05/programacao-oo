void main() {
  try {
    // Criando produtos
    Produto p1 = Produto(1, "Teclado", 120.00);
    Produto p2 = Produto(2, "Monitor", 950.00);

    // Criando pedidos
    Pedido pedido1 = Pedido(101, p1, 2);
    Pedido pedido2 = Pedido(102, p2, 1);

    // Exibindo pedidos
    pedido1.exibirPedido();
    pedido2.exibirPedido();

  } catch (e) {
    print("Erro: $e");
  }
}
