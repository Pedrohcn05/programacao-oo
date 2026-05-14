class Carro extends Veiculo implements Fichavel {
  int quantidadePortas;

  Carro(
    String marca,
    String modelo,
    int ano,
    this.quantidadePortas,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print(toString());
  }

  @override
  String toString() {
    return 'Carro: $marca $modelo | '
        'Ano: $ano | '
        'Portas: $quantidadePortas';
  }
}
