class Carro extends Veiculo {
  int quantidadePortas;

  // Construtor chamando o da superclasse
  Carro(String marca, String modelo, int ano, this.quantidadePortas)
      : super(marca, modelo, ano);

  // Sobrescrita do método
  @override
  void exibirFicha() {
    super.exibirFicha(); // reaproveita dados do veículo
    print("Quantidade de portas: $quantidadePortas");
  }
}
