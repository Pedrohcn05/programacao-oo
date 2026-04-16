class Pedido {
  int numero;
  Produto produto;
  int quantidade;

  // Construtor com validação
  Pedido(this.numero, this.produto, this.quantidade) {
    if (numero <= 0) {
      throw ArgumentError("Número do pedido deve ser maior que 0.");
    }
    if (produto == null) {
      throw ArgumentError("Produto inválido.");
    }
    if (quantidade <= 0) {
      throw ArgumentError("Quantidade deve ser maior que 0.");
    }
  }

  // Calcular total
  double calcularTotal() {
    return produto.precoUnitario * quantidade;
  }

  // Exibir pedido completo
  void exibirPedido() {
    print("Pedido Nº: $numero");
    print("Produto:");
    produto.exibirProduto();
    print("Quantidade: $quantidade");
    print("Total: R\$ ${calcularTotal().toStringAsFixed(2)}");
    print("----------------------");
  }
}
