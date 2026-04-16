class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;

  // Construtor com validação
  Pessoa(this.nome, this.idade, this.cpf, this.endereco) {
    if (nome.isEmpty) {
      throw ArgumentError("Nome não pode ser vazio.");
    }
    if (idade < 0) {
      throw ArgumentError("Idade deve ser maior ou igual a 0.");
    }
    if (cpf.isEmpty) {
      throw ArgumentError("CPF não pode ser vazio.");
    }
    if (endereco == null) {
      throw ArgumentError("Endereço deve ser válido.");
    }
  }

  // Método para exibir pessoa + endereço
  void exibirPessoa() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("CPF: $cpf");
    print("Endereço:");
    endereco.exibirEndereco();
    print("----------------------");
  }
}
