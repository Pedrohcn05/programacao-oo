class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  // Construtor
  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo) {
    // Validações iniciais
    if (_nome.isEmpty) {
      throw ArgumentError("Nome não pode ser vazio");
    }
    if (_email.isEmpty) {
      throw ArgumentError("Email não pode ser vazio");
    }
    if (_saldoCarteira < 0) {
      throw ArgumentError("Saldo não pode ser negativo");
    }
  }

  // Getters
  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  // Setters com validação
  set nome(String novoNome) {
    if (novoNome.isEmpty) {
      print("Nome não pode ser vazio");
    } else {
      _nome = novoNome;
    }
  }

  set email(String novoEmail) {
    if (novoEmail.isEmpty) {
      print("Email não pode ser vazio");
    } else {
      _email = novoEmail;
    }
  }

  set saldoCarteira(double novoSaldo) {
    if (novoSaldo < 0) {
      print("Saldo não pode ser negativo");
    } else {
      _saldoCarteira = novoSaldo;
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

  void adicionarSaldo(double valor) {
    if (valor > 0) {
      _saldoCarteira += valor;
    } else {
      print("Valor inválido para adicionar");
    }
  }

  void debitarSaldo(double valor) {
    if (valor > 0 && valor <= _saldoCarteira) {
      _saldoCarteira -= valor;
    } else {
      print("Saldo insuficiente ou valor inválido");
    }
  }

  void exibirCliente() {
    print("Nome: $_nome");
    print("Email: $_email");
    print("Saldo: R\$ $_saldoCarteira");
    print("Ativo: $_ativo");
    print("---------------------------");
  }
}
