class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  // Construtor
  Produto(this._nome, this._preco, this._estoque, this._ativo) {
    if (_nome.isEmpty) {
      throw ArgumentError("Nome não pode ser vazio");
    }
    if (_preco < 0) {
      throw ArgumentError("Preço não pode ser negativo");
    }
    if (_estoque < 0) {
      throw ArgumentError("Estoque não pode ser negativo");
    }
  }

  // Getters
  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  // Setters com validação
  set nome(String novoNome) {
    if (novoNome.isEmpty) {
      print("Nome não pode ser vazio");
    } else {
      _nome = novoNome;
    }
  }

  set preco(double novoPreco) {
    if (novoPreco < 0) {
      print("Preço não pode ser negativo");
    } else {
      _preco = novoPreco;
    }
  }

  set estoque(int novoEstoque) {
    if (novoEstoque < 0) {
      print("Estoque não pode ser negativo");
    } else {
      _estoque = novoEstoque;
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

  void reporEstoque(int quantidade) {
    if (quantidade > 0) {
      _estoque += quantidade;
    } else {
      print("Quantidade inválida para reposição");
    }
  }

  void retirarEstoque(int quantidade) {
    if (quantidade > 0 && quantidade <= _estoque) {
      _estoque -= quantidade;
    } else {
      print("Estoque insuficiente ou quantidade inválida");
    }
  }

  void exibirProduto() {
    print("Nome: $_nome");
    print("Preço: R\$ $_preco");
    print("Estoque: $_estoque");
    print("Ativo: $_ativo");
    print("---------------------------");
  }
}
