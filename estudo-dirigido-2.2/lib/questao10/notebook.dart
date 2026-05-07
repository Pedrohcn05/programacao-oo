class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(
    String marca,
    String modelo,
    this.memoriaRam,
  ) : super(marca, modelo);

  @override
  void ligar() {
    print('O notebook $marca $modelo está ligando...');
  }

  @override
  void desligar() {
    print('O notebook $marca $modelo está desligando...');
  }
}
