
class Aluno {
  String nome;
  double nota1, nota2;

  Aluno(this.nome, this.nota1, this.nota2) {
    if (nome.isEmpty) throw Exception("Nome inválido");
    if (nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10) {
      throw Exception("Notas inválidas");
    }
  }

  double calcularMedia() => (nota1 + nota2) / 2;

  String verificarAprovacao() =>
      calcularMedia() >= 6 ? "Aprovado" : "Reprovado";

  void exibirBoletim() {
    print("Aluno: $nome");
    print("Notas: $nota1, $nota2");
    print("Média: ${calcularMedia()}");
    print("Situação: ${verificarAprovacao()}");
    print("----------------------");
  }
}
