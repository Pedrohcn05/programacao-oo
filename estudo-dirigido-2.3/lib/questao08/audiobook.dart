class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String titulo, String autor, this.duracaoMinutos)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print(
        'Audiobook: $titulo | Autor: $autor | Duração: $duracaoMinutos minutos');
  }

  @override
  String toString() {
    return 'Audiobook -> Título: $titulo, Autor: $autor, Duração: $duracaoMinutos minutos';
  }
}
