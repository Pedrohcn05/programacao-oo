void main() {
  // Criando produtos
  Produto p1 = Produto("Notebook", 3000.0, 10, true);
  Produto p2 = Produto("Mouse", 100.0, 20, true);
  Produto p3 = Produto("Teclado", 200.0, 15, true);

  // Criando itens de carrinho
  ItemCarrinho i1 = ItemCarrinho(p1, 1);
  ItemCarrinho i2 = ItemCarrinho(p2, 2);
  ItemCarrinho i3 = ItemCarrinho(p3, 1);

  // Criando lista do carrinho
  ListaCarrinho carrinho = ListaCarrinho();

  // Inserindo itens
  carrinho.inserir(i1);
  carrinho.inserir(i2);
  carrinho.inserir(i3);

  // Exibindo lista inicial
  print("Carrinho inicial:");
  carrinho.exibirLista();

  // Removendo item (índice 1 → Mouse)
  carrinho.remover(1);

  // Mostrando tamanho
  print("Quantidade de itens: ${carrinho.tamanho()}");

  // Recuperando item
  ItemCarrinho? itemRecuperado = carrinho.get(0);
  if (itemRecuperado != null) {
    print("Item recuperado:");
    itemRecuperado.exibirItem();
  }

  // Exibindo lista final
  print("Carrinho final:");
  carrinho.exibirLista();
}
