class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  // Construtor
  CupomDesconto(this._codigo, this._percentual, this._ativo) {
    if (_codigo.isEmpty) {
      throw ArgumentError("Código não pode ser vazio");
    }
    if (_percentual < 0 || _percentual > 100) {
      throw ArgumentError("Percentual deve estar entre 0 e 100");
    }
  }

  // Getters
  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  // Setters com validação
  set codigo(String novoCodigo) {
    if (novoCodigo.isEmpty) {
      print("Código não pode ser vazio");
    } else {
      _codigo = novoCodigo;
    }
  }

  set percentual(double novoPercentual) {
    if (novoPercentual < 0 || novoPercentual > 100) {
      print("Percentual deve estar entre 0 e 100");
    } else {
      _percentual = novoPercentual;
    }
  }

  set ativo(bool status) {
    _ativo = status;
  }

  // Métodos
  void ativar() {
    _ativo = true;
  }

  void desativar() {
    _ativo = false;
  }

  double calcularDesconto(double valor) {
    if (!_ativo) {
      print("Cupom inativo!");
      return 0;
    }
    return valor * (_percentual / 100);
  }

  void exibirCupom() {
    print("Código: $_codigo");
    print("Percentual: $_percentual%");
    print("Ativo: $_ativo");
    print("---------------------------");
  }
}
