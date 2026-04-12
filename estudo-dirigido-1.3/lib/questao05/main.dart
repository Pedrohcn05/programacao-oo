void main() {
  // Criando produtos
  Produto p1 = Produto("Notebook", 3000.0, 10, true);
  Produto p2 = Produto("Mouse", 100.0, 20, true);

  // Criando itens de carrinho
  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);

  // Alterando quantidade com setter
  item1.quantidade = 2;
  item2.quantidade = 3;

  // Exibindo subtotais
  print("Subtotal item 1: R\$ ${item1.calcularSubtotal()}");
  print("Subtotal item 2: R\$ ${item2.calcularSubtotal()}");

  // Exibindo detalhes completos
  item1.exibirItem();
  item2.exibirItem();
}
