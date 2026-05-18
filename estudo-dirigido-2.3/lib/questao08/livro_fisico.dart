class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print(
        'Livro Físico: $titulo | Autor: $autor | Páginas: $quantidadePaginas');
  }

  @override
  String toString() {
    return 'Livro Físico -> Título: $titulo, Autor: $autor, Páginas: $quantidadePaginas';
  }
}
