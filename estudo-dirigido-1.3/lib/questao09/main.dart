void main() {
  // Cliente
  Cliente cliente = Cliente("Pedro", "pedro@email.com", 500.0, true);

  // Produtos
  Produto p1 = Produto("Notebook", 3000.0, 10, true);
  Produto p2 = Produto("Mouse", 100.0, 20, true);

  // Itens
  ItemCarrinho i1 = ItemCarrinho(p1, 1);
  ItemCarrinho i2 = ItemCarrinho(p2, 2);

  // Lista carrinho
  ListaCarrinho lista = ListaCarrinho();
  lista.inserir(i1);
  lista.inserir(i2);

  // Carrinho
  Carrinho carrinho = Carrinho(cliente, lista, true);

  // Cupom
  CupomDesconto cupom = CupomDesconto("PROMO10", 10.0, true);

  // Pedido
  Pedido pedido = Pedido("001", carrinho, cupom, "aberto");

  // Fechar pedido
  pedido.fecharPedido();

  // Exibir resumo
  pedido.exibirResumoPedido();
}
