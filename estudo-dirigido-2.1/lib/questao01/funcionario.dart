class Funcionario {
  String nome;
  double salario;

  // Construtor
  Funcionario(this.nome, this.salario);

  // Método para exibir dados
  void exibirDados() {
    print("Nome: $nome");
    print("Salário: R\$ $salario");
  }
}
