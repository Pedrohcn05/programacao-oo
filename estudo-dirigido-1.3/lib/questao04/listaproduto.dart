class ListaProduto {
  List<Produto> _produtos = [];

  // Inserir produto
  void inserir(Produto produto) {
    _produtos.add(produto);
  }

  // Remover produto por índice
  void remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
      print("Produto removido com sucesso!");
    } else {
      print("Índice inválido!");
    }
  }

  // Retornar tamanho da lista
  int tamanho() {
    return _produtos.length;
  }

  // Obter produto por índice
  Produto? get(int i) {
    if (i >= 0 && i < _produtos.length) {
      return _produtos[i];
    } else {
      print("Índice inválido!");
      return null;
    }
  }

  // Exibir todos os produtos
  void exibirLista() {
    if (_produtos.isEmpty) {
      print("Lista de produtos vazia!");
      return;
    }

    for (int i = 0; i < _produtos.length; i++) {
      print("Produto [$i]:");
      _produtos[i].exibirProduto();
    }
  }
}
