class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print(
        'Livro Digital: $titulo | Autor: $autor | Arquivo: ${tamanhoArquivo} MB');
  }

  @override
  String toString() {
    return 'Livro Digital -> Título: $titulo, Autor: $autor, Arquivo: ${tamanhoArquivo} MB';
  }
}
