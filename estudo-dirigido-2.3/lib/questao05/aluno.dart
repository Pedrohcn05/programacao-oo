class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(
    String nome,
    int idade,
    this.matricula,
    this.curso,
  ) : super(nome, idade);

  @override
  void exibirDados() {
    print(toString());
  }

  @override
  String toString() {
    return 'Aluno | '
        'Nome: $nome | '
        'Idade: $idade anos | '
        'Matrícula: $matricula | '
        'Curso: $curso';
  }
}
