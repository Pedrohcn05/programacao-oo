class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  // Construtor
  ItemCarrinho(this._produto, this._quantidade) {
    if (_quantidade <= 0) {
      throw ArgumentError("Quantidade deve ser maior que zero");
    }
  }

  // Getters
  Produto get produto => _produto;
  int get quantidade => _quantidade;

  // Setters com validação
  set produto(Produto novoProduto) {
    _produto = novoProduto;
  }

  set quantidade(int novaQuantidade) {
    if (novaQuantidade <= 0) {
      print("Quantidade deve ser maior que zero");
    } else {
      _quantidade = novaQuantidade;
    }
  }

  // Métodos
  double calcularSubtotal() {
    return _produto.preco * _quantidade;
  }

  void exibirItem() {
    print("Produto: ${_produto.nome}");
    print("Preço unitário: R\$ ${_produto.preco}");
    print("Quantidade: $_quantidade");
    print("Subtotal: R\$ ${calcularSubtotal()}");
    print("---------------------------");
  }
}
