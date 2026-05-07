class Moto extends Veiculo {
  int cilindradas;

  Moto(
    String marca,
    String modelo,
    int ano,
    this.cilindradas,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('--- Ficha da Moto ---');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Cilindradas: $cilindradas cc');
  }
}
