class Produto {
  String _nome;
  double _preco;
  int _estoque;
 
  // Construtor com parâmetros posicionais
  Produto(this._nome, this._preco, this._estoque);
 
  // Método para repor estoque
  void repor(int qtd) {
    _estoque += qtd;
  }
 
  // Método para vender produto
  void vender(int qtd) {
    if (qtd <= _estoque) {
      _estoque -= qtd;
    } else {
      print('Estoque insuficiente!');
    }
  }
 
  // Exibir ficha do produto
  void exibirFicha() {
    print('Nome: $_nome');
    print('Preço: R\$ $_preco');
    print('Estoque: $_estoque');
  }
}
