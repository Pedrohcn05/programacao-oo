class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(
    String marca,
    String modelo,
    this.memoriaRam,
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
    return 'Notebook -> Marca: $marca, '
        'Modelo: $modelo, '
        'Memória RAM: ${memoriaRam} GB';
  }
}
