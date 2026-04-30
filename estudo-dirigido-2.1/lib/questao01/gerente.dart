class Gerente extends Funcionario {
  String setor;

  // Construtor chamando o da superclasse
  Gerente(String nome, double salario, this.setor)
      : super(nome, salario);

  // Sobrescrita do método
  @override
  void exibirDados() {
    super.exibirDados(); // reaproveita o método da classe pai
    print("Setor: $setor");
  }
}
