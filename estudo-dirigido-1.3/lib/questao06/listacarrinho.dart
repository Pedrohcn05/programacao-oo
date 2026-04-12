class ListaCarrinho {
  List<ItemCarrinho> _itens = [];

  // Inserir item
  void inserir(ItemCarrinho item) {
    _itens.add(item);
  }

  // Remover item por índice
  void remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
      print("Item removido com sucesso!");
    } else {
      print("Índice inválido!");
    }
  }

  // Retornar tamanho da lista
  int tamanho() {
    return _itens.length;
  }

  // Obter item por índice
  ItemCarrinho? get(int i) {
    if (i >= 0 && i < _itens.length) {
      return _itens[i];
    } else {
      print("Índice inválido!");
      return null;
    }
  }

  // Exibir todos os itens
  void exibirLista() {
    if (_itens.isEmpty) {
      print("Carrinho vazio!");
      return;
    }

    for (int i = 0; i < _itens.length; i++) {
      print("Item [$i]:");
      _itens[i].exibirItem();
    }
  }
}
