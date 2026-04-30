void main() {
  Produto p = Produto("Notebook", 3500.0);
  ProdutoPerecivel pp = ProdutoPerecivel("Leite", 5.50, "10/05/2026");

  print("Produto comum:");
  p.exibir();

  print("\nProduto perecível:");
  pp.exibir();
}
