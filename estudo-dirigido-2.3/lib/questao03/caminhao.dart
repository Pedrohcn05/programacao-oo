class Caminhao extends Veiculo implements Fichavel {
  double capacidadeCarga;

  Caminhao(
    String marca,
    String modelo,
    int ano,
    this.capacidadeCarga,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print(toString());
  }

  @override
  String toString() {
    return 'Caminhão: $marca $modelo | '
        'Ano: $ano | '
        'Capacidade: ${capacidadeCarga.toStringAsFixed(0)} toneladas';
  }
}
