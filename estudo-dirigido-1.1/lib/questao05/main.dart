void main() {
  try {
    // Instanciando exatamente 10 alunos
    List<Aluno> alunos = [
      Aluno("João", 7.5, 8.0),
      Aluno("Maria", 5.0, 6.0),
      Aluno("Carlos", 4.0, 5.5),
      Aluno("Ana", 9.0, 8.5),
      Aluno("Pedro", 6.0, 6.0),
      Aluno("Lucas", 3.5, 4.0),
      Aluno("Fernanda", 7.0, 7.5),
      Aluno("Bruno", 2.0, 3.0),
      Aluno("Juliana", 8.5, 9.0),
      Aluno("Rafael", 5.5, 6.5),
    ];

    // Exibindo boletim de todos
    for (var aluno in alunos) {
      aluno.exibirBoletim();
    }
  } catch (e) {
    print("Erro: $e");
  }
}
