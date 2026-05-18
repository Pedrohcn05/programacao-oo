class Televisao extends Dispositivo implements Ligavel {
  int tamanhoPolegadas;

  Televisao(
    String marca,
    String modelo,
    this.tamanhoPolegadas,
  ) : super(marca, modelo);

  @override
  void ligar() {
    print('$marca $modelo está ligando...');
  }

  @override
  void desligar() {
    print('$marca $modelo está desligando...');
  }

  @override
  String toString() {
    return 'Televisão -> Marca: $marca, '
        'Modelo: $modelo, '
        'Tamanho: ${tamanhoPolegadas} polegadas';
  }
}
