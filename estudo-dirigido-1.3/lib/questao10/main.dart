void main() {
  // Criando listas base
  ListaCliente listaClientes = ListaCliente();
  ListaProduto listaProdutos = ListaProduto();

  // Criando loja
  Loja loja = Loja("Tech Store", listaClientes, listaProdutos);

  // Criando clientes
  Cliente c1 = Cliente("Pedro", "pedro@email.com", 500.0, true);
  Cliente c2 = Cliente("Maria", "maria@email.com", 300.0, true);

  // Cadastrando clientes
  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);

  // Criando produtos
  Produto p1 = Produto("Notebook", 3000.0, 10, true);
  Produto p2 = Produto("Mouse", 100.0, 20, true);

  // Cadastrando produtos
  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);

  // Criando itens
  ItemCarrinho i1 = ItemCarrinho(p1, 1);
  ItemCarrinho i2 = ItemCarrinho(p2, 2);

  // Criando carrinho
  ListaCarrinho listaCarrinho = ListaCarrinho();
  listaCarrinho.inserir(i1);
  listaCarrinho.inserir(i2);

  Carrinho carrinho = Carrinho(c1, listaCarrinho, true);

  // Criando cupom
  CupomDesconto cupom = CupomDesconto("PROMO10", 10.0, true);

  // Criando pedido
  Pedido pedido = Pedido("001", carrinho, cupom, "aberto");
  pedido.fecharPedido();

  // Registrando pedido na loja
  loja.registrarPedido(pedido);

  // Exibindo resumo geral
  loja.exibirResumoLoja();
}
