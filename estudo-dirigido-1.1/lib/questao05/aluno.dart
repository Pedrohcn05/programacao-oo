class Aluno {
  String nome;
  double nota1;
  double nota2;

  // Construtor com validação
  Aluno(this.nome, this.nota1, this.nota2) {
    if (nome.isEmpty) {
      throw ArgumentError("O nome não pode ser vazio.");
    }
    if (nota1 < 0 || nota1 > 10) {
      throw ArgumentError("Nota1 deve estar entre 0 e 10.");
    }
    if (nota2 < 0 || nota2 > 10) {
      throw ArgumentError("Nota2 deve estar entre 0 e 10.");
    }
  }

  // Método para calcular média
  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }

  // Método para verificar aprovação
  String verificarAprovacao() {
    if (calcularMedia() >= 6) {
      return "Aprovado";
    } else {
      return "Reprovado";
    }
  }

  // Método para exibir boletim
  void exibirBoletim() {
    print("Nome: $nome");
    print("Nota 1: $nota1");
    print("Nota 2: $nota2");
    print("Média: ${calcularMedia().toStringAsFixed(2)}");
    print("Situação: ${verificarAprovacao()}");
    print("----------------------");
  }
}
