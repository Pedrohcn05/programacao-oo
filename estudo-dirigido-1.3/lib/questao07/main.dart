void main() {
  // Criando cliente
  Cliente cliente = Cliente("Pedro", "pedro@email.com", 500.0, true);

  // Criando produtos
  Produto p1 = Produto("Notebook", 3000.0, 10, true);
  Produto p2 = Produto("Mouse", 100.0, 20, true);

  // Criando itens
  ItemCarrinho i1 = ItemCarrinho(p1, 1);
  ItemCarrinho i2 = ItemCarrinho(p2, 2);

  // Criando lista de carrinho
  ListaCarrinho lista = ListaCarrinho();

  // Criando carrinho
  Carrinho carrinho = Carrinho(cliente, lista, true);

  // Adicionando itens
  carrinho.adicionarItem(i1);
  carrinho.adicionarItem(i2);

  // Removendo um item (opcional)
  carrinho.removerItem(1);

  // Exibindo carrinho completo
  carrinho.exibirCarrinho();
}
