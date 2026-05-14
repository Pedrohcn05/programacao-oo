class Moto extends Veiculo implements Fichavel {
  int cilindradas;

  Moto(
    String marca,
    String modelo,
    int ano,
    this.cilindradas,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print(toString());
  }

  @override
  String toString() {
    return 'Moto: $marca $modelo | '
        'Ano: $ano | '
        'Cilindradas: ${cilindradas}cc';
  }
}
