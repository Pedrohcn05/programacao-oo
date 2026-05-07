void main() {
  // Criando um aluno
  Aluno aluno = Aluno(
    'Pedro',
    20,
    '2024001',
    'Análise e Desenvolvimento de Sistemas',
  );

  // Criando um professor
  Professor professor = Professor(
    'Chaua',
    35,
    'Programação Orientada a Objetos',
    5500.00,
  );

  // Exibindo dados
  aluno.exibirDados();

  print('');

  professor.exibirDados();
}
