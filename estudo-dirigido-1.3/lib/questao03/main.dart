void main() {
  // Criando produtos
  Produto p1 = Produto("Notebook", 3500.0, 10, true);
  Produto p2 = Produto("Mouse", 80.0, 25, true);

  // Alterando dados com setters
  p1.nome = "Notebook Gamer";
  p2.preco = 75.0;

  // Repondo estoque
  p1.reporEstoque(5);

  // Retirando estoque
  p2.retirarEstoque(10);

  // Desativando um produto
  p2.desativar();

  // Exibindo dados finais
  p1.exibirProduto();
  p2.exibirProduto();
}
