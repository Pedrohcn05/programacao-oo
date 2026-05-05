class LivroDigital extends Livro {
  double tamanhoArquivo; // em MB

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Título: $titulo');
    print('Autor: $autor');
    print('Tamanho do arquivo: ${tamanhoArquivo.toStringAsFixed(2)} MB');
  }
}
