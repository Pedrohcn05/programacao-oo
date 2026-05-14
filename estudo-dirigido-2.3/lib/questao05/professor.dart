class Professor extends Pessoa
    implements Apresentavel {

  String disciplina;
  double salario;

  Professor(
    String nome,
    int idade,
    this.disciplina,
    this.salario,
  ) : super(nome, idade);

  @override
  void exibirDados() {
    print(toString());
  }

  @override
  String toString() {
    return 'Professor | '
        'Nome: $nome | '
        'Idade: $idade anos | '
        'Disciplina: $disciplina | '
        'Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}
