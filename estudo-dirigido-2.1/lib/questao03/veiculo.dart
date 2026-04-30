class Veiculo {
  String marca;
  String modelo;
  int ano;

  // Construtor
  Veiculo(this.marca, this.modelo, this.ano);

  // Método para exibir dados
  void exibirFicha() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano: $ano");
  }
}
