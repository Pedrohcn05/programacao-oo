class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  // Construtor
  Carrinho(this._cliente, this._itens, this._aberto);

  // Getters
  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  // Setters com validação
  set cliente(Cliente novoCliente) {
    _cliente = novoCliente;
  }

  set itens(ListaCarrinho novosItens) {
    _itens = novosItens;
  }

  set aberto(bool status) {
    _aberto = status;
  }

  // Métodos
  void adicionarItem(ItemCarrinho item) {
    if (_aberto) {
      _itens.inserir(item);
    } else {
      print("Carrinho está fechado!");
    }
  }

  void removerItem(int i) {
    if (_aberto) {
      _itens.remover(i);
    } else {
      print("Carrinho está fechado!");
    }
  }

  double calcularTotal() {
    double total = 0;

    for (int i = 0; i < _itens.tamanho(); i++) {
      ItemCarrinho? item = _itens.get(i);
      if (item != null) {
        total += item.calcularSubtotal();
      }
    }

    return total;
  }

  void exibirCarrinho() {
    print("===== CARRINHO =====");
    print("Cliente:");
    _cliente.exibirCliente();

    print("Itens:");
    _itens.exibirLista();

    print("Total da compra: R\$ ${calcularTotal()}");
    print("Status: ${_aberto ? "Aberto" : "Fechado"}");
    print("====================");
  }
}
