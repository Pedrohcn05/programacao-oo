class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  List<Pedido> _pedidos;

  // Construtor
  Loja(this._nome, this._clientes, this._produtos)
      : _pedidos = [] {
    if (_nome.isEmpty) {
      throw ArgumentError("Nome da loja não pode ser vazio");
    }
  }

  // Getters
  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;

  // Setters com validação
  set nome(String novoNome) {
    if (novoNome.isEmpty) {
      print("Nome da loja não pode ser vazio");
    } else {
      _nome = novoNome;
    }
  }

  set clientes(ListaCliente novosClientes) {
    _clientes = novosClientes;
  }

  set produtos(ListaProduto novosProdutos) {
    _produtos = novosProdutos;
  }

  // Métodos
  void cadastrarCliente(Cliente cliente) {
    _clientes.inserir(cliente);
  }

  void cadastrarProduto(Produto produto) {
    _produtos.inserir(produto);
  }

  void registrarPedido(Pedido pedido) {
    _pedidos.add(pedido);
  }

  void exibirResumoLoja() {
    print("===== LOJA: $_nome =====");

    print("\n--- CLIENTES ---");
    _clientes.exibirLista();

    print("\n--- PRODUTOS ---");
    _produtos.exibirLista();

    print("\n--- PEDIDOS ---");
    if (_pedidos.isEmpty) {
      print("Nenhum pedido registrado");
    } else {
      for (int i = 0; i < _pedidos.length; i++) {
        print("Pedido [$i]:");
        _pedidos[i].exibirResumoPedido();
      }
    }

    print("========================");
  }
}
