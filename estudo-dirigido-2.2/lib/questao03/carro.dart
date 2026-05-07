class Carro extends Veiculo {
  int quantidadePortas;

  Carro(
    String marca,
    String modelo,
    int ano,
    this.quantidadePortas,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('--- Ficha do Carro ---');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Quantidade de portas: $quantidadePortas');
  }
}

