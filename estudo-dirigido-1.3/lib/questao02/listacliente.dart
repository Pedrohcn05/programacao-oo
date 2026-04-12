class ListaCliente {
  List<Cliente> _clientes = [];

  // Inserir cliente
  void inserir(Cliente cliente) {
    _clientes.add(cliente);
  }

  // Remover cliente por índice
  void remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
      print("Cliente removido com sucesso!");
    } else {
      print("Índice inválido!");
    }
  }

  // Retornar tamanho da lista
  int tamanho() {
    return _clientes.length;
  }

  // Obter cliente por índice
  Cliente? get(int i) {
    if (i >= 0 && i < _clientes.length) {
      return _clientes[i];
    } else {
      print("Índice inválido!");
      return null;
    }
  }

  // Exibir todos os clientes
  void exibirLista() {
    if (_clientes.isEmpty) {
      print("Lista vazia!");
      return;
    }

    for (int i = 0; i < _clientes.length; i++) {
      print("Cliente [$i]:");
      _clientes[i].exibirCliente();
    }
  }
}
