void main() {
  // Criando produtos
  Produto p1 = Produto("Notebook", 3500.0, 10, true);
  Produto p2 = Produto("Mouse", 80.0, 20, true);
  Produto p3 = Produto("Teclado", 150.0, 15, true);

  // Criando lista
  ListaProduto lista = ListaProduto();

  // Inserindo produtos
  lista.inserir(p1);
  lista.inserir(p2);
  lista.inserir(p3);

  // Exibindo lista inicial
  print("Lista inicial:");
  lista.exibirLista();

  // Removendo produto (índice 1 → Mouse)
  lista.remover(1);

  // Mostrando tamanho
  print("Tamanho da lista: ${lista.tamanho()}");

  // Recuperando produto
  Produto? produtoRecuperado = lista.get(0);
  if (produtoRecuperado != null) {
    print("Produto recuperado:");
    produtoRecuperado.exibirProduto();
  }

  // Exibindo lista final
  print("Lista final:");
  lista.exibirLista();
}
