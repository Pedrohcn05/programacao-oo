abstract class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  // Método abstrato
  void exibirPedido();
}
