class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(
    String marca,
    String modelo,
    this.sistemaOperacional,
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
    return 'Smartphone -> Marca: $marca, '
        'Modelo: $modelo, '
        'Sistema Operacional: $sistemaOperacional';
  }
}
