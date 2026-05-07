abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  // Construtor
  Veiculo(this.marca, this.modelo, this.ano);

  // Método abstrato
  void exibirFicha();
}
