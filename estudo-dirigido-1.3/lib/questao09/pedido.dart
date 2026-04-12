class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto? _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  // Construtor
  Pedido(this._numero, this._carrinho, this._cupom, this._status)
      : _totalBruto = 0,
        _totalFinal = 0 {
    if (_numero.isEmpty) {
      throw ArgumentError("Número do pedido não pode ser vazio");
    }
    if (!["aberto", "fechado", "cancelado"].contains(_status)) {
      throw ArgumentError("Status inválido");
    }
  }

  // Getters
  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto? get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  // Setters com validação
  set numero(String novoNumero) {
    if (novoNumero.isEmpty) {
      print("Número não pode ser vazio");
    } else {
      _numero = novoNumero;
    }
  }

  set carrinho(Carrinho novoCarrinho) {
    _carrinho = novoCarrinho;
  }

  set cupom(CupomDesconto? novoCupom) {
    _cupom = novoCupom;
  }

  set status(String novoStatus) {
    if (!["aberto", "fechado", "cancelado"].contains(novoStatus)) {
      print("Status inválido");
    } else {
      _status = novoStatus;
    }
  }

  // Métodos
  void fecharPedido() {
    if (_status != "aberto") {
      print("Pedido não pode ser fechado!");
      return;
    }

    _totalBruto = _carrinho.calcularTotal();

    if (_cupom != null && _cupom!.ativo) {
      double desconto = _cupom!.calcularDesconto(_totalBruto);
      _totalFinal = _totalBruto - desconto;
    } else {
      _totalFinal = _totalBruto;
    }

    _status = "fechado";
  }

  void cancelarPedido() {
    if (_status == "fechado") {
      print("Pedido já foi fechado e não pode ser cancelado!");
      return;
    }
    _status = "cancelado";
  }

  void exibirResumoPedido() {
    print("===== PEDIDO =====");
    print("Número: $_numero");
    print("Status: $_status");

    print("Cliente:");
    _carrinho.cliente.exibirCliente();

    print("Itens:");
    _carrinho.itens.exibirLista();

    print("Total bruto: R\$ $_totalBruto");
    print("Total final: R\$ $_totalFinal");

    if (_cupom != null) {
      print("Cupom aplicado:");
      _cupom!.exibirCupom();
    } else {
      print("Sem cupom aplicado");
    }

    print("==================");
  }
}
